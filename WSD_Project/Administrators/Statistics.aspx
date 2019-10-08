<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Statistics.aspx.cs" Inherits="WSD_Project.Administrators.Statistics" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content runat="server" ID="Content" ContentPlaceHolderID="MainContent">
    
    <div class="row">

        <div class="col-md-4">

            <%-- Title. --%>
            <h2>Statistics</h2>
            
            <%-- Ajax. --%>
            <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                <ContentTemplate>

            <div>
                <asp:DropDownList ID="ddlGraphType1" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlGraphType1_SelectedIndexChanged">
                    <asp:ListItem>Column</asp:ListItem>
                    <asp:ListItem>Pie</asp:ListItem>
                    <asp:ListItem>Line</asp:ListItem>
                </asp:DropDownList>

                <asp:DropDownList ID="ddlDimension1" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlDimension1_SelectedIndexChanged">
                <asp:ListItem>2D</asp:ListItem>
                <asp:ListItem>3D</asp:ListItem>
                </asp:DropDownList>
            </div>
                
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                        <Titles>
                                <asp:Title Text="Number of Tips-sets Per Round" ForeColor="Blue">  </asp:Title>
                        </Titles>
                        <Series>
                            <asp:Series Name="Series1" XValueMember="Round" YValueMembers="Count"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <AxisX Title="Round"> </AxisX>
                                <AxisY Title="Number of Tip-sets"> </AxisY>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
            
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TippingConnection %>" SelectCommand="SELECT roundID AS Round, COUNT(*) AS Count FROM tips GROUP BY roundID;"></asp:SqlDataSource>

                </ContentTemplate>
            </asp:UpdatePanel>

            <%-- Ajax. --%>
            <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server">
                <ContentTemplate>

           <br />

            <div>
                <asp:DropDownList ID="ddlGraphType2" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlGraphType2_SelectedIndexChanged">
                    <asp:ListItem>Column</asp:ListItem>
                    <asp:ListItem>Pie</asp:ListItem>
                    <asp:ListItem>Line</asp:ListItem>
                </asp:DropDownList>

                <asp:DropDownList ID="ddlDimension2" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlDimension2_SelectedIndexChanged">
                <asp:ListItem>2D</asp:ListItem>
                <asp:ListItem>3D</asp:ListItem>
                </asp:DropDownList>
            </div>

            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2">
                        <Titles>
                             <asp:Title Text="Number Tip-sets Per Weekday" ForeColor="Blue">  </asp:Title>
                        </Titles>
                        <Series>
                            <asp:Series Name="Series1" XValueMember="Weekday" YValueMembers="Count"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <AxisX Title="Weekday"> </AxisX>
                                <AxisY Title="Number of Tip-sets"> </AxisY>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TippingConnection %>" SelectCommand="SELECT datename(weekday,tiptime) As Weekday, COUNT(*) AS Count FROM tips GROUP BY datename(weekday,tiptime);"></asp:SqlDataSource>
            
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
    </div>
</asp:Content>