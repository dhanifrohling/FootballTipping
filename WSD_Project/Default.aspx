<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WSD_Project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <%-- Administrators view. --%>
    <div runat="server" id="administratorsDiv" Visible="false">
        <div class="jumbotron">
            <h2>Welcome, <%: Context.User.Identity.GetUserName() %> !</h2>
        </div>

        <div class="row">
            <div class="col-md-4">
                <h2>Getting started</h2>
                <p>At the top of this page, you have the option to choose the following menu-items: </p>
                <ul>
                    <li><b>Home:</b> to go to this tipping-system's homepage.</li>
                    <li><b>Modify Tips:</b> to modify previously submitted tips.</li>
                    <li><b>Statistics:</b> to display statistics of all previously submitted tips.</li>
                    <li><b>Logout:</b> to logout of your account.</li>
                </ul>
            </div>
        </div>
    </div>
    
    <%-- Tipsters view. --%>
    <div runat="server" id="tipstersDiv" Visible="false">
        <div class="jumbotron">
            <h2>Welcome, <%: Context.User.Identity.GetUserName() %> !</h2>
        </div>

        <div class="row">
            <div class="col-md-4">
                <h2>Getting started</h2>
                <p>At the top of this page, you have the option to choose the following menu-items: </p>
                <ul>
                    <li><b>Home:</b> to go to this tipping-system's homepage.</li>
                    <li><b>Fixtures:</b> to display current fixtures.</li>
                    <li><b>Make Tips:</b> to submit a tip into our tipping system.</li>
                    <li><b>My Tips:</b> to display your submitted tips.</li>
                    <li><b>Statistics:</b> to display statistics of all previously submitted tips.</li>
                    <li><b>Logout:</b> to logout of your account.</li>
                </ul>
            </div>
        </div>
    </div>
    
    <%-- Anonymous' view. --%>
    <div runat="server" id="anonymousDiv" Visible="false">
        <div class="jumbotron">
            <h2>Welcome!</h2>
            <p class="lead">To register, please click on the following link: </p>
            <p><a runat="server" href="~/Account/Register" class="btn btn-primary btn-lg">Register &raquo;</a></p>
        </div>
    </div>
</asp:Content>
