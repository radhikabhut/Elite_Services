<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A-Login.aspx.cs" Inherits="Elite_Services.admin.A_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Elite Service</title>

    
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="../css/a.css" rel="stylesheet">
   
</head>
<body>
     <%--<form id="form1"  runat="server">--%>
        <div id="login-page">
	  	<div class="container">
	  	
		      <form class="frm box brdW shadow1 container"  runat="server" >
		        <h2 class="form-login-heading">sign in now</h2>
		        <div class="login-wrap">
					<table>
						<tr>
							<th>
					<asp:TextBox ID="txt_id" runat="server" class="form-control" placeholder="admin id/name" autofocus></asp:TextBox>
		            <%--<input type="text" class="form-control" placeholder="admin id/name" autofocus>--%>
							</th>
						</tr>
					<br>
						<tr>
							<th>
					<asp:TextBox ID="txt_pass" runat="server" class="form-control" placeholder="Password" TextMode="Password" ></asp:TextBox>
							</th>
						</tr>
					<%--<input type="password" class="form-control" placeholder="Password">--%>
		            <%--<label class="checkbox">
		                <span class="pull-right">
		                    <a data-toggle="modal" href="A_Login.aspx#myModal"> Forgot Password?</a>
		
		                </span>
		            </label>--%>
						<tr>
							<th>
					<asp:Button ID="Button1" class="btn"  runat="server" Text="Sign In" OnClick="Button1_Click" /><i class="fa fa-lock"></i>
<%--		            <button class="btn btn-theme btn-block" href="index.html" type="submit"><i class="fa fa-lock"></i> SIGN IN</button>--%>
							</tr>
						</tr>
					<hr>
						</table>
		            
		            <!--<div class="login-social-link centered">
		            <p>or you can sign in via your social network</p>
		                <button class="btn btn-facebook" type="submit"><i class="fa fa-facebook"></i> Facebook</button>
		                <button class="btn btn-twitter" type="submit"><i class="fa fa-twitter"></i> Twitter</button>
		            </div>
		            <div class="registration">
		                Don't have an account yet?<br/>
		                <a class="" href="#">
		                    Create an account
		                </a>
		            </div>
		
		        </div>-->
		
		          <!-- Modal -->
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <%--<div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">Forgot Password ?</h4>
		                      </div>
		                      <div class="modal-body">
		                          <p>Enter your e-mail address below to reset your password.</p>
		                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
		
		                      </div>--%>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
		                          <%--<button class="btn btn-theme" type="button">Submit</button>--%>
		                      </div>
		                  </div>
		              </div>
		          </div>
		          <!-- modal -->
		
		      </form>	  	
	  	
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("assets/img/login-bg.jpg", {speed: 500});
    </script>

    <%--</form>--%>
</body>
</html>
