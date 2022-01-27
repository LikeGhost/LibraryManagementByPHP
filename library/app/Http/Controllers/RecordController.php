<?php

namespace App\Http\Controllers;

use App\Models\Fine;
use App\Models\Publish;
use App\Models\Record;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RecordController extends BaseController
{
    //

    public function __construct()
    {
        $this->middleware('auth:api', ['except' => [ ]]);
    }

    public function addRecord(Request $request){
        $record=new Record();
        $user=auth()->user() ;
        $carbon = carbon::parse ($request->input('put_time'));
        $record->real_book_id=$request->input('real_book_id');
        $record->user_id=$user->id;
        $record->borrow_at=Carbon::now();
        $diffDay=Carbon::now()->diffInDays($carbon,false);
        if($diffDay<=60){
            $record->return_at=Carbon::now()->addDay(7);
        }
        else{
            $record->return_at=Carbon::now()->addDay(30);
        }

        $record->record_status_id=1;

        $record->save();
        $real_book=$record->realBook;
        $real_book->book_status_id=2;
        $real_book->save();


        return $this->create(['code'=>201],'借阅成功',200);

    }

    public function searchByUserId(Request $request){

        $user = auth()->user();
        $limit= $request->input('limit');


        $this->refreshStatus();

        $record =$user->records()->join('real_book','record.real_book_id','real_book.id')
            ->join('book','real_book.book_id','book.id')
            ->join('record_status','record_status.id','record.record_status_id')
            ->select('record.id as record_id','record.*','real_book.*','book.*','record_status.*')
            ->paginate($limit)
            ->toArray();

        return $this->create($record,'',0);

    }

    public function returnBook(Request $request){



        $record = Record::find($request->input('record_id'));
        $record->record_status_id=3;

        $record->return_at=Carbon::now();

        $real_book=$record->realBook;


        $real_book->book_status_id=1;

        $record->save();
        $real_book->save();

        return $this->create(['code'=>201],'',200);

    }

    private function refreshStatus()
    {

        $records = Record::all();

        $now = Carbon::now();
        foreach ( $records as $record){

            $return_at = Carbon::parse($record->return_at);
            if($record->record_status_id!=3&&$return_at->diffInSeconds($now,false)>0){

                $record->record_status_id=2;


                $fine =$record->fine;
                if($fine!=null){
                    $fine->money=0.5*$return_at->diffInDays($now,false);
                }
                else{
                    $fine = new Fine();
                    $fine->record_id=$record->id;
                    $fine->money=0.5*$return_at->diffInDays($now,false);
                }



            }
            else if($record->record_status_id!=3){

                $fine =$record->fine;
                if($fine!=null){
                    $fine->money=0;
                }

                $fine->save();
                $record->record_status_id=1;
                $real_book = $record->realBook;
                $real_book->book_status_id=2;
                $real_book->save();
            }



            $record->save();
        }

    }

    public function getFine(Request $request){


        $record =Record::find($request->input('record_id'));

        $fine = $record->fine;

        return $this->create($fine,'',200);
    }

    public function payFine(Request $request){

        $fine = Fine::find($request->input('id'));



        $this->returnBook($request);

        return $this->create(['code'=>201],'缴纳成功',200);
    }

    public function searchAllRecord(Request $request){


        $this->refreshStatus();
        $limit=$request->input('limit');

        $record = DB::table('record')->join('real_book','record.real_book_id','real_book.id')
            ->join('book','real_book.book_id','book.id')
            ->join('record_status','record_status.id','record.record_status_id')
            ->select('record.id as record_id','record.*','real_book.*','book.*','record_status.*')
            ->paginate($limit)
            ->toArray();
        return $this->create($record,'',0);
    }


    public function changeReturnTime(Request $request){



        $record=Record::find($request->input('record_id'));
        $record->return_at=$request->input('return_at');
        $record->record_status_id=1;
        $record->save();
        return $this->create(['code'=>201],'',0);
    }


    public function searchByGrade(Request $request){
        $this->refreshStatus();
        $limit=$request->input('limit');
        $grade=$request->input('grade');

        $record = DB::table('record')->join('real_book','record.real_book_id','real_book.id')
            ->join('book','real_book.book_id','book.id')
            ->join('record_status','record_status.id','record.record_status_id')
            ->join('users','users.id','=','record.user_id')
            ->join('student','users.id','=','student.user_id')
            ->where('student.grade_id','=',$grade)
            ->select('record.id as record_id','record.*','real_book.*','book.*','record_status.*')
            ->paginate($limit)
            ->toArray();

        return $this->create($record,'',0);
    }

}
