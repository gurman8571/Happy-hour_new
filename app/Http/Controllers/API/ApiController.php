<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Listuser;
use App\Models\Category;
use App\Models\Places;
use App\Models\Review;
use App\Models\Favourite;
use App\Models\Notification;
use App\Models\Place_category;
use App\Models\User_availability;
use App\Models\Image;
use App\Models\Offer;
use DB;

class ApiController extends Controller
{
    public function signup(Request $request)
    {
        
        $exist = Listuser::where('email', $request->email)->orWhere('mobile', $request->mobile)->exists();

        if($exist) {
            return response()->json([
                "responseCode" => 208,
                "responseMessage" => "User already exists"
            ]);
        }

        $create = Listuser::insert([
            "firstName" => $request->firstName,
            "lastName" => $request->lastName,
            "email" => $request->email,
            "mobile" => $request->mobile,
            "dateOfBirth" => $request->dateOfBirth,
            "password" => $request->password,
        ]);

        if($create) {
            return response()->json([
                "responseCode" => 200,
                "responseMessage" => "User Created successfully!"
            ]);
        } else {
            return response()->json([
                "responseCode" => 400,
                "responseMessage" => "oops! Something went wrong"
            ]);
        }

    }

    public function login(Request $request )
    {
        
            $email = $request->email;
            $password = $request->password;
             $check=Listuser::where('email', $email)->exists();
            if (!$check) {
                return response()->json([
                    'responseCode' => 401,
                    "responseMessage" => "Email Does not exist. Please try again ",
                    
                ]);
            }
            $exist = Listuser::where('email', $email)->where('password', $password)->exists();



            if ($exist) {
                    $data = Listuser::where('email', $email)->where('password', $password)->get();
                    return response()->json([
                        "responseCode" => 200,
                        "responseMessage" => "Ok",
                        "data" => $data[0]
                    ], 200);
            }
            else {
                    return response()->json([
                        'responseCode' => 401,
                        'responseMessage' => 'Your password is incorrect.Please try again'
                    ]);
                }
    }
	
	public function getProfile(Request $request)
    {
        $data = Listuser::where('id', $request->user_id)->get();

        if(count($data) > 0) {
            return response()->json([
                "responseCode" => 200,
                "responseMessage" => "Ok",
                "data" => $data[0]
            ], 200);
        } else {
            return response()->json([
                "responseCode" => 404,
                "responseMessage" => "User not found",
            ], 200);
        }
                    
    }
	
	public function updateProfile(Request $request)
    {
		
		$user = Listuser::find($request->userId);

        if(!$user) {
            return response()->json([
                "responseCode" => 404,
                "responseMessage" => "User not found!"
            ]);
        }

        $imagePath = $user->imagePath;

        if ($request->hasFile('profileImage')) {
            $image = $request->file('profileImage');
            $name = time() . '.' . $image->getClientOriginalExtension();
            $destination = public_path('/profileImage');
            $image->move($destination, $name);
            // $path = public_path("images\\".$name);
            $baseurl = url('/');
            $path = $baseurl . "/public/profileImage/" . $name;
        } else {
            $path = $imagePath;
        }


        $user->firstName = $request->firstName;
        $user->lastName = $request->lastName;
        $user->email = $request->email;
        $user->mobile = $request->mobile;
        $user->dateOfBirth = $request->dateOfBirth;
        $user->imagePath = $path;
        $user->save();

        if($user) {
            return response()->json([
                "responseCode" => 200,
                "responseMessage" => "Profile Updated",
				"data" => $user
            ]);
        } else {
            return response()->json([
                "responseCode" => 406,
                "responseMessage" => "Error while Updating data",
            ]);
        }


    }
	
	
	public function homepage(Request $request)
    {
        $location = $request->location; 
        $userId = $request->userId; 
        $categoryName=$request->categoryName;
        
         $category='';  

        if ($categoryName == NULL) {
            $category = Category::with('places')->get(['id','categoryName']);
        }
        else{
            $category=Category::where('categoryName',$categoryName)->get(['id','categoryName']);
            
        }
     
        //return $category;

        //$places = [];
        foreach($category as $cat) {
            //$places = Places::where('categoryId', $cat->id)->where('location', $location)->get();
                //return $places;
				foreach($cat->places as $value) {

                    
                    if ($value->location == $request->location) {
                        $value->isdisplay=1;
                    }
                    else{
                        $value->isdisplay=0;  
                    }
                        $checkFavourite = Favourite::where('userId', $userId)->where('placeId', $value->id)->exists();
                        if($checkFavourite) {
                            $isFav = 1; 
                        } else {
                            $isFav = 0;
                        }
            
                        $value->isFav = $isFav;
                        $value->AvgRating=$this->AvgRating($value->id);
                            
                }
               
                   
            
        }

     

       

        $categoryCount = count($category);
       
     if (  $categoryCount) {
        # code...
     
            
                return response()->json([
                    "responseCode" => 200,
                    "responseMessage" => "Ok",
                    "location" => $location,
                    "data" => $category,
                ]);}

            /*} else {
                return response()->json([
                    "responseCode" => 404,
                    "location" => $location,
                    "responseMessage" => "Data not found for given location"
                ], 404);
            }*/
           
       else {
            return response()->json([
                "responseCode" => 404,
                "location" => $location,
                "responseMessage" => "No data found"
            ]);
        }


    }

