<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Admin</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css">

        <style>
            body {
                margin: 0;
                padding: 0;
            }
        </style>
        <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css"><link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap"><link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb5/3.8.1/compiled.min.css"><link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb-plugins-gathered.min.css"><style>body {
                background-color: #fbfbfb;
            }
            @media (min-width: 991.98px) {
                main {
                    padding-left: 240px;
                }
            }

            .sidebar {
                position: fixed;
                top: 0;
                bottom: 0;
                left: 0;
                padding: 58px 0 0;
                box-shadow: 0 2px 5px 0 rgb(0 0 0 / 5%), 0 2px 10px 0 rgb(0 0 0 / 5%);
                width: 240px;
                z-index: 600;
            }

            @media (max-width: 991.98px) {
                .sidebar {
                    width: 100%;
                }
            }
            .sidebar .active {
                border-radius: 5px;
                box-shadow: 0 2px 5px 0 rgb(0 0 0 / 16%), 0 2px 10px 0 rgb(0 0 0 / 12%);
            }

            .sidebar-sticky {
                position: relative;
                top: 0;
                height: calc(100vh - 48px);
                padding-top: 0.5rem;
                overflow-x: hidden;
                overflow-y: auto;
            }</style>
    </head>
    <body>

        <header>
            <jsp:include page="Menu1.jsp"></jsp:include>
            <jsp:include page="LeftAdmin.jsp"></jsp:include>

            </header>

            <main style="margin-top: 50px">
                <div class="container pt-4">

                    <section>
                        <div class="row" id="total">
                            <div class="col-xl-6 col-md-12 mb-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between p-md-1">
                                            <div class="d-flex flex-row">
                                                <div class="align-self-center">
                                                    <i class="fas fa-pencil-alt text-info fa-3x me-4"></i>
                                                </div>
                                                <div>
                                                    <h4>Total Products</h4>
                                                    <p class="mb-0"></p>
                                                </div>
                                            </div>
                                            <div class="align-self-center">
                                                <h2 class="h1 mb-0">${allProduct }</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-md-12 mb-4">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between p-md-1">
                                        <div class="d-flex flex-row">
                                            <div class="align-self-center">
                                                <i
                                                    class="far fa-comment-alt text-warning fa-3x me-4"
                                                    ></i>
                                            </div>
                                            <div>
                                                <h4>Total Comments</h4>
                                                <p class="mb-0"></p>
                                            </div>
                                        </div>
                                        <div class="align-self-center">
                                            <h2 class="h1 mb-0">${allReview }</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-6 col-md-12 mb-4">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between p-md-1">
                                        <div class="align-self-center">
                                            <i class="far fa-heart text-danger fa-3x"></i>
                                        </div>
                                        <div class="d-flex flex-row">
                                            <div>
                                                <h4>Total Sales</h4>
                                                <p class="mb-0"></p>
                                            </div>
                                            <div class="align-self-center">
                                                <h2 class="h1 mb-0 me-4">${sumAllInvoice } VNĐ</h2>
                                            </div>
                                        </div>      
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </section>

            </div>
        </main>

        <script src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
        <script src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Free_3.8.1/js/mdb.min.js"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>      
        <script type="text/javascript" src="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/js/plugins/mdb-plugins-gathered.min.js"></script>

    </body>
</html>