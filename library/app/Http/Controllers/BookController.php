<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Clc;
use App\Models\Publish;
use App\Models\RealBook;
use Carbon\Carbon;
use Carbon\Traits\Date;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Symfony\Component\VarDumper\Cloner\Data;
use function GuzzleHttp\Promise\all;

class BookController extends BaseController
{

    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['searchBookByLike','searchRealBookByLike']]);
    }
    public function addBook(Request $request){

        if( Book::where('isbn',$request->input('isbn'))->first()!=null){
            return $this->create(['code'=>202],"已有同ISBN的图书",200);
        }
        else{
            Book::create($request->all());
            return  $this->create(['code'=>201],"添加成功",200);
        }
    }
    public function searchBookByLike(Request $request){


        $keywords =$request->input('keywords');

        $limit=$request->input('limit');

        return $this->create(Book::where('name','like','%'.$keywords.'%')
            ->orWhere('isbn','like','%'.$keywords.'%')
            ->orWhere('author','like','%'.$keywords.'%')
            ->paginate($limit)
            ->toArray(),"",0);
       //  return $this->create(Book::where('name','like','%'.$keywords.'%')->orWhere('isbn','like','%'.$keywords.'%')->orWhere('author','like','%'.$keywords.'%')->get()->toArray(),"",0);
    }

    public function updateBook(Request $request){

        $requestBook = Book::find($request->input('id'));
        $requestBook->id=$request->input('id');
        $requestBook->isbn = $request->input('isbn');
        $requestBook->clc_id = $request->input('clc_id');
        $requestBook->name = $request->input('name');
        $requestBook->author = $request->input('author');
        $requestBook->publish_id = $request->input('publish_name');
        $requestBook->publish_at = $request->input('publish_at');
        $requestBook->price = $request->input('price');
        $requestBook->information = $request->input('information');
        if($requestBook->isbn!=Book::find($requestBook->id)->isbn &&Book::where('isbn',$request->input('isbn'))->first()!=null){
            return $this->create(['code'=>202],"已有同ISBN的图书",200);
        }
        else{

            $requestBook->save();


            return $this->create(['code'=>201],"修改成功",200);
        }


    }
    public function delBook(Request $request){
        $book=Book::find($request->input('id'));
//        dd($book->realBooks->toArray()==null);
        if($book->realBooks->toArray()!=null){
            return $this->create(["code"=>204],"存在实体图书，无法删除",200);
        }
        else{
            $book->delete();
            return $this->create(["code"=>201],"删除成功",200);
        }

    }

    public function loadClc(){
        $clc = Clc::all()->toArray();
        return $this->create($clc,"",200);
    }

    public function loadPublish(){
        $publish = Publish::all()->toArray();
        return $this->create($publish,"",200);
    }

    public function addRealBook(Request $request){
//        $publish = Publish::all()->toArray();
//        return $this->create($publish,"",200);
        $num = $request->input('num');
        $id = $request->input('id');

        $book=Book::find($id);
        $book->total+=$num;

//        dd($book);
        for ($i=0;$i<$num;$i++){
            $realBook= new RealBook();
            $realBook->book_id=$id;
            $realBook->book_status_id=1;
            $realBook->put_time=Carbon::now();
//            dd($realBook);
            $realBook->save();
        }
        $book->save();
        return $this->create(['code'=>201],'添加库存成功',200);
    }

    public function searchRealBookByLike(Request $request){

        $keywords =$request->input('keywords');

        $limit=$request->input('limit');

        $realBook =DB::table('real_book')
            ->join('book','real_book.book_id','=','book.id')
            ->join('library','real_book.library_id','=','library.id')
            ->join('book_status','real_book.book_status_id','=','book_status.id')
            ->select('real_book.id as real_book_id','real_book.*'
                ,'book.isbn'
                ,'book.clc_id'
                ,'book.name'
                ,'book.author'
                ,'book.publish_id'
                ,'book.publish_at'
                ,'book.price'
                ,'book.information'
                ,'book.total'
                ,'book.deleted_at'
                ,'book.updated_at'
                ,'book.id'
                ,'library.library_name'
                ,'book_status.status')
            ->where('real_book.deleted_at','=',null)
            ->where(function ($query)use ($keywords) {
                $query ->where('book.name','like','%'.$keywords.'%')
                    ->orWhere('isbn','like','%'.$keywords.'%')
                    ->orWhere('author','like','%'.$keywords.'%');
            })
            ->paginate($limit)
            ->toArray();
//        dd($realBook);
        return $this->create($realBook,'',0);
    }

    public function deleteRealBook(Request $request){

        $realBook = RealBook::find($request->input('real_book_id'));
        if($realBook->book_status_id==1){
            $book = $realBook->book;
            $book->total--;
            $book->save();
            $realBook->delete();
            return $this->create(["code"=>201],"删除成功",200);
        }
        else{
            return $this->create(["code"=>202],"该实体书正在借阅中不可删除",200);
        }

    }

}