    public function AvgRating($id)
    {

        $place=Review::where('placeId',$id)->pluck('rating');
        $count=0;
        $reviews=count($place);

        for ($i=0; $i <count($place) ; $i++) {
                $count+=$place[$i];
        }
        //$count;
        //return $reviews;
        if ($reviews == 0) {
           return 0;
        }
        return number_format((float)($count/$reviews), 1,".", ",");

    }

	public function placeDetail(Request $request)
    {
        $userId = $request->userId;
        $data = Places::where('id', $request->placeId)->get();
        $images=Image::where('place_id',$request->placeId)->pluck('image')->take(5);
        $offers=Offer::where('status',1)->where('place_id',$request->placeId)->get(['Heading','valid_upto','description','Image']); 
        $BusinessHours=User_availability::where('user_id',$request->placeId)->get(['is_open','start','end','day']);
        $categories_id=Place_category::where('places_id',$request->placeId)->pluck('category_id');
        $categories=[];
        foreach ($categories_id as $key => $value) {
            $name=Category::where('id',$value)->pluck('categoryName');


            array_push($categories,$name[0]);
        }
        $checkFavourite = Favourite::where('userId', $userId)->where('placeId', $request->placeId)->exists();
        if($checkFavourite) {
            $isFav = 1;
        } else {
            $isFav = 0;
        }

        if(count($data) > 0) {
            return response()->json([
                "responseCode" => 200,
                "responseMessage" => "Ok",
                "isFav" => $isFav,
                "averageRating" =>$this->AvgRating($request->placeId),
                "location"=>$data[0]["location"],
                "data" => $data[0],
                "images"=>$images,
                "offers"=>$offers,
                'BusinessHours'=>$BusinessHours,
                "categories"=> $categories
            ], 200);
        } else {
            return response()->json([
                "responseCode" => 404,
                "responseMessage" => "Invalid Place Id"
            ]);
        }
    }

    public function addReview(Request $request)
    {
        $userId = $request->userId;
        $placeId = $request->placeId;
        $rating = $request->rating;
        $message = $request->message;

        $insert = new Review;
        $insert->placeId = $placeId;
        $insert->userId = $userId;
        $insert->rating = $rating;
        $insert->message = $message;
        $insert->save();
        $place=Places::find($placeId);
         $place->ratings=$this->AvgRating($placeId);
         $place->save();
        if($insert) {
            return response()->json([
                "responseCode" => 200,
                "responseMessage" => "Review Added",
            ], 200);
        } else {
            return response()->json([
                "responseCode" => 401,
                "responseMessage" => "Some error occured"
            ], 401);
        }


    }

