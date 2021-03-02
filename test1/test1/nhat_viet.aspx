<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nhat_viet.aspx.cs" Inherits="test1.nhat_viet" %>


<!DOCTYPE html>

<html>
<head runat="server">
     <title>Su hào </title>
     <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="jquery.min.js" type="text/javascript"></script>
    <script src="jquery-ui.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".autosuggest").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json;charset=utf-8",
                        url: "nhat_viet.aspx/GetAutoCompleteData",
                        data: "{'username':'" + document.getElementById('txtSearch').value + "'}",
                        //data: "{'username1':'" + document.getElementById('txtSearch').value + "'}",
                        dataType: "json",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert("Error");
                        }
                    });
                }
            });
        });

    </script>
       
        <style type="text/css">
svg:not(:root).svg-inline--fa{overflow:visible}.svg-inline--fa{display:inline-block;font-size:inherit;height:1em;overflow:visible;vertical-align:-.125em}.svg-inline--fa.fa-lg{vertical-align:-.225em}.svg-inline--fa.fa-w-1{width:.0625em}.svg-inline--fa.fa-w-2{width:.125em}.svg-inline--fa.fa-w-3{width:.1875em}.svg-inline--fa.fa-w-4{width:.25em}.svg-inline--fa.fa-w-5{width:.3125em}.svg-inline--fa.fa-w-6{width:.375em}.svg-inline--fa.fa-w-7{width:.4375em}.svg-inline--fa.fa-w-8{width:.5em}.svg-inline--fa.fa-w-9{width:.5625em}.svg-inline--fa.fa-w-10{width:.625em}.svg-inline--fa.fa-w-11{width:.6875em}.svg-inline--fa.fa-w-12{width:.75em}.svg-inline--fa.fa-w-13{width:.8125em}.svg-inline--fa.fa-w-14{width:.875em}.svg-inline--fa.fa-w-15{width:.9375em}.svg-inline--fa.fa-w-16{width:1em}.svg-inline--fa.fa-w-17{width:1.0625em}.svg-inline--fa.fa-w-18{width:1.125em}.svg-inline--fa.fa-w-19{width:1.1875em}.svg-inline--fa.fa-w-20{width:1.25em}.svg-inline--fa.fa-pull-left{margin-right:.3em;width:auto}.svg-inline--fa.fa-pull-right{margin-left:.3em;width:auto}.svg-inline--fa.fa-border{height:1.5em}.svg-inline--fa.fa-li{width:2em}.svg-inline--fa.fa-fw{width:1.25em}.fa-layers svg.svg-inline--fa{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.fa-layers{display:inline-block;height:1em;position:relative;text-align:center;vertical-align:-.125em;width:1em}.fa-layers svg.svg-inline--fa{-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter,.fa-layers-text{display:inline-block;position:absolute;text-align:center}.fa-layers-text{left:50%;top:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%);-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter{background-color:#ff253a;border-radius:1em;-webkit-box-sizing:border-box;box-sizing:border-box;color:#fff;height:1.5em;line-height:1;max-width:5em;min-width:1.5em;overflow:hidden;padding:.25em;right:0;text-overflow:ellipsis;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-bottom-right{bottom:0;right:0;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom right;transform-origin:bottom right}.fa-layers-bottom-left{bottom:0;left:0;right:auto;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom left;transform-origin:bottom left}.fa-layers-top-right{right:0;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-top-left{left:0;right:auto;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top left;transform-origin:top left}.fa-lg{font-size:1.3333333333em;line-height:.75em;vertical-align:-.0667em}.fa-xs{font-size:.75em}.fa-sm{font-size:.875em}.fa-1x{font-size:1em}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-6x{font-size:6em}.fa-7x{font-size:7em}.fa-8x{font-size:8em}.fa-9x{font-size:9em}.fa-10x{font-size:10em}.fa-fw{text-align:center;width:1.25em}.fa-ul{list-style-type:none;margin-left:2.5em;padding-left:0}.fa-ul>li{position:relative}.fa-li{left:-2em;position:absolute;text-align:center;width:2em;line-height:inherit}.fa-border{border:solid .08em #eee;border-radius:.1em;padding:.2em .25em .15em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left,.fab.fa-pull-left,.fal.fa-pull-left,.far.fa-pull-left,.fas.fa-pull-left{margin-right:.3em}.fa.fa-pull-right,.fab.fa-pull-right,.fal.fa-pull-right,.far.fa-pull-right,.fas.fa-pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}.fa-rotate-90{-webkit-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-webkit-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-webkit-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-webkit-transform:scale(-1,1);transform:scale(-1,1)}.fa-flip-vertical{-webkit-transform:scale(1,-1);transform:scale(1,-1)}.fa-flip-both,.fa-flip-horizontal.fa-flip-vertical{-webkit-transform:scale(-1,-1);transform:scale(-1,-1)}:root .fa-flip-both,:root .fa-flip-horizontal,:root .fa-flip-vertical,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-rotate-90{-webkit-filter:none;filter:none}.fa-stack{display:inline-block;height:2em;position:relative;width:2.5em}.fa-stack-1x,.fa-stack-2x{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.svg-inline--fa.fa-stack-1x{height:1em;width:1.25em}.svg-inline--fa.fa-stack-2x{height:2em;width:2.5em}.fa-inverse{color:#fff}.sr-only{border:0;clip:rect(0,0,0,0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.sr-only-focusable:active,.sr-only-focusable:focus{clip:auto;height:auto;margin:0;overflow:visible;position:static;width:auto}.svg-inline--fa .fa-primary{fill:var(--fa-primary-color,currentColor);opacity:1;opacity:var(--fa-primary-opacity,1)}.svg-inline--fa .fa-secondary{fill:var(--fa-secondary-color,currentColor);opacity:.4;opacity:var(--fa-secondary-opacity,.4)}.svg-inline--fa.fa-swap-opacity .fa-primary{opacity:.4;opacity:var(--fa-secondary-opacity,.4)}.svg-inline--fa.fa-swap-opacity .fa-secondary{opacity:1;opacity:var(--fa-primary-opacity,1)}.svg-inline--fa mask .fa-primary,.svg-inline--fa mask .fa-secondary{fill:#000}.fad.fa-inverse{color:#fff}
            </style>
        <meta name="msapplication-TileImage" content="http://hiepsiit.com/img/web/shield128.png">
        <meta name="theme-color" content="#ffffff">
    <script src="./su hao/osd.js.download"></script><script src="./su hao/f.txt"></script><script src="./su hao/f(1).txt" id="google_shimpl"></script><script src="./su hao/config.navbar-vertical.min.js.download"></script>
        <link href="./su hao/theme.min.css" rel="stylesheet">
        <link href="./su hao/w3.css" rel="stylesheet">	
	<script data-ad-client="ca-pub-9669427503865469" async="" src="./su hao/f(2).txt" data-checked-head="true"></script>
        <link href="./su hao/owl.carousel.css" rel="stylesheet">
    
       
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="./su hao/js"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'G-5E5TQS6R26');
</script>
        <link rel="preload" href="./su hao/f(3).txt" as="script"><script type="text/javascript" src="./su hao/f(3).txt"></script>
        <link rel="preload" href="./su hao/f(4).txt" as="script"><script type="text/javascript" src="./su hao/f(4).txt"></script></head>

 
</head>
<body>
  
<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WV79SVB"
height="0" width="0" style="display:none;visibility:hidden"></iframe>
                </noscript>
<!-- End Google Tag Manager (noscript) -->
                <main class="main">
                <div class="container-fluid" data-layout="container">
                    <nav class="navbar navbar-light navbar-glass navbar-top sticky-kit navbar-expand-lg" style="width: 1349px;">
                        <button class="btn navbar-toggler-humburger-icon navbar-toggler mr-1 mr-sm-3" type="button" data-toggle="collapse" data-target="#navbarStandard" aria-controls="navbarStandard" aria-expanded="false" aria-label="Toggle Navigation">
                            <svg class="svg-inline--fa fa-bars fa-w-14" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="bars" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="">
                                <path fill="currentColor" d="M16 132h416c8.837 0 16-7.163 16-16V76c0-8.837-7.163-16-16-16H16C7.163 60 0 67.163 0 76v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16z">
                                </path>
                            </svg>
                            <!-- <span class="fas fa-bars"></span> -->
                        </button>
                        <a class="navbar-brand mr-1 mr-sm-3" href="#">
                        <div class="d-flex align-items-center">
                            <img class="mr-2" src="./image/128405432_3865621896782902_6171477215274771981_n.png" alt="logo" width="40">&nbsp;
                        </div>
                        </a>
                        <div class="collapse navbar-collapse" id="navbarStandard">
                            <ul class="navbar-nav hover">
                                <li class="nav-item"><a class="nav-link text-uppercase " href="./WebForm1.aspx">Khóa Học</a> </li>
                                <li class="nav-item"><a class="nav-link text-uppercase " href="#">Mẹo vặt</a> </li>
                                <li class="nav-item"><a class="nav-link text-uppercase " href="#">Lịch thi</a> </li>
                                <li class="nav-item"><a class="nav-link text-uppercase " href="./viet_nhat.aspx">Việt - Nhật</a> </li>
                                <li class="nav-item"><a class="nav-link text-uppercase " href="./nhat_viet.aspx">Nhật - VIệt</a> </li>
                               
                            </ul>
                        </div>
                        <ul class="navbar-nav navbar-nav-icons ml-auto flex-row align-items-center">
                            <li class="nav-item dropdown dropdown-on-hover" id="search-popup"><a class="nav-link pr-2" data-toggle="modal" data-target="#modalSearch">
                                <svg class="svg-inline--fa fa-search fa-w-16" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                    <path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z">
                                    </path>
                                </svg>
                                <!-- <span class="fas fa-search"></span> -->
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-card" aria-labelledby="navbarDropdownSearch">
                                    <div class="card card-notification shadow-none" style="max-width: 20rem">
                                        <div class="card-body">
                                            <form class="form-inline search-box" action="#" method="POST">
                                                <input type="hidden" name="_token" value="QblYzxY4Z2GugOnG4mqfkvnRreuIG6H7tIn0rMYU">
                                                <input class="form-control rounded-pill search-input" name="search" type="search" placeholder="Tìm kiếm..." aria-label="Search">
                                                <svg class="svg-inline--fa fa-search fa-w-16 position-absolute text-400 search-box-icon" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                                    <path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z">
                                                    </path>
                                                </svg>
                                                <!-- <span class="position-absolute fas fa-search text-400 search-box-icon"></span> -->
                                                <button type="submit" class="d-none">
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item dropdown dropdown-on-hover" id="search-inline">
                                <form class="form-inline search-box" action="#" method="POST">
                                    <input type="hidden" name="_token" value="QblYzxY4Z2GugOnG4mqfkvnRreuIG6H7tIn0rMYU">
                                    <input class="form-control form-control-sm rounded-pill search-input" name="search" type="search" placeholder="Tìm kiếm..." aria-label="Search">
                                    <svg class="svg-inline--fa fa-search fa-w-16 position-absolute text-400 search-box-icon" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                        <path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z">
                                        </path>
                                    </svg>
                                    <!-- <span class="position-absolute fas fa-search text-400 search-box-icon"></span> -->
                                    <button type="submit" class="d-none">
                                    </button>
                                </form>
                            </li>
                            <li class="nav-item"><a class="nav-link pr-2" href="#">Đăng nhập</a> </li>
                        </ul>
                    </nav>
     <!-- END CONTENT HERE -->
                                <footer class="w-100 px-3 pb-3">
                                    
                                    <form id="form1" runat="server">
        <div>



            <label><span style="color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(228, 230, 235); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">単語を入力してください</span>: </label>
            <asp:TextBox runat="server" ID="txtSearch" CssClass="autosuggest"></asp:TextBox>
              <asp:Button ID="btntim" runat="server" OnClick="btntim_Click" Text="Tìm" />
        </div>
                                        <div>
                                            <asp:GridView ID="grtim" runat="server" AutoGenerateColumns="False" DataKeyNames="HiraganaID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="HiraganaID" HeaderText="HiraganaID" InsertVisible="False" ReadOnly="True" SortExpression="HiraganaID" />
                        <asp:BoundField DataField="HiraWord" HeaderText="HiraWord" SortExpression="HiraWord" />
                        <asp:BoundField DataField="KanjiWord" HeaderText="KanjiWord" SortExpression="KanjiWord" />
                        <asp:BoundField DataField="MeanWord" HeaderText="MeanWord" SortExpression="MeanWord" />
                        <asp:BoundField DataField="Bai" HeaderText="Bai" SortExpression="Bai" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [Word] WHERE ([HiraWord] = @HiraWord)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="HiraWord" QueryStringField="HiraWord" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                                        </div>
    </form>
                    </footer>
                </div>
                </div>
                </main>
                <a id="top"></a><a id="down"></a>
    <script src="./su hao/jquery.min.js.download"></script>
    <script src="./su hao/popper.min.js.download"></script>
    <script src="./su hao/bootstrap.min.js.download"></script>
    <script src="./su hao/all.min.js.download"></script>
    <script src="./su hao/is.min.js.download"></script>
    <script src="./su hao/theme.min.js.download"></script>
    <script>
        var toparr = $('#top');
        var downarr = $('#down');
        $(window).scroll(function () {
            if ($(window).scrollTop() > 100) {
                toparr.addClass('show');
                downarr.addClass('show');
            } else {
                toparr.removeClass('show');
                downarr.removeClass('show');
            }
        });

        toparr.on('click', function (e) {
            e.preventDefault();
            $('html, body').animate({
                scrollTop: 0
            }, '1000');
        });

        downarr.on('click', function (e) {
            e.preventDefault();
            $('html, body').animate({
                scrollTop: $(document).height()
            }, '1000');
        });
    </script>
    <script src="./su hao/owl.carousel.js.download"></script>
<script>
    $(".owl-carousel").owlCarousel({
        items: 1,
        margin: 0,
        nav: true,
        autoplay: true,
        loop: false,
        dots: false,
        responsive: {
            576: {
                items: 2
            },
            768: {
                items: 3
            },
            992: {
                items: 4
            }
        },
    });
</script>


                <ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" style="display: none !important;"><ins id="aswift_0_expand" style="display:inline-table;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;" tabindex="0" title="Advertisement" aria-label="Advertisement"><ins id="aswift_0_anchor" style="display:block;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;">
                <iframe id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;border:0;width:undefinedpx;height:undefinedpx;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" frameborder="0" src="./su hao/ads.html" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id="a!0" data-load-complete="true"></iframe>
                </ins></ins></ins>
                <iframe id="google_osd_static_frame_3242731290086" name="google_osd_static_frame" style="display: none; width: 0px; height: 0px;" src="./su hao/saved_resource.html"></iframe>

        </div>
    </form>
</body>
    <iframe id="google_esf" name="google_esf" src="./su hao/zrt_lookup.html" data-ad-client="ca-pub-9669427503865469" style="display: none;"></iframe></html>
 
</html>
