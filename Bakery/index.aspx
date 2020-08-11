<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Bakery.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- start banner Area -->
    <section class="banner-area relative" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row fullscreen d-flex justify-content-center align-items-center">
                <div class="banner-content col-lg-10 col-md-12 justify-content-center">
                    <h6 class="text-uppercase">Whenever we bake, bake with our heart</h6>
                    <h1>Welcome to NoNODOCO Bakery			
                    </h1>
                    <p class="text-white mx-auto">
                        Since Americans in the South began roasting pigs pulicly, Barbecues have been a staple of North American living.
                    </p>                    
                </div>
            </div>
        </div>
    </section>
    <!-- End banner Area -->
    <!-- Start home-about Area -->
    
    <!-- End home-about Area -->
    <!-- Start item-category Area -->
    <section class="item-category-area section-gap">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-12 pb-80 header-text text-center">
                    <h1 class="pb-10">Best seller of mounth</h1>
                    <p>
                        They are grilling celebrities in their own right.
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="single-cat-item">
                        <div class="thumb">
                            <img class="img-fluid" src="img/piz-1.jpg" alt="">
                        </div>
                        <h3>Neapolitan Pizza</h3>            
                        <h4>Price: <b>150000</b></h4>
                        <p>
                            inappropriate behavior is often laughed off as “boys will be.
                        </p>
                        <asp:TextBox ID="TextBox4" runat="server" Height="20" Width="120"></asp:TextBox>
                        <div style="text-align:center; margin-top:20px;">
                            <asp:Button Height="30" Width="150" Font-Size="12" ID="Button4" runat="server" Text="Add to Cart" CssClass="btn btn-danger" CommandName="addtocart1" OnClick="Button4_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-cat-item">
                        <div class="thumb">
                            <img class="img-fluid" src="img/bread-1.jpg" alt="">
                        </div>
                        <h3>Ciabatta</h3>
                        <h4>Price: <b>50000</b></h4>
                        <p>
                            inappropriate behavior is often laughed off as “boys will be.
                        </p>
                        <asp:TextBox ID="TextBox5" runat="server" Height="20" Width="120"></asp:TextBox>
                        <div style="text-align:center; margin-top:20px;">
                            <asp:Button Height="30" Width="150" Font-Size="12" ID="Button5" runat="server" Text="Add to Cart" CssClass="btn btn-danger" CommandName="addtocart1" OnClick="Button5_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-cat-item">
                        <div class="thumb">
                            <img class="img-fluid" src="img/cookie-1.jpg" alt="">
                        </div>
                        <h3>AMARETTI </h3>
                        <h4>Price: <b>15000</b></h4>
                        <p>
                            inappropriate behavior is often laughed off as “boys will be.
                        </p>
                        <asp:TextBox ID="TextBox6" runat="server" Height="20" Width="120"></asp:TextBox>
                        <div style="text-align:center; margin-top:20px;">
                            <asp:Button Height="30" Width="150" Font-Size="12" ID="Button6" runat="server" Text="Add to Cart" CssClass="btn btn-danger" CommandName="addtocart1" OnClick="Button6_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-cat-item">
                        <div class="thumb">
                            <img class="img-fluid" src="img/cake-1.jpg" alt="">
                        </div>
                        <h3>Yellow Butter Cake</h3>
                        <h4>Price: <b>300000</b></h4>
                        <p>
                            inappropriate behavior is often laughed off as “boys will be.
                        </p>
                        <asp:TextBox ID="TextBox7" runat="server" Height="20" Width="120"></asp:TextBox>
                        <div style="text-align:center; margin-top:20px;">
                            <asp:Button Height="30" Width="150" Font-Size="12" ID="Button7" runat="server" Text="Add to Cart" CssClass="btn btn-danger" CommandName="addtocart1" OnClick="Button7_Click" />
                        </div>
                    </div>
                </div>
                <a class="primary-btn mx-auto mt-80" href="menu.aspx"><i class="fas fa-chevron-right"></i> Check Our Menu</a>
            </div>
        </div>
    </section>
    <!-- End item-category Area -->
    <!-- Start review Area -->
    <section class="review-area section-gap relative">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-9 pb-40 header-text text-center">
                    <h1 class="pb-10 text-white">Enjoy our Client’s Review</h1>
                    <p>
                        Who are in extremely love with eco friendly system.
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="active-review-carusel">
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Fannie Rowe</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Hulda Sutton</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Fannie Rowe</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Hulda Sutton</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Fannie Rowe</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Hulda Sutton</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Fannie Rowe</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                    <div class="single-review item">
                        <img src="img/r1.png" alt="">
                        <div class="title justify-content-start d-flex">
                            <a href="#">
                                <h4>Hulda Sutton</h4>
                            </a>
                            <div class="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <p>
                            Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End review Area -->
</asp:Content>
