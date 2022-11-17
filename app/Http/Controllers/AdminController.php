<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Models\Listuser;
use App\Models\Category;
use App\Models\Places;
use App\Models\Review;
use App\Models\Image;
use App\Models\User_availability;
use App\Models\Place_category;
use Session;
use Validator;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.login');
    }
	
	public function login_post(Request $request)
	{

		$credentials = $request->only('email','password');
		
		if(Auth::attempt($credentials)){
		
			if(Auth::user()->role_id == 1){
			$useLoginId=User::where(['email'=>$request->email])->get();

			session()->put('admin-login-id',$useLoginId[0]->id);
			return redirect(url('admin-dashboard'));

			} else {
				Session::flush();
				Auth::logout();
				\Session::put('err_msg','Invalid Username and Password.');
				//return redirect(url('admin-login'));

				return redirect()->route('admin-login');
			}
		
		} else {
			\Session::put('err_msg','Invalid Username and Password.');
			return redirect(url('admin-login'));
		}
	}

   
	  public function admin_dashboard()
    {
        $places=Places::count();
        $users=DB::table('users')->count();
        $categories=Category::count();
        $data=[
            'places'=>$places,
            'users'=>$users,
            'categories'=>$categories,

        ];
        //dd($data);

       return view('admin.dashboard',compact('data'));
    }
	

	/**users starts here */
	public function users()
    {
		$data=Listuser::orderby('id','desc')->get();
		
       return view('admin.professional.index',['data' => $data]);
    }
	
	public function add_user()
    {
       return view('admin.professional.add');
    }
	
	
	public function post_add_user(Request $request)
	
	{ 	
	
	$validator = Validator::make($request->all(), [
            'email' => 'required|unique:users',
            'mobile' => 'required|unique:users|numeric|digits:12',
        ]);

        if($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        }
		
		$create = Listuser::insert([
            "firstName" => $request->fname,
            "lastName" => $request->lname,
            "email" => $request->email,
            "mobile" => $request->mobile,
            "dateOfBirth" => $request->dob,
            "password" => $request->password,
        ]);

		if($create) {
			$msg = "Data added Successfully";
		} else {
			$msg = "Some error Occured.";
		}
			\Session::put('success',$msg);
			return redirect()->route('users');

	}

	public function delete_user($id)
    {
		Listuser::destroy($id);
		\Session::put('success','Data Deleted Successfully.');
	   	return redirect()->route('users');
	}

	
	public function viewUser($id)
    {
		$data = Listuser::find($id);        
		// return $data;
	    return view('admin.professional.detail',['data' => $data]);
	}

	


	/**users ends here */


    /**category starts here */
    public function category()
    {
        $data = Category::all();
        return view('admin.category.index', ["data" => $data]);
    }

    public function postCategory(Request $request)
    {
        // return $request;
        $insert  = new Category;
        $insert->categoryName = $request->categoryName;
        $insert->save();

        if($insert) {
			$msg = "Data added Successfully";
		} else {
			$msg = "Some error Occured.";
		}

        \Session::put('success',$msg);
        return redirect()->route('category');
        
    }

    public function deleteCategory($id)
    {
        $delete = Category::destroy($id);
        if($delete) {
            $msg = "Deleted Successfully";
        } else {
            $msg = "Some error occured";
        }
        
        \Session::put('success',$msg);
        return redirect()->route('category');

    }
    /**category ends here */

    /**business starts here */
    
    public function places()
    {
        $data=Places::with('categories')->orderBy('id','desc')->get();
        return view('admin.places.index', ['data' => $data]);
        //return $data;
        
    }
    public function viewPlace($id)
    {
        $data=Places::with('categories')->find($id);
        $availibilty=User_availability::where('user_id',$id)->get(['start','end','day','is_open']);   

        return view('admin.places.Detail', compact('data','availibilty'));

    }

    public function addPlace()
    {
        $categories = Category::pluck('categoryName','id');
        
        return view('admin.places.add', ['categories' => $categories]);
    }

    public function postPlace(Request $req)
    {
        $services=$req->service;
        array_pop($services);

        $service=implode(",",$services);


        $validatedData=$req->validate([


            'email'=>'required|email|unique:App\Models\Places',
            'name'=>'required',
            'category'=>'required',
            'marketing_name'=>'required',
            'location'=>'required',
            'marketing_email'=>'required|email|unique:App\Models\Places,marketing_email',
            'marketing_phone'=>'unique:App\Models\Places,marketing_phone|required|numeric|digits:12',
            'password'=>'required|min:8|max:16',
            'mobile' => 'unique:App\Models\Places,mobile|required|numeric|digits:12',
            'website'=>'required',

           ]);
           $baseurl = url('/');
           if ($req->image!=NULL) {
               //echo "yes";
               $image = $req->image;
               $rand = rand(1000, 99999);
               $name = $rand . '.' . $image->getClientOriginalExtension();
               $destination = public_path('/place');



               /**compress image starts here */

               // $img = Image::make($image->getRealPath());
               // $img->resize(100, 100, function ($constraint) {
               //     $constraint->aspectRatio();
               // })->save($destination.'/'.$name);
               /**compress image ends here */


               $image->move($destination, $name);
               $path = $baseurl . "/public/place/" . $name;
           } else {
               $path = '';
           }

        $categoryName = Category::where('id', $req->category)->pluck('categoryName');

           $place=new Places;
           //$place->categoryId=$req->category;
           //$place->categoryName=$categoryName[0];
           $place->mobile=$req->mobile;
           $place->email=$req->email;
           $place->placeName=$req->name;
           $place->location=$req->location;
           $place->website=$req->website;
           $place->marketing_phone=$req->marketing_phone;
           $place->marketing_email=$req->marketing_email;
           $place->marketing_name=$req-> marketing_name;
           $place->services=$service;
           $place->image=$path;
           //$place->closesAt=$req->end_time;
          // $place->opensAt=$req->location;
           $place->password=Hash::make($req->password);
           $place->save();
           $categoryids=$req->category;
           $place->categories()->attach($categoryids);
        $msg='place added sucessfully';
        \Session::put('success',$msg);
        return redirect()->route('places');
        
   

            
    }

    public function deletePlace($id)
    {
        $place = Places::find($id);

        //dd($images);
        $place->categories()->detach();

        $images=Image::where('place_id',$id)->pluck('id');
        if (count($images)) {

           for ($i=0; $i <count($images) ; $i++) {
            $data=Image::find($images[$i]);
            $string_no = strpos($data->image,"public");
            //dd($str  $data=Image::find($id);ing_no);
            $new_image = substr($data->image,$string_no);
            $str = $data->image;
            $storage =  unlink($new_image);
               $data->delete();
           
           }
         

        }

        $availability=User_availability::where('user_id',$id)->delete();

        if ($place->image!=NULL) {
            $string_no = strpos($place->image,"public");
            //dd($str  $data=Image::find($id);ing_no);
            $new_image = substr($place->image,$string_no);
            $str = $place->image;
            //dd($place->image);
            $storage =  unlink($new_image);
        }

        $place->delete();



        \Session::put('success','place delete successfully');
        return redirect()->route('places');

    }

    /**business ends here */
	
	/**reviews starts here */

    public function reviews($placeId)
    {
        $data = Review::where('placeId', $placeId)->get();
        $placeName = Places::where('id', $placeId)->pluck('placeName');

        // return $placeName;
        return view('admin.review.index', ['data' => $data, 'placeName' => $placeName]);
    }


    public function deleteReview($id, $placeId)
    {
        $delete = Review::destroy($id);
        if($delete) {
            $msg = "Deleted Successfully";
        } else {
            $msg = "Some error occured";
        }
        
        \Session::put('success',$msg);
        return redirect()->route('reviews', ['placeId' => $placeId]);
    }

    /**reviews ends here */



	public function logout()
	{
	Auth::logout();
	Session::flush();
	return redirect(url('admin-login'));
	}
	
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