    public function placeReviews(Request $request)
    {
        $placeId = $request->placeId;
        $data = DB::table('reviews')
               ->join('users', 'users.id', '=', 'reviews.userId')
                ->where('reviews.placeId', $placeId)
                ->get(['reviews.id','reviews.placeId','users.firstName','users.lastName','reviews.rating','reviews.message', 'reviews.created_at' ]);

                $count=count($data);
                 
        if(count($data) > 0) {
            return response()->json([
                "responseCode" => 200,
                "responseMessage" => "Ok",
                "totalReviews"=>$count,
                "data" => $data
              
            ], 200);
        } else {
            return response()->json([
                "responseCode" => 404,
                "responseMessage" => "Review not found"
            ]);
        }

    }

    public function addToFavourite(Request $request )
    {
        $placeId = $request->placeId;
        $userId = $request->userId;

        $exist = Favourite::where('placeId', $placeId)->where('userId', $userId)->exists();
        if($exist) {
            return response()->json([
                "responseCode" => 208,
                "responseMessage" => "Already added to Favourites"
            ]);
        }


        $insert = new Favourite;
        $insert->userId = $userId;
        $insert->placeId = $placeId;
        $insert->save();

        if($insert) {
            return response()->json([
                "responseCode" => 200,
                "responseMessage" => "Added to Favourites",
            ], 200);
        } else {
            return response()->json([
                "responseCode" => 401,
                "responseMessage" => "Some error occured"
            ]);
        }

    }
	
	public function removeFromFavourite(Request $request)
    {
        $placeId = $request->placeId;
        $userId = $request->userId;

        $delete = Favourite::where('placeId', $placeId)->where('userId', $userId)->delete();

        if($delete) {
            return response()->json([
                "responseCode" => 200,
                "responseMessage" => "Removed from Favourites",
            ], 200);
        } else {
            return response()->json([
                "responseCode" => 401,
                "responseMessage" => "Some error occured"
            ]);
        }

    }


    public function getFavourite(Request $request)
    {
        
        $userId = $request->userId;
        $data = DB::table('favourite as fav')
                ->join('places as pla', 'pla.id' , '=', 'fav.placeId')
                ->where('fav.userId', $userId)
                ->get('pla.*');

				  foreach($data as $rows) {
                    $rows->isFav = 1;
                    $rows->AvgRating=$this->AvgRating($rows->id);
                }


        if(count($data) > 0) {
            return response()->json([
                "responseCode" => 200,
                "responseMessage" => "Ok",
                "data" => $data
            ], 200);
        } else {
            return response()->json([
                "responseCode" => 404,
                "responseMessage" => "Favourites not found"
            ]);
        }

    }
	
	public function notification(Request $request)
    {
        $userId = $request->userId;

        $Favourite=Favourite::where('userId',$userId)->pluck('placeId');
        //return $Favourite;
      $notifications=[];
$data=[];
foreach ($Favourite as $key => $value) {
$notification=Notification::where('placeId',$value)->pluck('id');
if (count($notification)) {
    array_push($data,$notification);
}
}
//return $data;
if (count($data)) {
    for ($i=0; $i <count($data) ; $i++) { 
       $value=Notification::find($data[$i]);
       
        array_push($notifications,$value);
    
    }
}

//return $data;
      
        if(count($notifications) > 0) {
            return response()->json([
                "responseCode" => 200,
                "responseMessage" => "Ok",
                "data" => $notifications
            ], 200);
        } else {
            return response()->json([
                "responseCode" => 404,
                "responseMessage" => "Notification not found"
            ]);
        }

    }
	
