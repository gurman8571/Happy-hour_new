<!-- Content Wrapper. Contains page content -->
@extends('User.layout.layout')
@section('content')
    <?php
    $images = $images->toArray();
    ?>
    <div class="content-wrapper" style="min-height: 2646.8px;">

        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Profile</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="">Home</a></li>
                            <li class="breadcrumb-item active">User Profile</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">

                        <div class="card card-primary card-outline">
                            <div class="card-body box-profile">
                                <div class="text-center">
                                    <img class="profile-user-img img-fluid img-circle" src="{{ $data->image }}"
                                        alt="User profile picture">
                                </div>
                                <h3 class="profile-username text-center"> {{ $data->placeName }}</h3>
                                <p class="text-muted text-center"><i class="fas fa-map-marker-alt mr-1"> </i>
                                    {{ $data->location }}</p>
                                <p class="text-muted text-center"><i class="fas fa-globe mr-1"> </i> <a
                                        href="{{ $data->website }}">Website</a> </p>
                                <ul class="list-group list-group-unbordered mb-3">
                                    <li class="list-group-item">
                                        <strong style="color:#212529">Business Phone</strong>
                                        <p class="float-right text-primary">{{ $data->mobile }}</p>
                                    </li>
                                    <li class="list-group-item">
                                        <b style="color:#212529">Business email</b>
                                        <p class="float-right text-primary">{{ $data->email }}</p>
                                    </li>
                                    <li class="list-group-item">
                                        <b style="color:#212529">Ratings</b>
                                        <p class="float-right text-primary">{{ $data->ratings }}/5</p>
                                    </li>
                                </ul>

                            </div>

                        </div>


                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Marketing Details</h3>
                            </div>

                            <div class="card-body">
                                <strong><i class="fas fa-user mr-1"></i> Name</strong>
                                <p class="text-muted">
                                    {{ $data->marketing_name }}
                                </p>
                                <hr>
                                <strong><i class="fas fa-phone mr-1"></i> Phone</strong>
                                <p class="text-muted">
                                    {{ $data->marketing_phone }}
                                </p>
                                <hr>

                                <strong><i class="fas fa-envelope mr-1"></i> Email</strong>
                                <p class="text-muted">{{ $data->marketing_email }}</p>
                                <hr>

                            </div>

                        </div>

                    </div>

                    <div class="col-md-9">
                        <div class="card">
                            <div class="card-header p-2">
                                <ul class="nav nav-pills">
                                    <li class="nav-item"><a class="nav-link active" href="#activity" data-toggle="tab">Images</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#timeline"
                                            data-toggle="tab">Categories</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link " href="#settings"
                                            data-toggle="tab">Business
                                            Hours</a></li>
                                </ul>
                            </div>
                            <div class="card-body">
                                
                                <div class="tab-content">
                                  
                                    <div class="tab-pane active" id="activity">
                                        @if(count($images))
                                        <div class="post">
                                            <div class="row mb-3">
                                                <div class="col-sm-6">
                                                    <img class="img-fluid" style="height:320px;" src="{{ $images[0] }}" alt="Photo">
                                                </div>

                                                <div class="col-sm-6">
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            @if (array_key_exists(2, $images))
                                                                <img class="img-fluid mb-3" src={{ $images[1] }}
                                                                    alt="Photo" style="height:150px;">
                                                            @endif
                                                            @if (array_key_exists(2, $images))
                                                                <img class="img-fluid" src={{ $images[2] }}
                                                                    alt="Photo" style="height:150px;">
                                                            @endif
                                                        </div>


                                                        <div class="col-sm-6">
                                                            @if (array_key_exists(3, $images))
                                                                <img class="img-fluid mb-3" src={{$images[3]}}
                                                                    alt="Photo" style="height:150px;">
                                                            @endif
                                                            @if (array_key_exists(4, $images))
                                                                <img class="img-fluid" src={{$images[4]}}
                                                                    alt="Photo" style="height:150px;" >
                                                            @endif
                                                        </div>

                                                    </div>

                                                </div>

                                            </div>

                                           
                                        </div>
@endif
                                    </div>

                                    <div class="tab-pane" id="timeline">


                                        <div>

                                        </div>






                                        <table id="example1" class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>S.No</th>
                                                    <th> Category</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($data->categories as $key => $value)
                                                    <tr>

                                                        <td>{{ $key + 1 }}</td>
                                                        <td>{{ $value['categoryName'] }}</td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>S.No</th>
                                                    <th>Category</th>

                                                </tr>
                                            </tfoot>
                                        </table>






                                    </div>
                                    <div class="tab-pane" id="settings">
                                        <div>

                                        </div>






                                        <table id="example1" class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>S.No</th>
                                                    <th> Day</th>
                                                    <th>status</th>
                                                    <th> Working Hours</th>


                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($availibilty as $key => $value)
                                                    <tr>
                                                        <td>{{ $key + 1 }}</td>
                                                        <td class="text-capitalize">{{ $value->day }}</td>
                                                        @if ($value->is_open == 0)
                                                            <td> <button class="btn btn-danger">Close</button></td>
                                                        @else
                                                            <td> <button class="btn btn-success">Open</button> </td>
                                                        @endif
                                                        <td>{{ $value->start }}-{{ $value->end }}</td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>S.No</th>
                                                    <th> Day</th>
                                                    <th>status</th>
                                                    <th> Working Hours</th>
                                                </tr>
                                            </tfoot>
                                        </table>

                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </section>
@endsection
