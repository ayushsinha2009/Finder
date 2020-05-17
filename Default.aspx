<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/FinderStyle.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $("#icons").hide();
            $("#opener").click(function () {
                $("#icons").slideToggle("slow");
            });
        });
    </script>
    <link href="css/buttons.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid" style="background-image:url('images/20.jpg');  background-size:100%100%; "  >
        
        <div class="row" style="height:700px; background:rgba(0,0,0,0.3); position:relative;">
            <div id="box">
                <div id="icons">

                    <ul>
                        <li> <i class="glyphicon glyphicon-home"></i> <br />  <b class="text">Home</b> </li>
                         <li> <i class="glyphicon glyphicon-bookmark"></i> <br />  <b class="text">Bookmark</b> </li>
                        <li> <i class="glyphicon glyphicon-globe"></i> <br />  <b class="text">Social Media</b> </li>
                         <li> <i class="glyphicon glyphicon-time"></i> <br />  <b class="text">History</b> </li>
                        </ul>

                </div>
                <div id="opener" class="text-center">
                    <i class="glyphicon glyphicon-triangle-bottom" style="color:white; font-size:30px;" ></i>
                </div>
            </div>
            <div class="col-sm-3"></div>
            <div class="col-sm-6 text-center">

                <div class="logo">
                    <span class="ch1">F</span> 
                    <span class="ch2">I</span>
                    <span class="ch3">N</span>
                    <span class="ch4">D</span>
                    <span class="ch5">E</span>
                    <span class="ch6">R</span>
                </div>
                <div class="row">
                    <div class="col-sm-10">
                        <div class="form-group">
                            <asp:TextBox runat="server" required="required" ID="txt1" style="width:450px; margin-left:50px;" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <a runat="server" id="btnclick" onserverclick="btnclick_ServerClick" class="button button-primary button-circle button-giant button-longshadow" style="margin-top:-20px; "><i class="glyphicon glyphicon-search"></i></a>
                    </div>
                </div>


            </div>
            <div class="col-sm-3"></div>
        </div>
        

    </div>
    </form>
</body>
</html>