	public function placesWithOffers(Request $request)
    {
        $location = $request->location;
        $userId = $request->userId;
		
        if(empty($location)) {
           $location=NULL;
        }

        $places_id =Offer::where('status',1)->groupBy('place_id')->pluck('place_id');
        $places=[];
        //return $places;

        // Places::where('location', 'like', '%'.$location.'%')
                 //->where('offers', '!=', '')
                 //->get();
				//return $places;

               if (count($places_id)) {
                foreach ($places_id as $key => $value) {

                    $data=Places::find($value);
                    
                    if($data && $location == NULL){
                        $checkFavourite = Favourite::where('userId', $userId)->where('placeId', $value)->exists();
                        if($checkFavourite) {
                            $isFav = 1; 
                        } else {
                            $isFav = 0;
                        }
            
                        /**add flag to check if it is fav or not */
                        $data->isFav = $isFav;
                        $data->AvgRating=$this->AvgRating($data->id);
    
                        array_push($places,$data);         
                    }
                    
                    if ($data &&  $data->location == $location) {
                        $checkFavourite = Favourite::where('userId', $userId)->where('placeId', $value)->exists();
                        if($checkFavourite) {
                            $isFav = 1; 
                        } else {
                            $isFav = 0;
                        }
            
                        /**add flag to check if it is fav or not */
                        $data->isFav = $isFav;
                        $data->AvgRating=$this->AvgRating($data->id);
    
                        array_push($places,$data);
                    }
                }

               }
				
			
    


        if(count($places) == 0) {
            return response()->json([
                "responseCode" => 404,
                "responseMessage" => "No data found"
            ]);
        } else {
            return response()->json([
                "responseCode" => 200,
                "responseMessage" => "Ok",
                "data" => $places
            ]);
        }

    }


    public function updatePass(Request $request)
    {


        $user = Listuser::find($request->userId);
        //return $user;

        if(!$user) {
            return response()->json([
                "responseCode" => 404,
                "responseMessage" => "User not found!"
            ]);
        }

        if($request->new_password == $request->confirm_password){

            if ($request->current_password!=$user->password) {

                    return response()->json([
                        'responseCode' => 401,
                        'responseMessage' => 'Your current password does not matches with the password you provided. Please try again.'
                    ]);
                }



            if(strcmp($request->current_password, $request->new_password) == 0){
                //Current password and new password are same
                return response()->json([
                    'responseCode' => 401,
                    'responseMessage' => 'New Password cannot be same as your current password. Please choose a different password.'
                ]);
            }


            //Change Password
            //$user = Auth::user();
            $user->password =$request->new_password;
            $user->save();

            return response()->json([
                'responseCode' => 200,
                'responseMessage' => 'Password Changed Successfully'
            ]);



        }
        else{
            return response()->json([
                'responseCode' => 401,
                'responseMessage' => 'Password and Confirm Password Do not Match!'
            ]);

        }


    }
    public function filter(request $req)
    {
        
            $places=[];
            $place_cat=[];
            $place_loc=[];
            $place_rating=[];
            $result=[];
    
           if ($req->categoryName!=NULL) {
        $category=Category::where('categoryName',$req->categoryName)->get();
    
           $category_id=$category[0]->id;
              $place_cat=Place_category::where('category_id',$category_id)->pluck('places_id')->toarray();
              $places=$place_cat;
    
    
           }
               
           if ($req->location!=NULL) {
            $place_loc=Places::where('location',$req->location)->pluck('id')->toarray();
            if (count($places)) {
                $places=array_intersect($places,$place_loc);
            }
            else{

                if ($req->categoryName!=NULL) {
                $places=[];
                }
                else {
                    $places= $place_loc;
                }
              
            }
    
           }
    
           if ($req->rating!=NULL) {

            if ($req->rating == 0) {
                $min=0;
            }     
            else{ 
            $min=$req->rating-0.4;
            }
    
            $place_rating=Places::whereBetween('ratings', [$min,$req->rating])->pluck('id')->toarray();
            if (count($places)) {
                $places=array_intersect($places,$place_rating);
            }
            else{
                if ($req->categoryName!=NULL || $req->location!=NULL) {
                    $places=[];
                }
                else {
                  $places=$place_rating;
                }
                
            }
           }
    foreach ($places as $key => $value) {
        $data=Places::find($value);
        array_push($result,$data);
    }
    
           $count=count($result);
    
    
    
                if ($count>0) {
                return response()->json([
                    'responseCode' => 200,
                    'count'=>$count,
                    'responseMessage' => 'Data Found!',
                    'data'=>$result,
                ]);
    
            }
            else{
                return response()->json([
                    'responseCode' => 404,
                    'count'=>$count,
                    'responseMessage' => 'No Data Found!'
                ]);
    
    
        }
}
public function ForgotPass_otp(request $req)
 {


    $exist = Listuser::where('email', $req->email)->exists();
    $data=Listuser::where('email', $req->email)->get();
    $user=$data['0'];


    if(!$exist) {
        return response()->json([
            "responseCode" => 404,
            "responseMessage" => "User not found ! "
        ]);
    }
    else{
        //return $user;


    $digits = 4;
            $otp = str_pad(rand(0, pow(10, $digits)-1), $digits, '0', STR_PAD_LEFT);

            //return $user[0]['otp'];


    $details = [
        'title' => 'Mail from Happy hours',
        'body' => 'Use this OTP to  Reset Your password',
        'otp'=>$otp
    ];

    //Mail::to($req->email)->send(new ForgotPass($details));
  \Mail::to($req->email)->send(new \App\Mail\ForgotPass($details));
    //$mail=\Mail::to('gurma381@gmail.com')->send(new \App\Mail\ForgotPass($details));

            $user->otp=$otp;
            $user->save();

            return response()->json([
                'responseCode' => 200,
                'responseMessage' => 'Email sent'
            ]);



    }
 }


 
 public function verify_otp(request $req)
 {
     $data=Listuser::where('email', $req->email)->get();
     $user=$data['0'];

     if ($user->otp == $req->otp) {

         return response()->json([
             'responseCode' => 200,
             'responseMessage' => 'OTP verified'
         ]);

     }
     else{
         return response()->json([
             'responseCode' => 401,
             'responseMessage' => 'OTP does not match '
         ]);
     }

 }

