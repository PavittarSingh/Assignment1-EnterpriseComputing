<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="GameCalculator._default" %>

<!-- Name: Pavittar Singh
     Date: 6/19/2015-Friday
     Student: 200238210
     Purpose: Collection of User data from 4 different game and 
     calculates the output and stats. Display the output on same screen

-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Game Calculator</title>
    <!-- Minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="main.css" />
     <!--website Icon -->
    <link rel="shortcut icon" href="Images/icon.ico" />
</head>
<body>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li><a href="/">Home</a></li>
                                <li><a href="contact.aspx">Contact</a></li>
                                
                            </ul>
        </div>

    <div class="container">
        <form id="form1" runat="server" class="form-horizontal">
            <h1 class="text-center">Game Calculator</h1>
            <h2 class="text-center"><small>Georgian college</small></h2>
            <h3 class="text-center"><small>Entreprise Computing</small></h3>
            <h4>Note: Please fill all options for output. </h4>
            <div class="container-fluid">
                <div class="row">
                    
                    <!-- Game 1 inputs -->
                    <div class="col-sm-3 col-md-3">
                        <div class="well">
                            <h3>Game 1</h3>
                            <div class="form-group">
                                <!--radio button (WinOrLoss)-->
                                <label for="rblResult1" class="col-sm-4 control-label">Result:</label>
                                <div class="col-sm-8">
                                    <asp:RadioButtonList ID="rblResult1" runat="server">
                                        <asp:ListItem Value="Win" Text="Win"></asp:ListItem>
                                        <asp:ListItem Value="Lose" Text="Lose"></asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server"
                                        ErrorMessage="Required" ControlToValidate="rblResult1" Display="Dynamic"
                                        CssClass="label label-default"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div>
                                <!-- scored textbox -->
                                <label for="txtGame1Scored">Scored: </label>
                                <asp:TextBox ID="txtGame1Scored" runat="server" required="" type="number" CausesValidation="true"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ErrorMessage="Required" ControlToValidate="txtGame1Scored" Display="Dynamic"
                                    CssClass="label label-default"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server"
                                    ErrorMessage="Enter a number greater than 0" ControlToValidate="txtGame1Scored"
                                    Type="Double" MinimumValue="0.01" MaximumValue="9999" Display="Dynamic"
                                    CssClass="label label-default"></asp:RangeValidator>
                                <asp:CompareValidator ID="compareValidator1" runat="server" ControlToCompare="txtGame1Allowed" Operator="NotEqual"
                                    ErrorMessage="Points scored cannot be the same as points allowed" ControlToValidate="txtGame1Scored"
                                    Display="Dynamic" CssClass="label label-default"></asp:CompareValidator>
                            </div>
                            <div>
                                <!-- allowed textbox -->
                                <label for="txtGame1Allowed">Allowed: </label>
                                <asp:TextBox ID="txtGame1Allowed" runat="server" required type="number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ErrorMessage="Required" ControlToValidate="txtGame1Allowed" Display="Dynamic"
                                    CssClass="label label-default"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator2" runat="server"
                                    ErrorMessage="Enter a number greater than 0" ControlToValidate="txtGame1Allowed"
                                    Type="Double" MinimumValue="0.01" MaximumValue="9999" Display="Dynamic"
                                    CssClass="label label-default"></asp:RangeValidator>
                            </div>
                            <div>
                                <!-- spectators textbox -->
                                <label for="txtGame1Spectators">Spectators: </label>
                                <asp:TextBox ID="txtGame1Spectators" runat="server" required type="number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                    ErrorMessage="Required" ControlToValidate="txtGame1Spectators" Display="Dynamic"
                                    CssClass="label label-default"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator3" runat="server"
                                    ErrorMessage="Enter a number greater than or equal to 0" ControlToValidate="txtGame1Spectators"
                                    Type="Double" MinimumValue="0" MaximumValue="99999" Display="Dynamic"
                                    CssClass="label label-default"></asp:RangeValidator>
                            </div>
                        </div>
                    </div>
                    <!-- Game 2 inputs -->
                    <div class="col-sm-3 col-md-3">
                        <div class="well">
                            <h3>Game 2</h3>
                            <div class="form-group">
                                <!-- radio button (WinOrLoss) -->
                                <label for="rblResult2" class="col-sm-4 control-label">Result: </label>
                                <div class="col-sm-8">
                                    <asp:RadioButtonList ID="rblResult2" runat="server">
                                        <asp:ListItem Value="Win" Text="Win"></asp:ListItem>
                                        <asp:ListItem Value="Lose" Text="Lose"></asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server"
                                        ErrorMessage="Required" ControlToValidate="rblResult2" Display="Dynamic"
                                        CssClass="label label-default"></asp:RequiredFieldValidator>
                                </div>

                            </div>
                            <div>
                                <!-- scored textbox -->
                                <label for="txtGame2Scored">Scored: </label>
                                <asp:TextBox ID="txtGame2Scored" runat="server" required type="number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                    ErrorMessage="Required" ControlToValidate="txtGame2Scored" Display="Dynamic"
                                    CssClass="label label-default"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator4" runat="server"
                                    ErrorMessage="Enter a number greater than 0" ControlToValidate="txtGame2Scored"
                                    Type="Double" MinimumValue="0.01" MaximumValue="9999" Display="Dynamic"
                                    CssClass="label label-default"></asp:RangeValidator>
                                <asp:CompareValidator ID="compareValidator2" runat="server" ControlToCompare="txtGame2Allowed" Operator="NotEqual"
                                    ErrorMessage="Points scored cannot be the same as points allowed" ControlToValidate="txtGame2Scored"
                                    Display="Dynamic" CssClass="label label-default"></asp:CompareValidator>
                            </div>
                            <div>
                                <!-- allowed textbox -->
                                <label for="txtGame2Allowed">Allowed: </label>
                                <asp:TextBox ID="txtGame2Allowed" runat="server" required type="number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                    ErrorMessage="Required" ControlToValidate="txtGame2Allowed" Display="Dynamic"
                                    CssClass="label label-default"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator5" runat="server"
                                    ErrorMessage="Enter a number greater than 0" ControlToValidate="txtGame2Allowed"
                                    Type="Double" MinimumValue="0.01" MaximumValue="9999" Display="Dynamic"
                                    CssClass="label label-default"></asp:RangeValidator>
                            </div>
                            <div>
                                <!-- spectators textbox -->
                                <label for="txtGame2Spectators">Spectators: </label>
                                <asp:TextBox ID="txtGame2Spectators" runat="server" required type="number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                    ErrorMessage="Required" ControlToValidate="txtGame2Spectators" Display="Dynamic"
                                    CssClass="label label-default"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator6" runat="server"
                                    ErrorMessage="Enter a number greater than or equal to 0" ControlToValidate="txtGame2Spectators"
                                    Type="Double" MinimumValue="0" MaximumValue="99999" Display="Dynamic"
                                    CssClass="label label-default"></asp:RangeValidator>
                            </div>
                        </div>
                    </div>
                    <!-- Game 3 inputs -->
                    <div class="col-sm-3 col-md-3">
                        <div class="well">
                            <h3>Game 3</h3>
                            <div class="form-group">
                                <!-- radio button (WinOrLoss) -->
                                <label for="rblResult3" class="col-sm-4 control-label">Result: </label>
                                <div class="col-sm-8">
                                    <asp:RadioButtonList ID="rblResult3" runat="server">
                                        <asp:ListItem Value="Win" Text="Win"></asp:ListItem>
                                        <asp:ListItem Value="Lose" Text="Lose"></asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server"
                                        ErrorMessage="Required" ControlToValidate="rblResult3" Display="Dynamic"
                                        CssClass="label label-default"></asp:RequiredFieldValidator>
                                </div>

                            </div>
                            <div>
                                <!-- scored textbox -->
                                <label for="txtGame3Scored">Scored: </label>
                                <asp:TextBox ID="txtGame3Scored" runat="server" required type="number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                    ErrorMessage="Required" ControlToValidate="txtGame3Scored" Display="Dynamic"
                                    CssClass="label label-default"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator7" runat="server"
                                    ErrorMessage="Enter a number greater than 0" ControlToValidate="txtGame3Scored"
                                    Type="Double" MinimumValue="0.01" MaximumValue="9999" Display="Dynamic"
                                    CssClass="label label-default"></asp:RangeValidator>
                                <asp:CompareValidator ID="compareValidator3" runat="server" ControlToCompare="txtGame3Allowed" Operator="NotEqual"
                                    ErrorMessage="Points scored cannot be the same as points allowed" ControlToValidate="txtGame3Scored"
                                    Display="Dynamic" CssClass="label label-default"></asp:CompareValidator>
                            </div>
                            <div>
                                <!-- allowed textbox -->
                                <label for="txtGame3Allowed">Allowed: </label>
                                <asp:TextBox ID="txtGame3Allowed" runat="server" required type="number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                    ErrorMessage="Required" ControlToValidate="txtGame3Allowed" Display="Dynamic"
                                    CssClass="label label-default"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator8" runat="server"
                                    ErrorMessage="Enter a number greater than 0" ControlToValidate="txtGame3Allowed"
                                    Type="Double" MinimumValue="0.01" MaximumValue="9999" Display="Dynamic"
                                    CssClass="label label-default"></asp:RangeValidator>
                            </div>
                            <div>
                                <!-- Spectators textbox -->
                                <label for="txtGame3Spectators">Spectators: </label>
                                <asp:TextBox ID="txtGame3Spectators" runat="server" required type="number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                                    ErrorMessage="Required" ControlToValidate="txtGame3Spectators" Display="Dynamic"
                                    CssClass="label label-default"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator9" runat="server"
                                    ErrorMessage="Enter a number greater than or equal to 0" ControlToValidate="txtGame3Spectators"
                                    Type="Double" MinimumValue="0" MaximumValue="99999" Display="Dynamic"
                                    CssClass="label label-default"></asp:RangeValidator>
                            </div>
                        </div>
                    </div>
                    <!-- Game 4 inputs -->
                    <div class="col-sm-3 col-md-3">
                        <div class="well">
                            <h3>Game 4</h3>
                            <div class="form-group">
                                <label for="rblResult4" class="col-sm-4 control-label">Result: </label>
                                <!-- radio button (WinOrLoss) -->
                                <div class="col-sm-8">
                                    <asp:RadioButtonList ID="rblResult4" runat="server">
                                        <asp:ListItem Value="Win" Text="Win"></asp:ListItem>
                                        <asp:ListItem Value="Lose" Text="Lose"></asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server"
                                        ErrorMessage="Required" ControlToValidate="rblResult4" Display="Dynamic"
                                        CssClass="label label-default"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div>
                                <!-- scored textbox -->
                                <label for="txtGame4Scored">Scored: </label>
                                <asp:TextBox ID="txtGame4Scored" runat="server" required="" type="number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                                    ErrorMessage="Required" ControlToValidate="txtGame4Scored" Display="Dynamic"
                                    CssClass="label label-default"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator10" runat="server"
                                    ErrorMessage="Enter a number greater than 0" ControlToValidate="txtGame4Scored"
                                    Type="Double" MinimumValue="0.01" MaximumValue="9999" Display="Dynamic"
                                    CssClass="label label-default"></asp:RangeValidator>
                                <asp:CompareValidator ID="compareValidator4" runat="server" ControlToCompare="txtGame4Allowed" Operator="NotEqual"
                                    ErrorMessage="Points scored cannot be the same as points allowed" ControlToValidate="txtGame4Scored"
                                    Display="Dynamic" CssClass="label label-default"></asp:CompareValidator>
                            </div>
                            <div>
                                <!-- allowed textbox -->
                                <label for="txtGame4Allowed">Allowed: </label>
                                <asp:TextBox ID="txtGame4Allowed" runat="server" required type="number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
                                    ErrorMessage="Required" ControlToValidate="txtGame4Allowed" Display="Dynamic"
                                    CssClass="label label-default"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator11" runat="server"
                                    ErrorMessage="Enter a number greater than 0" ControlToValidate="txtGame4Allowed"
                                    Type="Double" MinimumValue="0.01" MaximumValue="9999" Display="Dynamic"
                                    CssClass="label label-default"></asp:RangeValidator>
                            </div>
                            <div>
                                <!-- spectators textbox -->
                                <label for="txtGame4Spectators">Spectators: </label>
                                <asp:TextBox ID="txtGame4Spectators" runat="server" required type="number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server"
                                    ErrorMessage="Required" ControlToValidate="txtGame4Spectators" Display="Dynamic"
                                    CssClass="label label-default"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator12" runat="server"
                                    ErrorMessage="Enter a number greater than or equal to 0" ControlToValidate="txtGame4Spectators"
                                    Type="Double" MinimumValue="0" MaximumValue="99999" Display="Dynamic"
                                    CssClass="label label-default"></asp:RangeValidator>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center">
                    <!-- Submit button -->
                    <asp:Button ID="btnCalculate" CssClass="btn btn-primary" runat="server" Text="Calculate Totals" OnClick="btnCalculate_Click" />
                </div>
            </div>

            <div class="text-center">
                <!-- Information panel -->
                <asp:Panel ID="pnlResults" runat="server" Visible="false">
                    <h4>Totals</h4>
                    <div>
                        <label for="lblWins">Wins: </label>
                        <asp:Label ID="lblWins" runat="server" />
                    </div>
                    <div>
                        <label for="lblLosses">Losses: </label>
                        <asp:Label ID="lblLosses" runat="server" />
                    </div>
                    <div>
                        <label for="lblWinPercent">Winning %: </label>
                        <asp:Label ID="lblWinPercent" runat="server" />
                    </div>
                    <div>
                        <label for="lblPointsScored">Points Scored: </label>
                        <asp:Label ID="lblPointsScored" runat="server" />
                    </div>
                    <div>
                        <label for="lblPointsAllowed">Points Allowed: </label>
                        <asp:Label ID="lblPointsAllowed" runat="server" />
                    </div>
                    <div>
                        <label for="lblPointDiff">Point Differential: </label>
                        <asp:Label ID="lblPointDiff" runat="server" />
                    </div>
                    <div>
                        <label for="lblTotalAttendance">Total Attendance: </label>
                        <asp:Label ID="lblTotalAttendance" runat="server" />
                    </div>
                    <div>
                        <label for="lblAvgAttendance">Average Attendance: </label>
                        <asp:Label ID="lblAvgAttendance" runat="server" />
                    </div>
                </asp:Panel>
            </div>



        </form>
        <!--Footer-->
        <footer>
            <p>Pavittar Singh</p>
            <p>
                Copyright2015: <a href="http://pavittarsingh.me">pavittarsingh.me</a>.
            </p>
            <a href="http://www.facebook.com/pavsraan">Follow me on facebook</a>


        </footer>
        <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li>
                            <a href="#">Privacy Policy</a>
                        </li>
                        <li>
                            <a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
    </div>
</body>
</html>
