<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowRanks.aspx.cs" Inherits="WSD_Project.Tipsters.ShowRanks" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ID="Content" ContentPlaceHolderID="MainContent">

    <div class="row">

        <div class="col-md-4">

            <%-- Title. --%>
            <h2><%: Title %></h2>
                
         <asp:MultiView runat="server" ID="showRanksMultiView" ActiveViewIndex="0" >
    <asp:View runat="server" id="view1OfRanks" >
                <asp:label runat="server" id="message" display="dynamic"></asp:label>

                <div runat="server" id="tipsFound" visible="false">

                    <div class="row">
                        <%-- Dropdown-list containing round(s) the tipster has made tips for. --%>
                        <div>
                        round
                        <asp:DropDownList ID="ddlRounds" runat="server"></asp:DropDownList>
                    </div>
                        <%-- Submit button. --%>
                       <asp:Button runat="server" Text="show_the_ranks" ID="show_the_ranks" CommandName="NextView" />
                    </div>

                    <div runat="server" id="tips" visible="false">

                        

                    </div>
                </div>
        </asp:View>
        <asp:View runat="server" ID="view2OfRanks" OnActivate="view2OfRanks_Activate" >
    
            <div runat="server" id="tipsTable" visible="false"></div>


            

             </asp:View>
             </asp:MultiView>
           
            </div>
    </div>
</asp:Content>