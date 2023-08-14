@extends('agent.agent_dashboard')
@section('agent')

<div class="page-content">

        <div class="row inbox-wrapper">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="row">
                  <div class="col-lg-3 border-end-lg">
                    <div class="d-flex align-items-center justify-content-between">
                      <button class="navbar-toggle btn btn-icon border d-block d-lg-none" data-bs-target=".email-aside-nav" data-bs-toggle="collapse" type="button">
                        <span class="icon"><i data-feather="chevron-down"></i></span>
                      </button>
                      <div class="order-first">
                        <h4>Mail Service</h4>
                        <p class="text-muted">Support@realeasybd.com</p>
                      </div>
                    </div>
                    
                    <div class="email-aside-nav collapse">
                      <ul class="nav flex-column">
                        <li class="nav-item active">
                          <a class="nav-link d-flex align-items-center" href="{{ route('agent.property.message') }}">
                            <i data-feather="inbox" class="icon-lg me-2"></i>
                            Inbox
                            <span class="badge bg-danger fw-bolder ms-auto">{{ count($usermsg) }}
                          </a>
                        </li>



                      </ul>
                      
                    </div>
                  </div>
                  <div class="col-lg-9">
                    <div class="p-3 border-bottom">
                      <div class="row align-items-center">
                        <div class="col-lg-6">
                          <div class="d-flex align-items-end mb-2 mb-md-0">
                            <i data-feather="inbox" class="text-muted me-2"></i>
                            <h4 class="me-1">Inbox</h4>
                            <span class="text-muted">({{ count($usermsg) }} new messages)</span>
                          </div>
                        </div>
                        <div class="col-lg-6">
                          
                        </div>
                      </div>
                    </div>

                    <div class="email-list">



      <!-- email list item -->
      @foreach($usermsg as $msg)
      <div class="email-list-item">

        <a href="{{ route('agent.message.details',$msg->id) }}" class="email-list-detail">
          <div class="content">
            <span class="from">{{ $msg['user']['name'] }}</span>
            <p class="msg"> {{ $msg->message }} </p>
          </div>
          <span class="date">
            <span class="icon"><i data-feather="paperclip"></i> </span>
           {{ $msg->created_at->format('l M d') }}
          </span>
        </a>
      </div>
    @endforeach



                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>

			</div>









@endsection