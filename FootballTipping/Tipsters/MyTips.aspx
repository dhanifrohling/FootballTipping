<%@ Page Title="My Tips" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyTips.aspx.cs" Inherits="WSD_Project.Tipsters.MyTips" %>

<asp:Content runat="server" ID="Content" ContentPlaceHolderID="MainContent">

    <div class="row">

        <div class="col-md-4">

            <%-- Title. --%>
            <h2><%: Title %></h2>
                
            <div class="row">
                <asp:label runat="server" id="message" display="dynamic"></asp:label>

                <div runat="server" id="tipsFound" visible="false">

                    <div class="row">
                        <%-- Dropdown-list containing round(s) the tipster has made tips for. --%>
                        <asp:DropDownList ID="ddlRounds" runat="server"></asp:DropDownList>
                    
                        <%-- Submit button. --%>
                        <asp:Button runat="server" OnClick="DisplayTips_Click" Text="Submit" CssClass="btn btn-default" />
                    </div>
                    
                    <div runat="server" id="tipsTable" visible="false"></div>
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>