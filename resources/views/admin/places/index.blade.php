@extends('admin.layout.layout')
@section('content')
  <div class="content-wrapper">
  
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Places</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Places</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
	
	@if (session('success'))
	<div class="card-body">
	<div class="alert alert-success alert-dismissible">
	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <h5>{{ Session::get('success') }}</h5>
	<?php Session::forget('success');?>
	</div>
    </div>
	@endif
	
	
	
	 <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
		  
		
            <div class="card">
              <div class="card-header">
                <h3 class="card-title"><a href="{{url('add-place')}}"><button type="button" class="btn btn-block bg-gradient-primary">Add Place</button></a></h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>S.No</th>
                    <th>Place Name</th>
                    <th>Place Type</th>
                    <th>Contact</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php $i = 1; ?>
                    @foreach($data as $rows)
                    <tr>
                      <td>{{$i}}</td>
                      <td> {{$rows->placeName}} </td>
                      <td>
                      @if($rows->categoryName) 
                          {{$rows->categoryName}}  
                          @else
                              @if(!empty($rows['categories']))
       {{$rows['categories']->pluck('categoryName')->implode(', ') }}
     
    @endif
                          @endif
                      </td>
                      <td> {{$rows->mobile}} </td>
                      
                      <td>
                            <a href="{{ route('deletePlace', ['id' => $rows->id] ) }}"  onclick="return confirm('are you sure?')">
                                <button class="btn btn-danger" type="button">
                                    <i class="fa fa-trash"></i>
                                </button>
                            </a>
                         
                            
                            <a href="{{ route('reviews', ['placeId' => $rows->id]) }}"><button class="btn btn-primary">Reviews</button></a>
                      </td>
                    </tr>
                    <?php $i++; ?>
                    @endforeach
                  
                  </tbody>
                  <tfoot>
                   <tr>
                    <th>S.No</th>
                    <th>Place Name</th>
                    <th>Place Type</th>
                    <th>Contact</th>
                   
                    <th>Action</th>
                  </tr>
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
			
			
			
			
			
			
			
			
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
	
	
  
  
   </div>
  @endsection