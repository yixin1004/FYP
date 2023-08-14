@extends('admin.admin_dashboard')
@section('admin')


<div class="page-content">

				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
          @if(Auth::user()->can('Amenities.Add'))
	        <a href="{{ route('add.amenitie') }}" class="btn btn-inverse-info"> Add Amenities    </a>
					@endif
          </ol>
				</nav>

				<div class="row">
					<div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h6 class="card-title">Amenities All </h6>

                <div class="table-responsive">
                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
                        <th>Sl </th>
                        <th>Amenities Name </th> 
                        <th>Action </th> 
                      </tr>
                    </thead>
                    <tbody>
                   @foreach($amenities as $key => $item)
                      <tr>
                        <td>{{ $key+1 }}</td>
                        <td>{{ $item->amenitis_name }}</td> 
                        <td>
                          @if(Auth::user()->can('Amenities.Edit'))
                          <a href="{{ route('edit.amenitie',$item->id) }}" class="btn btn-inverse-warning"> Edit </a>
                          @endif
                          @if(Auth::user()->can('Amenities.Delete'))
                          <a href="{{ route('delete.amenitie',$item->id) }}" class="btn btn-inverse-danger" id="delete"> Delete  </a>
                          @endif
                        </td> 
                      </tr>
                     @endforeach
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
					</div>
				</div>

			</div>









@endsection