
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page ="Menu.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="home">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Category</a></li>
                                <li class="breadcrumb-item active" aria-current="#">Sub-category</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
            <!--        Hien thi ra category-->
            <div class="container">
                <div class="row">
                <jsp:include page="Left.jsp"></jsp:include>

                    <div class="col-sm-9"  >
                        <div class="row" >
                        <c:forEach items="${listP}" var="o">
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card" >
                                    <img class="card-img-top" src="img/${o.image}" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-danger btn-block">${o.price} $</p>
                                            </div>
                                            <style>


                                                .card-body {
                                                    display: flex;
                                                    flex-direction: column;
                                                    justify-content: space-between;
                                                    height: 100%;
                                                }

                                                .card-text {
                                                    margin-bottom: 10px; /* Để tạo khoảng cách giữa "Price" và "Add to cart" */
                                                }
                                                .btn-danger.btn-block {
                                                    width: 213px; /* Đặt chiều rộng cố định cho tất cả các ô giá */
                                                }
                                                .card-img-top {
                                                    width: 100%; /* Đặt chiều rộng cố định cho tất cả ảnh */
                                                    height: 200px; /* Đặt chiều cao cố định cho tất cả ảnh */
                                                    object-fit: cover; /* Đảm bảo ảnh bao phủ toàn bộ khu vực */
                                                }
                                                .card-title {
                                                    min-height: 60px; /* Đặt chiều cao tối thiểu cho tên sản phẩm (điều chỉnh theo nhu cầu của bạn) */
                                                    display: -webkit-box;
                                                    -webkit-line-clamp: 2; /* Số dòng hiển thị tối đa */
                                                    -webkit-box-orient: vertical;
                                                    overflow: hidden;
                                                    text-overflow: ellipsis; /* Hiển thị dấu ba chấm (...) nếu nội dung quá dài */
                                                }
                                            </style>
                                            <c:if test="${sessionScope.acc.isSell==1 || sessionScope.acc.isAdmin==1}" >
                                                <div class="col">
                                                    <a href="edit?pid=${o.id}&back=home" class="btn btn-success btn-block">Edit Product</a>
                                                </div>
                                            </c:if>
                                            <c:if test="${sessionScope.acc.isSell!=1 && sessionScope.acc.isAdmin!=1}" >
                                                <div class="col">
                                                    <form action="cart" method="POST">
                                                        <input class="btn btn-success btn-block" type="submit" value="Add to cart">
                                                        <input type="hidden" value="${o.id}" name="id">
                                                        
                                                    </form>
                                                </div>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

            </div>
        </div>

        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>