 public function changepassword(request $request)
 {

  
     $data=Listuser::where('email', $request->email)->get();
     //return $data;
     $user=$data['0'];
     //return $user;

     if($request->new_password == $request->confirm_password){





         if(strcmp($request->new_password,$user->password ) == 0){
             //Current password and new password are same
             return response()->json([
                 'responseCode' => 401,
                 'responseMessage' => 'New Password cannot be same as your current password. Please choose a different password.'
             ]);
         }


         //Change Password
         //$user = Auth::user();
         $user->password =$request->new_password;
         $user->save();

         return response()->json([
             'responseCode' => 200,
             'responseMessage' => 'Password Changed Successfully'
         ]);



     }
     else{
         return response()->json([
             'responseCode' => 401,
             'responseMessage' => 'Password and Confirm Password Do not Match!'
         ]);

     }



 }
 
public function ViewAllCategory(request $req)
{
            
          $category_id=Category::where('categoryName',$req->CategoryName)->pluck('id');
          $id=$category_id[0];
          $data=Place_category::where('category_id',$id)->pluck('places_id');
         //return $data;
          $places=[];

               
foreach ($data as $key => $value) {
    $place=Places::find($value);
    if ($place->location == $req->location) {
        array_push($places,$place); 
    }
     
}

          if (count($places)) {
            return response()->json([
            'responseCode' => 200,
            'responseMessage' => 'Data found!',
            'data'=>$places
        ]);
            
          }
          else{
            return response()->json([
                'responseCode' => 401,
                'responseMessage' => 'No Data Found'   
            ]);
          }

          
}
public function DeleteAccount(request $req)
{      
    
    
    $user=Listuser::find($req->userId);
if(!$user){
   return response()->json([
            'responseCode' => 400,
            'responseMessage' => 'Account Not Found!',
        
        ]);   
}
       $del= Listuser::where('id',$req->userId)->delete();
        Review::where('userId',$req->userId)->delete();
        Favourite::where('userId',$req->userId)->delete();

          if ($del) {
            return response()->json([
            'responseCode' => 200,
            'responseMessage' => 'Account deleted!',
        
        ]);
            
          }
          else{
            return response()->json([
                'responseCode' => 400,
                'responseMessage' => 'internal error occured'   
            ]);
          }

          
}

}
