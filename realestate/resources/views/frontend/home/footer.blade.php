
@php
   $setting = App\Models\SiteSetting::find(1);
   $blog = App\Models\BlogPost::latest()->limit(2)->get();
   @endphp

 <footer class="main-footer">
            <div class="footer-top bg-color-2">
                <div class="auto-container">
                    <div class="row clearfix">
                        <div class="col-lg-3 col-md-6 col-sm-12 footer-column">
                            <div class="footer-widget about-widget">
                                <div class="widget-title">
                                    <h3>About</h3>
                                </div>
                                <div class="text">
                                    <p>Lorem ipsum dolor amet consetetur adi pisicing elit sed eiusm tempor in cididunt ut labore dolore magna aliqua enim ad minim venitam</p>
                                    <p>Quis nostrud exercita laboris nisi ut aliquip commodo.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 footer-column">
                            <div class="footer-widget links-widget ml-70">
                                <div class="widget-title">
                                    <h3>Services</h3>
                                </div>
                                <div class="widget-content">
                                    <ul class="links-list class">
                                        <li><a href="{{ url('/') }}">Home</a></li>
                                        <li><a href="{{ route('rent.property') }}">Our Rental Property</a></li>
                                        <li><a href="{{ route('buy.property') }}">Our Buy Property</a></li>
                                        <li><a href="{{ route('blog.list') }}">Our Blog</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 footer-column">
                            <div class="footer-widget post-widget">
                                <div class="widget-title">
                                    <h3>Top News</h3>
                                </div>
                                <div class="post-inner">

     @foreach($blog as $item)                               
    <div class="post">
        <figure class="post-thumb"><a href="{{ url('blog/details/'.$item->post_slug) }}"><img src="{{ asset($item->post_image) }}" alt=""></a></figure>
        <h5><a href="{{ url('blog/details/'.$item->post_slug) }}">{{ $item->post_title }}</a></h5>
        <p>{{ $item->created_at->format('M d Y') }}</p>
    </div>
    @endforeach
                                  
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 footer-column">
                            <div class="footer-widget contact-widget">
                                <div class="widget-title">
                                    <h3>Contacts</h3>
                                </div>
                                <div class="widget-content">
    <ul class="info-list clearfix">
        <li><i class="fas fa-map-marker-alt"></i>{{ $setting->company_address }}</li>
        <li><i class="fas fa-microphone"></i><a href="tel:23055873407">+{{ $setting->support_phone }}</a></li>
        <li><i class="fas fa-envelope"></i><a href="mailto:info@example.com">{{ $setting->email }}</a></li>
    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="auto-container">
                    <div class="inner-box clearfix">
                        <figure class="footer-logo"><a href="{{ url('/') }}"><img src="{{ asset('frontend/assets/images/footer-logo.png') }}" alt=""></a></figure>
                        <div class="copyright pull-left">
                            <p>{{ $setting->copyright }}</p>
                        </div>
                        <ul class="footer-nav pull-right clearfix">
                            <li>Terms of Service</li>
                            <li>Privacy Policy</li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>