@if ($paginator->hasPages())
    <ul class="pagination">
        {{-- Pagination Elements --}}
        @foreach ($elements as $element)
            {{-- "Three Dots" Separator --}}
            @if (is_string($element))
                <li class="hidden-phone">
                    <a class="disabled" aria-disabled="true"><span>{{ $element }}</span></a>
                </li>
            @endif

            {{-- Array Of Links --}}
            @if (is_array($element))
                @foreach ($element as $page => $url)
                    @if ($page == $paginator->currentPage())
                        <li class="hidden-phone current">
                            <a href=""><span class="page-numbers" aria-current="page">{{ $page }}</span></a>
                        </li>
                    @else
                        <li class="hidden-phone">
                            <a href="{{ $url }}" class="page-numbers">{{ $page }}</a>
                        </li>
                    @endif
                @endforeach
            @endif
        @endforeach
{{--        <ul class="pagination">--}}
{{--            <li class="hidden-phone current"><a title="1" href="" class="pagenav">1</a></li>--}}
{{--            <li class="hidden-phone"><a title="2" href="/blogs/news?page=2" class="pagenav">2</a></li>--}}
{{--            <li class="hidden-phone"><a title="3" href="/blogs/news?page=3" class="pagenav">3</a></li>--}}
{{--            <li><a title="Trang sau" href="/blogs/news?page=2" class="pagenav"><i class="fa fa-chevron-right"></i></a></li>--}}
{{--        </ul>--}}
        {{-- Next Page Link --}}
    </ul>

@endif
