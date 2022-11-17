@extends('admin.layout.layout')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Add Place</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Add Place</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

	@if ($errors->any())
	<div class="card-body">
	<div class="alert alert-danger alert-dismissible">
	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>

	@foreach ($errors->all() as $error)
	<p>{{ $error }}</p>
	@endforeach

	</div>


	</div>

	@endif
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- jquery validation -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Details</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="{{route('postPlace') }}" class="p-3" method="post" enctype="multipart/form-data">
                @csrf
                <div >

                    <div >
                        <div class="row">
                            <div class="col-sm-6">

                                <div class="form-group">
                                    <label>Business name</label>
                                    <input type="text" value="{{ old('name') }}" class="form-control"
                                        name="name" placeholder="Enter Name">
                                    @error('name')
                                        <span class="text-danger text-center mt-1">*{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Business email</label>
                                    <input type="email" class="form-control"name="email"
                                        value="{{ old('email') }}" placeholder="Enter email">
                                    @error('email')
                                        <span class="text-danger text-center mt-1">*{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Category</label>
                            <select class="category-select"name="category[]"style="width:100%" multiple>

                                @foreach ($categories as $key => $item)
                                    <option value="{{ $key }}"> {{ $item }}</option>
                                @endforeach


                            </select>
                            @error('category')
                                <span class="text-danger text-center mt-1">*{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Business location</label>
                            <!--<input type="text" class="form-control"name="location" value="{{ old('location') }}" id="exampleInputEmail1" placeholder="Enter Location">-->
                            <select required class="form-control" name="location">
                                <option value="">Choose Location</option>
                                <option value="Palm Springs">Palm Springs</option>
                                <option value="Cathedral City">Cathedral City</option>
                                <option value="Rancho Miraj">Rancho Miraj</option>
                                <option value="Palm Desert">Palm Desert</option>
                                <option value="Indian Wells">Indian Wells</option>
                                <option value="Bermuda Dunes">Bermuda Dunes</option>
                                <option value="La Quinta">La Quinta</option>
                                <option value="Indio">Indio</option>
                                <option value="Coachella">Coachella</option>
                            </select>
                            @error('location')
                                <span class="text-danger text-center mt-1">*{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Add detail</label>

                                <div class="form-group row mb-2 increment">
                                    <div class="col-sm-11">
                                        <input type="text" class="form-control service"name="service[]"
                                            placeholder="Enter Detail">

                                    </div>
                                    <div class="col-sm-1">
                                        <button class="btn btn-success btn-xs mt-3 sharp" id="add"
                                            type="button"><i class="fas fa-plus"></i></button>
                                    </div>
                                </div>




                            </div>
                        </div>

                        <div class="clone hide" hidden>

                            <div class="hdtuto">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Add detail</label>

                                <div class="form-group row mb-2">
                                    <div class="col-sm-11">
                                        <input type="text" class="form-control service" name="service[]"
                                            placeholder="Enter Detail">
                                    </div>

                                    <div class="col-sm-1">
                                        <button class="btn btn-danger btn-xs sharp mt-3" id="remove"
                                            type="button"><i class="fas fa-minus"></i></button>
                                    </div>
                                </div>
                            </div>

                        </div>


                        <div class="form-group">
                            <label for="exampleInputEmail1">Business phone number</label>
                            <input type="text" class="form-control"name="mobile"
                                value="{{ old('mobile') }}" placeholder="Enter Mobile">
                            @error('mobile')
                                <span class="text-danger text-center mt-1">*{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1"> Business website</label>
                            <input type="url" class="form-control"name="website"
                                value="{{ old('website') }}" placeholder="Enter Business Website">
                            @error('website')
                                <span class="text-danger text-center mt-1">*{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="row">
                            <div class="col-sm-6">

                                <div class="form-group">
                                    <label>Marketing contact's name</label>
                                    <input type="text" value="{{ old('marketing_name') }}"
                                        class="form-control" name="marketing_name"
                                        placeholder="Enter marketing contact's name">
                                    @error('marketing_name')
                                        <span class="text-danger text-center mt-1">*{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Marketing contact's email</label>
                                    <input type="email" class="form-control"name="marketing_email"
                                        value="{{ old('marketing_email') }}"
                                        placeholder="Enter marketing contact's email">
                                    @error('marketing_email')
                                        <span class="text-danger text-center mt-1">*{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Marketing contact's phone</label>
                            <input type="tel" class="form-control" name="marketing_phone"
                                value="{{ old('marketing_phone') }}"
                                placeholder="Enter marketing contact's phone">
                            @error('marketing_phone')
                                <span class="text-danger text-center mt-1">*{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Image</label>
                            <input type="file" class="form-control" name="image">

                        </div>






                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control"
                                name="password"placeholder="Password">
                            @error('password')
                                <span class="text-danger text-center mt-1">*{{ $message }}</span>
                            @enderror
                        </div>


                    </div>

                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
            </form>
            </div>
            <!-- /.card -->
            </div>
          <!--/.col (left) -->
          <!-- right column -->
          <div class="col-md-6">

          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>


  @endsection
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <!-- Bootstrap 4 -->
  <script src="{{url('assets/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
  <!-- AdminLTE App -->
  <script src="{{url('assets/adminlte/dist/js/adminlte.min.js')}}"></script>
  <script src="https://adminlte.io/themes/v3/plugins/select2/js/select2.full.min.js"></script>
  <script>
    $(document).ready(function() {
        $('.category-select').select2();
    });




                                  $(document).ready(function() {

                                      $("#add").click(function() {
                                          //console.log('hi');
                                          var lsthmt1 = $(".clone").html();
                                          $(".increment").after(lsthmt1);
       });
                                      $("body").on("click", "#remove", function() {
                                          $(this).parents(".hdtuto").remove();

                                      });
                                  });
  </script>
