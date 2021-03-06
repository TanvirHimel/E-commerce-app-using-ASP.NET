﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="E_Commerce.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-Commerce Site</title>

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/Custom.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span><img src="Icons/images.jpg" alt="Shopperzz World" height="30"/></span>Shopperzz World</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contuct Us</a></li>
                            <li><a href="#">Blog</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header">Men</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Shirts</a></li>
                                    <li><a href="#">Pants</a></li>
                                    <li><a href="#">Denims</a></li>
                                    <li role="separator" class="divider"></li>

                                    <li class="dropdown-header">Women</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Top</a></li>
                                    <li><a href="#">Leggings</a></li>
                                    <li><a href="#">Denims</a></li>
                                </ul>
                            </li>
                            <li><a href="SignUp.aspx">Sign Up</a></li>
                            <li><a href="SignIn.aspx">Sign In</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <!---Image Slider Start--->

            <div class="container">
                <h2>Carousel Example</h2>  
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                     <div class="item active">
                        <img src="ImgSlider/one.jpg" alt="Los Angeles" style="width:100%; height:440px;"/>
                         <div class="carousel-caption">
                            <h1>FashionWear</h1>
                            <h3>Men's & Women's Fasionwear</h3>
                             <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
                         </div>
                     </div>

                     <div class="item">
                        <img src="ImgSlider/two.jpg" alt="Chicago" style="width:100%; height:440px;"/>
                         <div class="carousel-caption">
                            <h1>Man's Collection</h1>
                            <h3>Man's Fashionable Collection</h3>
                             <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
                         </div>
                     </div>
    
                    <div class="item">
                        <img src="ImgSlider/three.png" alt="New york" style="width:100%; height:440px;"/>
                        <div class="carousel-caption">
                            <h1>Women's Collection</h1>
                            <h3>Women's Fashionable Collection</h3>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
                         </div>
                    </div>

                    <div class="item">
                        <img src="ImgSlider/four.jpg" alt="New york" style="width:100%; height:440px;"/>
                        <div class="carousel-caption">
                            <h1>Winter Collection</h1>
                            <h3>Men's & Women's Fashionable Winter Collection</h3>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
                         </div>
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
                </a>
                </div>
            </div>
            <!---Image Slider End--->
        </div>

        <!---Middle Section Start--->
        <hr />
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/mobile1.png" alt="thumb" width="140" height="140" />
                    <h2>Mobiles</h2>
                    <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse et eros sed urna porttitor euismod non ut justo. Quisque sed eros sem. Duis elit ante, viverra id libero sit amet, vulputate interdum velit. Etiam sollicitudin libero non diam mattis, eu viverra nisi aliquet. Praesent maximus lacus sed rhoncus dictum. Suspendisse congue hendrerit mattis. </p>
                    <p> <a class="btn btn-default" href="#" role="button">View More &raquo;</a> </p>
                </div>

                <div class="col-lg-4">
                    <img class="img-circle" src="Images/cloths1.jpg" alt="thumb" width="140" height="140" />
                    <h2>Clothwear</h2>
                    <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum nisi non velit varius ultricies. Integer gravida eros blandit sem auctor rutrum. Aliquam non scelerisque ipsum. Curabitur massa orci, pretium id luctus vitae, tempor sit amet mauris. Nam tincidunt nisi mauris, non mollis lectus pellentesque nec. Duis eget augue lectus.</p>
                    <p> <a class="btn btn-default" href="#" role="button">View More &raquo;</a> </p>
                </div>

                <div class="col-lg-4">
                    <img class="img-circle" src="Images/shoes1.png" alt="thumb" width="140" height="140" />
                    <h2>Shoes</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum nisi non velit varius ultricies. Integer gravida eros blandit sem auctor rutrum. Aliquam non scelerisque ipsum. Curabitur massa orci, pretium id luctus vitae, tempor sit amet mauris. Nam tincidunt nisi mauris, non mollis lectus pellentesque nec.</p>
                    <p> <a class="btn btn-default" href="#" role="button">View More &raquo;</a> </p>
                </div>
            </div>
        </div>

        <!---Middle Section Ends--->

        <!---Footer Section Starts--->

        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>
                    &copy; 2020 TH.in &middot; 
                    <a href="Default.aspx">Home</a>&middot
                    <a href="#">About</a>&middot;
                    <a href="#">Contact</a>&middot;
                    <a href="#">Products</a>&middot;
                </p>
            </div>
        </footer>

        <!---Footer Section Ends--->
    </form>
</body>
</html>
