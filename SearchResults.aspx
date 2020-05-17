<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchResults.aspx.cs" Inherits="SearchResults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/searchresultcss.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $("#icons").hide();
            $("#opener").click(function () {
                $("#icons").slideToggle("slow");
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid" style="background-image: url('images/21.jpg'); min-height: 700px; background-size: cover;">
            <div class="row" style="min-height: 100px; background: rgba(0,0,0,0.3); position: relative;">
                <div id="box">
                    <div id="icons">
                        <ul>
                                        <ul>
                        <li> <i class="glyphicon glyphicon-home"></i> <br />  <b class="text">Home</b> </li>
                         <li> <i class="glyphicon glyphicon-bookmark"></i> <br />  <b class="text">Bookmark</b> </li>
                        <li> <i class="glyphicon glyphicon-globe"></i> <br />  <b class="text">Social Media</b> </li>
                         <li> <i class="glyphicon glyphicon-time"></i> <br />  <b class="text">History</b> </li>
                        </ul>
                    </div>
                    <div id="opener" class="text-center">
                        <i class="glyphicon glyphicon-triangle-bottom" style="color: white; font-size: 30px;"></i>
                    </div>
                </div>
                <br /><br />
                <div class="col-sm-3 text-right ">
                    <div class="logo1">
                 
                    <span class="ch1">F</span> 
                    <span class="ch2">I</span>
                    <span class="ch3">N</span>
                    <span class="ch4">D</span>
                    <span class="ch5">E</span>
                    <span class="ch6">R</span>
                    </div>
                </div>
                <div class="col-sm-7">
                    <div class="form-group">
                        <asp:TextBox runat="server" ID="txt1" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-2">
                    <asp:Button runat="server" ID="btnsearch" CssClass="btn btn-primary" Text="Search" />
                </div>
            </div>

            <!-- Search Results -->

            <div class="row" style="min-height:600px;background:rgba(0,0,0,0.3); ">

                <div class="col-sm-3"></div>
                <div class="col-sm-7">

                    <asp:Repeater runat="server" ID="rptr1" DataSourceID="sds1">
                        <ItemTemplate>
                              <div class="row searchbox text-left">
                        <div class="col-sm-9">
                            <p class="title"> <%# Eval("title") %>  </p>
                        <p class="link">  <%# Eval("links") %> </p>
                        <p class="desc">  <%# Eval("description") %></p>
                        </div>
                        <div class="col-sm-3">
                            <img src'dataimg/<%# Eval("uploadimage") %>' class="img-responsive" />
                        </div>
                    </div>

                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource runat="server" ID="sds1" ConnectionString="<%$ ConnectionStrings:finderthesearchenginedbConnectionString %>" ></asp:SqlDataSource>

                </div>
                <div class="col-sm-2"></div>
            </div>

        </div>


    </form>
</body>
</html>



