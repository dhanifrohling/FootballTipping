<%@ Page Title="Make Tips" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MakeTips.aspx.cs" Inherits="WSD_Project.Tipsters.MakeTips" %>

<asp:Content runat="server" ID="Content" ContentPlaceHolderID="MainContent">
    
    <div class="row">

        <div class="col-md-4">

            <%-- Title. --%>
            <h2>Make Tips</h2>

            <asp:MultiView runat="server" ID="makeTipsView" ActiveViewIndex="0">

                <asp:View runat="server" ID="view1OfMakeTips" >
                    <div>
                        Round 
                        <asp:DropDownList ID="ddlRoundsNotTipped" runat="server"></asp:DropDownList>
                    </div>
                    <asp:Button runat="server" Text="make tips" CommandName="NextView" />

                </asp:View>

                <asp:View runat="server" ID="view2OfMakeTips">

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TippingConnection %>" SelectCommand="SELECT * FROM [fixtures] WHERE ([roundID] = @roundID)" DeleteCommand="DELETE FROM [fixtures] WHERE [roundID] = @roundID" InsertCommand="INSERT INTO [fixtures] ([roundID], [home1], [away1], [home2], [away2], [home3], [away3], [home4], [away4], [home5], [away5], [home6], [away6], [home7], [away7], [home8], [away8], [home9], [away9]) VALUES (@roundID, @home1, @away1, @home2, @away2, @home3, @away3, @home4, @away4, @home5, @away5, @home6, @away6, @home7, @away7, @home8, @away8, @home9, @away9)" UpdateCommand="UPDATE [fixtures] SET [home1] = @home1, [away1] = @away1, [home2] = @home2, [away2] = @away2, [home3] = @home3, [away3] = @away3, [home4] = @home4, [away4] = @away4, [home5] = @home5, [away5] = @away5, [home6] = @home6, [away6] = @away6, [home7] = @home7, [away7] = @away7, [home8] = @home8, [away8] = @away8, [home9] = @home9, [away9] = @away9 WHERE [roundID] = @roundID">
                        <DeleteParameters>
                            <asp:Parameter Name="roundID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="home1" Type="String" />
                            <asp:Parameter Name="away1" Type="String" />
                            <asp:Parameter Name="home2" Type="String" />
                            <asp:Parameter Name="away2" Type="String" />
                            <asp:Parameter Name="home3" Type="String" />
                            <asp:Parameter Name="away3" Type="String" />
                            <asp:Parameter Name="home4" Type="String" />
                            <asp:Parameter Name="away4" Type="String" />
                            <asp:Parameter Name="home5" Type="String" />
                            <asp:Parameter Name="away5" Type="String" />
                            <asp:Parameter Name="home6" Type="String" />
                            <asp:Parameter Name="away6" Type="String" />
                            <asp:Parameter Name="home7" Type="String" />
                            <asp:Parameter Name="away7" Type="String" />
                            <asp:Parameter Name="home8" Type="String" />
                            <asp:Parameter Name="away8" Type="String" />
                            <asp:Parameter Name="home9" Type="String" />
                            <asp:Parameter Name="away9" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlRoundsNotTipped" Name="roundID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="home1" Type="String" />
                            <asp:Parameter Name="away1" Type="String" />
                            <asp:Parameter Name="home2" Type="String" />
                            <asp:Parameter Name="away2" Type="String" />
                            <asp:Parameter Name="home3" Type="String" />
                            <asp:Parameter Name="away3" Type="String" />
                            <asp:Parameter Name="home4" Type="String" />
                            <asp:Parameter Name="away4" Type="String" />
                            <asp:Parameter Name="home5" Type="String" />
                            <asp:Parameter Name="away5" Type="String" />
                            <asp:Parameter Name="home6" Type="String" />
                            <asp:Parameter Name="away6" Type="String" />
                            <asp:Parameter Name="home7" Type="String" />
                            <asp:Parameter Name="away7" Type="String" />
                            <asp:Parameter Name="home8" Type="String" />
                            <asp:Parameter Name="away8" Type="String" />
                            <asp:Parameter Name="home9" Type="String" />
                            <asp:Parameter Name="away9" Type="String" />
                            <asp:Parameter Name="roundID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="roundID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem"  DefaultMode="Edit">
   
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>

                        <InsertItemTemplate>

                        </InsertItemTemplate>

                        <ItemTemplate>
                            <tr>
                                <td>1</td>
                                <td>
                                    <asp:Label ID="home1Label" runat="server" Text='<%# Eval("home1") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("away1") %>' />
                                </td>
                                <td>
                                    <asp:DropDownList id="gOneOutcome" runat="server">
                                        <asp:ListItem Selected="true" Value="win">Win</asp:ListItem>
                                        <asp:ListItem Value="draw">Draw</asp:ListItem>
                                        <asp:ListItem Value="lose">Lose</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="gOneMargin" style="width: 70px;" runat="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("home2") %>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("away2") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList id="game2outcome" runat="server">
                                        <asp:ListItem Selected="true" Value="win">Win</asp:ListItem>
                                        <asp:ListItem Value="draw">Draw</asp:ListItem>
                                        <asp:ListItem Value="lose">Lose</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox id="game2margin" style="width: 70px;" runat="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("home3") %>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("away3") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="game3outcome" runat="server">
                                        <asp:ListItem Selected="true" Value="win">Win</asp:ListItem>
                                        <asp:ListItem Value="draw">Draw</asp:ListItem>
                                        <asp:ListItem Value="lose">Lose</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="game3margin" style="width: 70px;" runat="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("home4") %>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("away4") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="game4outcome" runat="server">
                                        <asp:ListItem Selected="true" Value="win">Win</asp:ListItem>
                                        <asp:ListItem Value="draw">Draw</asp:ListItem>
                                        <asp:ListItem Value="lose">Lose</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="game4margin" style="width: 70px;" runat="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("home5") %>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("away5") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="game5outcome" runat="server">
                                        <asp:ListItem Selected="true" Value="win">Win</asp:ListItem>
                                        <asp:ListItem Value="draw">Draw</asp:ListItem>
                                        <asp:ListItem Value="lose">Lose</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="game5margin" style="width: 70px;" runat="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("home6") %>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("away6") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="game6outcome" runat="server">
                                        <asp:ListItem Selected="true" Value="win">Win</asp:ListItem>
                                        <asp:ListItem Value="draw">Draw</asp:ListItem>
                                        <asp:ListItem Value="lose">Lose</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="game6margin" style="width: 70px;" runat="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("home7") %>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("away7") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="game7outcome" runat="server">
                                        <asp:ListItem Selected="true" Value="win">Win</asp:ListItem>
                                        <asp:ListItem Value="draw">Draw</asp:ListItem>
                                        <asp:ListItem Value="lose">Lose</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="game7margin" style="width: 70px;" runat="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("home8") %>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("away8") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="game8outcome" runat="server">
                                        <asp:ListItem Selected="true" Value="win">Win</asp:ListItem>
                                        <asp:ListItem Value="draw">Draw</asp:ListItem>
                                        <asp:ListItem Value="lose">Lose</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="game8margin" style="width: 70px;" runat="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("home9") %>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("away9") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="game9outcome" runat="server">
                                        <asp:ListItem Selected="true" Value="win">Win</asp:ListItem>
                                        <asp:ListItem Value="draw">Draw</asp:ListItem>
                                        <asp:ListItem Value="lose">Lose</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="game9margin" style="width: 70px;" runat="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" style="text-align: right;">
                                    <asp:Button ID="btnSubmit" runat="server" CommandName="Insert" Text="Submit" OnClick="btnSubmit_Click" />
                                    <asp:Button ID="btnSelectRound" runat="server" Text="Select Round" />
                                </td>
                            </tr>
                        </ItemTemplate>

                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                <th runat="server">Game</th>
                                                <th runat="server">Home-team</th>
                                                <th runat="server">Away-team</th>
                                                <th runat="server">Margin</th>
                                                <th runat="server">Outcome</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                                </tr>
                            </table>
                        </LayoutTemplate>

                    </asp:ListView>
            
                </asp:View>

            </asp:MultiView>

            </div>
     </div>

</asp:Content>