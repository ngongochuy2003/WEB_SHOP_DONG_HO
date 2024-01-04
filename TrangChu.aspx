<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="carouselExampleControls" class="carousel slide animated bounce" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="Images/slide1.jpg" alt="First slide" />
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="Images/slide2.jpg" alt="Second slide" />
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="Images/slide3.jpg" alt="Third slide" />
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="container_custom pb-5">
        <h2 class="text-center title-product" data-aos="fade-down-left">Đồng hồ nam</h2>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" data-aos="flip-left" data-aos-easing="ease-out-cubic" data-aos-duration="2000">
            <ItemTemplate>
                <div class="product text-center">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ChiTiet.aspx?masp="+Eval("MaSP") %>'>
                        <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" ImageUrl='<%# "Images/"+Eval("Anh") %>' /><br />
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>' CssClass="fs-18 text-color"></asp:Label><br />
                        <span>Giá: </span>
                        <asp:Label ID="Label2" runat="server" Text='<%# String.Format("{0:0,0}",Eval("GiaBan")) %>'></asp:Label>
                        <span>VNĐ</span>
                    </asp:HyperLink>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div class="giftAndDiscountPrice">
        <div class="container_custom">
            <div class="row text-center">
                <div class="col-4" data-aos="fade-right" data-aos-duration="500">
                    <div class="row">
                        <div class="col-1">
                            <i class="fa fa-truck"></i>
                        </div>
                        <div class="col-11 text-left pl-5">
                            <h3>Miễn phí giao hàng</h3>
                            <span class="text-muted">Lorem ipsum dolor sit amet, consectetuer</span>
                        </div>
                    </div>
                </div>
                <div class="col-4" data-aos="fade-right" data-aos-duration="600">
                    <div class="row">
                        <div class="col-1">
                            <i class="fa fa-gift"></i>
                        </div>
                        <div class="col-11 text-left pl-5">
                            <h3>Quà Tặng Đặc Biệt</h3>
                            <span class="text-muted">Lorem ipsum dolor sit amet, consectetuer</span>
                        </div>
                    </div>
                </div>
                <div class="col-4" data-aos="fade-right" data-aos-duration="700">
                    <div class="row">
                        <div class="col-1">
                            <i class="fa fa-piggy-bank"></i>
                        </div>
                        <div class="col-11 text-left pl-5">
                            <h3>Tiết Kiệm Khi Mua Ở HuyNgo</h3>
                            <span class="text-muted">Lorem ipsum dolor sit amet, consectetuer</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container_custom py-5">
        <h2 class="text-center title-product" data-aos="fade-down-left">Đồng hồ nữ</h2>
        <asp:DataList ID="DataList2" runat="server" RepeatColumns="4" data-aos="flip-left" data-aos-easing="ease-out-cubic" data-aos-duration="2000">
            <ItemTemplate>
                <div class="product text-center">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "ChiTiet.aspx?masp="+Eval("MaSP") %>'>
                        <asp:Image ID="Image2" runat="server" Height="300px" Width="300px" ImageUrl='<%# "Images/"+Eval("Anh") %>' /><br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("TenSP") %>' CssClass="fs-18 text-color"></asp:Label><br />
                        <span>Giá: </span>
                        <asp:Label ID="Label4" runat="server" Text='<%# String.Format("{0:0,0}",Eval("GiaBan")) %>'></asp:Label>
                        <span>VNĐ</span>
                    </asp:HyperLink>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div class="banner">
        <div class="row w-100 m-0">
            <div class="col-md-6 px-0 container-banner" data-aos="flip-left">
                <div class="banner1">
                    <div class="title-banner" data-aos="fade-up">
                        <h3>Romance in the air</h3>
                        <h4>Wear your style with verve & attitude</h4>
                        <button type="button">Detail</button>
                    </div>
                </div>
            </div>
            <div class="col-md-6 px-0 container-banner" data-aos="flip-right">
                <div class="banner2">
                    <div class="title-banner" data-aos="fade-up">
                        <h3>Analog & Digital</h3>
                        <h4>Smart watches latest fashion statement</h4>
                        <button type="button">Detail</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container_custom py-5">
        <div class="more_infomation">
            <h2 class="text-center title-product" data-aos="fade-up-left">Thông tin hữu ích</h2>
            <div class="row">
                <div class="col-md-4" data-aos="flip-right" data-aos-duration="500">
                    <div class="container-info">
                        <div class="img-info">
                            <img src="Images/slide1.jpg" class="img-fluid" />
                        </div>
                        <h4 class="font-weight-bold title-information py-3">Duis luctus elit nisi, et cursus magna pellentesque non.</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus, massa non viverra</p>
                    </div>

                </div>
                <div class="col-md-4" data-aos="flip-right" data-aos-duration="600">
                    <div class="container-info">
                        <div class="img-info">
                            <img src="Images/slide2.jpg" class="img-fluid" />
                        </div>
                        <h4 class="font-weight-bold title-information py-3">Duis luctus elit nisi, et cursus magna pellentesque non.</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus, massa non viverra</p>
                    </div>
                </div>
                <div class="col-md-4" data-aos="flip-right" data-aos-duration="700">
                    <div class="container-info">
                        <div class="img-info">
                            <img src="Images/slide3.jpg" class="img-fluid" />
                        </div>
                        <h4 class="font-weight-bold title-information py-3">Duis luctus elit nisi, et cursus magna pellentesque non.</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus, massa non viverra</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

