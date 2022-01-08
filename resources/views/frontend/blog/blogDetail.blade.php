@extends('frontend.layouts.default')

@section('content')
    <div id="breadcrumbs" class="flexbox-container ">
        <div class="breadcrumb-inner">
            <div class="container">
                <nav class="breadcrumb" role="navigation" aria-label="breadcrumbs">
                    <a href="{{ asset('/') }}" title="general.breadcrumbs.home_link_title">Trang chủ /</a>
                    <span class="revicon-angle-right"></span>
                    <a href="{{ route('blogs') }}" title="">Bài viết</a>
                    <span class="revicon-angle-right"></span>/ 
                    <span>{{ $title }}</span>
                </nav>
            </div>
        </div>
    </div>

    <!-- Blog Post __________________________ -->
    <section class="blog_container blog_container_deatils_leftbar" id="blog-post">
        <div class="container">
            <div class="row">
                <!-- .blog-content -->
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 blog-content">
                    <!-- article -->
                    <article>
                        <div class="post-meta clear-fix">
                            <div class="post-date">
                                <ul>
                                    <li><span><i class="fa fa-calendar"
                                                 aria-hidden="true"></i></span> {{ date_format($blog->created_at,"d/m/Y H:i:s") }}
                                    </li>
                                    {{-- <li><span><i class="fa fa-user" aria-hidden="true"></i></span> Admin</li>
                                    <li><span><i class="fa fa-tag" aria-hidden="true"></i></span><a href=""></a></li> --}}
                                </ul>
                            </div>
                            <div class="post-title">
                                <h2 title="CÁCH LÀM SẠCH SÀN ĐÁ CỰC KỲ HIỆU QUẢ">{{ $title }}</h2>
                            </div>
                        </div>
                    {!! $blog->body !!}
                    <!-- .shear-area -->
                    </article> <!-- /article -->
                    {{-- <!-- Go to www.addthis.com/dashboard to customize your tools -->
                    <script type="text/javascript"
                            src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-59ce0d58b01d5681"></script>
                    <!-- Go to www.addthis.com/dashboard to customize your tools --> --}}
                    <div class="addthis_inline_share_toolbox_0nzc"></div>

                </div> <!-- /.blog-content -->
                <!-- ======================== Blog Sidebar ==================== -->
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 blog_content_left blog_sidebar">


                    <div class="recent_blog">
                        <h4>Bài đăng mới</h4>
                        @if($recentPost)
                            @foreach($recentPost as $key=>$rep)
                        <div class="recent_blog_single_item clear-fix">
                            <div class="img-content float-left">
                                <img style="width: 100%;" loading="lazy"
                                    src="{{ Voyager::image( $rep->thumbnail('cropped')) }}"
                                    alt="{{ $rep->title }}">
                            </div>
                            <div class="text float-left">
                                <a href="{{ route('blog.detail', $rep->slug) }}">{{ $rep->title }}</a>
                                <p>{{ date_format($rep->created_at,"d/m/Y") }}</p>
                            </div>
                        </div>
                            @endforeach
                        @endif
                    </div> <!-- end recent_blog -->

                    <div class="recent_blog">
                        <h4>Danh mục</h4>
                        @if($categories)
                            @foreach( $categories as $key=>$category)
                                <div class="recent_blog_single_item clear-fix">
                                    <div class="text float-left">
                                        <a href="{{ route('category', $category->id) }}"> {{ $category->name }} <span>({{ $category->posts_count }})</span></a>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                    </div> <!-- end recent_blog -->

                </div> <!-- End blog_sidebar -->
            </div>
        </div>
    </section>

@endsection
