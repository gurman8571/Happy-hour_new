@extends('User.layout.layout')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Add Offer</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('User.Dashboard')}}">Home</a></li>
              <li class="breadcrumb-item active">Add Offer</li>
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
              <form action="{{route('Offer.post')}}" role="form" id="quickForm" method="post" enctype="multipart/form-data">
              @csrf
              <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Offer heading*</label>
                    <input type="text" name="heading" class="form-control" placeholder="Enter Offer heading" required>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Valid upto*</label>
                    <input type="date" name="valid" class="form-control" placeholder="Offer valid upto" required>
                  </div>

              

                  <div class="form-group">
                    <label for="exampleInputEmail1">Offer description*</label>
                    <textarea  name="desc" class="form-control" placeholder="Enter Offer description " required></textarea>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Banner image</label>
                    <input type="file" name="image" class="form-control px-1">
                  </div>






                </div>
                <!-- /.card-body -->
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
