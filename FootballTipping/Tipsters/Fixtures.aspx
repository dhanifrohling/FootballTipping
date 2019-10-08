<%@ Page Title="Fixtures" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fixtures.aspx.cs" Inherits="WSD_Project.Tipsters.Fixtures" %>

<asp:Content runat="server" ID="Content" ContentPlaceHolderID="MainContent">

    <div class="row">

        <div class="col-md-4">

            <%-- Title. --%>
            <h2><%: Title %></h2>

            <%-- Rounds dropdown-list. --%>
            <asp:DropDownList ID="ddlRounds" runat="server">

                <asp:ListItem Enabled="true" Text="Select Round..." Value="-1"></asp:ListItem>
                <asp:ListItem Text="Round 1" Value="1"></asp:ListItem>
                <asp:ListItem Text="Round 2" Value="2"></asp:ListItem>
                <asp:ListItem Text="Round 3" Value="3"></asp:ListItem>
                <asp:ListItem Text="Round 4" Value="4"></asp:ListItem>
                <asp:ListItem Text="Round 5" Value="5"></asp:ListItem>
                <asp:ListItem Text="Round 6" Value="6"></asp:ListItem>
                <asp:ListItem Text="Round 7" Value="7"></asp:ListItem>
                <asp:ListItem Text="Round 8" Value="8"></asp:ListItem>
                <asp:ListItem Text="Round 9" Value="9"></asp:ListItem>
                <asp:ListItem Text="Round 10" Value="10"></asp:ListItem>
                <asp:ListItem Text="Round 11" Value="11"></asp:ListItem>
                <asp:ListItem Text="Round 12" Value="12"></asp:ListItem>
                <asp:ListItem Text="Round 13" Value="13"></asp:ListItem>
                <asp:ListItem Text="Round 14" Value="14"></asp:ListItem>
                <asp:ListItem Text="Round 15" Value="15"></asp:ListItem>
                <asp:ListItem Text="Round 16" Value="16"></asp:ListItem>
                <asp:ListItem Text="Round 17" Value="17"></asp:ListItem>
                <asp:ListItem Text="Round 18" Value="18"></asp:ListItem>
                <asp:ListItem Text="Round 19" Value="19"></asp:ListItem>
                <asp:ListItem Text="Round 20" Value="20"></asp:ListItem>

            </asp:DropDownList>
            
            <%-- Submit button. --%>
            <asp:Button runat="server" OnClick="DisplayFixtures_Click" Text="Submit" CssClass="btn btn-default" />

            <%-- Fixtures table. --%>
            <div runat="server" id="fixturesTable" Visible="false"></div>
            
        </div>

    </div>
    
</asp:Content>