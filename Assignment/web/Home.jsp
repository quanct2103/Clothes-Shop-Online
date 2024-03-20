<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" /> 
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700&display=swap"> 
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css"> 
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
        <style>

            #introCarousel,
            .carousel-inner,
            .carousel-item,
            .carousel-item.active {
                height: 100vh;
            }

            .carousel-item:nth-child(1) {
                background-image: url('https://im.uniqlo.com/global-cms/spa/res6782405c9ad2e09bf93ddbaff8ff102dfr.jpg');
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-position: center center;
            }

            .carousel-item:nth-child(2) {
                background-image: url('https://owlbrand.vn/wp-content/uploads/2022/12/BANNER-DESKTOP-copy-1837x790.jpg');
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-position: center center;
            }

            .carousel-item:nth-child(3) {
                background-image: url('https://static.zara.net/photos///contents/mkt/spots/aw23-north-man-jeans/subhome-xmedia-39//w/1920/IMAGE-landscape-fill-c1024590-4efd-47ff-9a65-c93b5a42e3be-default_0.jpg?ts=1695986303931');
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-position: center center;
            }


            @media (min-width: 992px) {
                #introCarousel {
                    margin-top: -58.59px;
                }
            }

            .navbar .nav-link {
                color: #fff !important;
            }
        </style>

    </head>
    <body class="skin-light" onload="loadAmountCart()">
        <jsp:include page="Menu.jsp"></jsp:include>

            <div id="introCarousel" class="carousel slide carousel-fade shadow-2-strong" data-mdb-ride="carousel" style="margin-top:35px;">

                <ol class="carousel-indicators">
                    <li data-mdb-target="#introCarousel" data-mdb-slide-to="0" class="active"></li>
                    <li data-mdb-target="#introCarousel" data-mdb-slide-to="1"></li>
                    <li data-mdb-target="#introCarousel" data-mdb-slide-to="2"></li>
                </ol>

                <div class="carousel-inner">     
                    <div class="carousel-item active">
                    </div>

                    <div class="carousel-item">
                    </div>

                    <div class="carousel-item">
                    </div>
                </div>

                <a class="carousel-control-prev" href="#introCarousel" role="button" data-mdb-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#introCarousel" role="button" data-mdb-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <div class="card-group" style="margin-top:50px;">
                <div class="card" style="border-style: none;">
                    <img style="height:55px; width:64px; margin: auto;" src="https://baabrand.com/wp-content/uploads/2018/12/icon-logo-van-tai-1.jpg">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align:center">GIAO HÀNG TOÀN QUỐC</h5>
                        <p class="card-text" style="text-align:center">Vận chuyển khắp Việt Nam</p>
                    </div>
                </div>
                <div class="card" style="border-style: none;">
                    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="https://hebo.vn/library/module_new/chinh-sach-thanh-toan-giao-nhan_s3072.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align:center">THANH TOÁN KHI NHẬN HÀNG</h5>
                        <p class="card-text" style="text-align:center">Nhận hàng tại nhà rồi thanh toán</p>
                    </div>
                </div>
                <div class="card" style="border-style: none;">
                    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="https://anphattechnic.com/upload/baiviet/banh-ranglogo1-3607.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align:center">BẢO HÀNH DÀI HẠN</h5>
                        <p class="card-text" style="text-align:center">Bảo hành lên đến 60 ngày</p>
                    </div>
                </div>
                <div class="card" style="border-style: none;">
                    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="https://png.pngtree.com/png-clipart/20230425/original/pngtree-return-box-flat-icon-png-image_9096234.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align:center">ĐỔI HÀNG DỄ DÀNG</h5>
                        <p class="card-text" style="text-align:center">Đổi hàng thoải mái trong 30 ngày</p>
                    </div>
                </div>
            </div>

            <div class="container">

                <div class="row" style="margin-top:25px">            
                    <h1 style="text-align:center; width:100%" id="moiNhat">SẢN PHẨM MỚI NHẤT</h1>
                    <div class="col-sm-12">
                        <div id="contentMoiNhat" class="row">
                        <c:forEach items="${list4Last}" var="o">
                            <div class=" col-12 col-md-6 col-lg-3">
                                <div class="card">
                                    <div class="view zoom z-depth-2 rounded">
                                        <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">

                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price} VNĐ</p>
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>

            <div class="row" style="margin-top:25px">            
                <h1 style="text-align:center; width:100%" id="uniqlo">SẢN PHẨM UNIQLO MỚI NHẤT</h1>
                <div class="col-sm-12">
                    <div id="contentUniqlo" class="row">
                        <c:forEach items="${list4UniqloLast}" var="o">
                            <div class="productUniqlo col-12 col-md-6 col-lg-3">
                                <div class="card">
                                    <div class="view zoom z-depth-2 rounded">
                                        <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price} VNĐ</p>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <button onclick="loadMoreUniqlo()" class="btn btn-primary">Load more</button>
                </div>
            </div>

            <div class="row" style="margin-top:25px">            
                <h1 style="text-align:center; width:100%" id="boo">SẢN PHẨM BOO MỚI NHẤT</h1>
                <div class="col-sm-12">
                    <div id="contentBoo" class="row">
                        <c:forEach items="${list4BooLast}" var="o">
                            <div class="productBoo col-12 col-md-6 col-lg-3">
                                <div class="card">
                                    <div class="view zoom z-depth-2 rounded">
                                        <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price} VNĐ</p>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <button onclick="loadMoreBoo()" class="btn btn-primary">Load more</button>
                </div>
            </div>

            <div class="row" style="margin-top:50px">            
                <div class="col-sm-12">
                    <div id="content" class="row">
                        <div class=" col-12 col-md-12 col-lg-6">
                            <div class="card-body">
                                <h4 class="card-title show_txt" style="text-align:center; font-size:18pt; color:#b57b00;">Về chúng tôi</h4>
                                <h2 class="card-title show_txt" style="text-align:center; font-size:24pt;">Men Clothes Shop</h2>
                                <p style="text-align:center;">Uy tín lâu năm chuyên cung cấp quần áo nam, nữ hàng Replica 1:1 - 
                                    Like Auth với chất lượng đảm bảo và giá tốt nhất tại Hà Nội.</p>
                                <p>Bạn đang cần tìm quần áo đẹp và hợp thời trang và đang hot Trends 
                                    đến từ các thương hiệu lớn nhưng lại không đủ hầu bao để sắm được hàng chính hãng? 
                                    Hãy đến với MenClothesShop – nơi bạn thỏa lòng mong ước mà chỉ phải chi ra 1 phần nhỏ so với dòng chính hãng ngoài store 
                                    mà vẫn sắm cho mình được những bộ quần áo chất lượng từ rep 1:1 đến siêu cấp like auth.</p>                  
                            </div>  
                        </div>
                        <div class=" col-12 col-md-12 col-lg-6">
                            <img class="card-img-top" src="https://lh5.googleusercontent.com/n4Pb9SE_ilrmNDlZxosZGNDHpHBsw-zY9eivqAVb0aEj2NIgfZJuLi-AAzNrn29rmWNkvc2G7fwIfwd-nMncRRHHKUyFRimzpIf8N7a4oOV2dU7LtpxCXT5C7A-DcK7UP1WTOjwSeSfnlCmpmcCSmVt6mxN8pa1v70GfPmQbJj4q1DlETMwz8jvzuTmPGtzI" alt="Card image cap">        
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <jsp:include page="Footer.jsp"></jsp:include>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
                        function loadMoreUniqlo() {
                            var amountUniqlo = document.getElementsByClassName("productUniqlo").length;
                            $.ajax({
                                url: "/assign/loadUniqlo",
                                type: "get",
                                data: {
                                    exitsUniqlo: amountUniqlo
                                },
                                success: function (dataUniqlo) {
                                    document.getElementById("contentUniqlo").innerHTML += dataUniqlo;

                                },
                                error: function (xhr) {

                                }
                            });
                        }
                        function loadMoreBoo() {
                            var amountBoo = document.getElementsByClassName("productBoo").length;
                            $.ajax({
                                url: "/assign/loadBoo",
                                type: "get",
                                data: {
                                    exitsBoo: amountBoo
                                },
                                success: function (dataBoo) {
                                    document.getElementById("contentBoo").innerHTML += dataBoo;

                                },
                                error: function (xhr) {

                                }
                            });
                        }

                        function loadAmountCart() {
                            $.ajax({
                                url: "/assign/loadAmountCart",
                                type: "get",
                                data: {

                                },
                                success: function (responseData) {
                                    document.getElementById("amountCart").innerHTML = responseData;
                                }
                            });
                        }
        </script>  

        <script src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
    </body>
</html>

