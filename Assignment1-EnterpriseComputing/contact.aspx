<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Assignment1_EnterpriseComputing.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <link rel="stylesheet" href="contact.css" />
        <link href="main.css" rel="stylesheet" />
        <div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li><a href="/">Home</a></li>
                                <li><a href="contact.aspx">Contact</a></li>
                                
                            </ul>
        </div>

            <div class="container">
                <div class="col-md-5">
                    <div class="form-area">
                        <form role="form">
                            <br style="clear: both">
                            <h3 style="margin-bottom: 25px; text-align: center;">Contact Form</h3>
                            <div class="form-group">
                                <input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="email" name="email" placeholder="Email" required>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Mobile Number" required>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" required>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" type="textarea" id="message" placeholder="Message" maxlength="140" rows="7"></textarea>
                                <span class="help-block">
                                    <p id="characterLeft" class="help-block ">You have reached the limit</p>
                                </span>
                            </div>

                            <button type="button" id="submit" name="submit" class="btn btn-primary pull-right">Submit Form</button>
                        </form>
                    </div>
                </div>
            </div>
            <!--Footer-->
        <footer>
            <p>Pavittar Singh</p>
            <p>
                Copyright2015: <a href="http://pavittarsingh.me">pavittarsingh.me</a>.
            </p>
            <a href="http://www.facebook.com/pavsraan">Follow me on facebook</a>


        </footer>
        <div class="col-md-4">
                    <ul class="list-inline quicklinks1">
                        <li>
                            <a href="#">Privacy Policy</a>
                        </li>
                        <li>
                            <a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
        </div>
    </form>
</body>
</html>
