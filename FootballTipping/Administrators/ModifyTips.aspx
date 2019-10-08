<%@ Page Title="Modify Tips" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifyTips.aspx.cs" Inherits="WSD_Project.Administrators.ModifyTips" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content runat="server" ID="Content" ContentPlaceHolderID="MainContent">

    <div class="row">

        <div class="col-md-4">

            <%-- Title. --%>
            <h2><%: Title %></h2>
                
            <div class="row">

                <asp:label runat="server" id="message" display="dynamic"></asp:label>

                <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">

                    <ContentTemplate>

                        

                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="tipsetID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                            <AlternatingItemTemplate>
                                <tr style="background-color:#FFF8DC;">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                    </td>
                                    <td>
                                        <asp:Label ID="tipsetIDLabel" runat="server" Text='<%# Eval("tipsetID") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="roundIDLabel" runat="server" Text='<%# Eval("roundID") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game1Label" runat="server" Text='<%# Eval("game1") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game2Label" runat="server" Text='<%# Eval("game2") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game3Label" runat="server" Text='<%# Eval("game3") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game4Label" style="text-align: center;" runat="server" Text='<%# Eval("game4") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game5Label" runat="server" Text='<%# Eval("game5") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game6Label" runat="server" Text='<%# Eval("game6") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game9Label" runat="server" Text='<%# Eval("game9") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game8Label" runat="server" Text='<%# Eval("game8") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game7Label" runat="server" Text='<%# Eval("game7") %>' />
                                    </td>
                                </tr>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <tr style="background-color:#008A8C;color: #FFFFFF;">
                                    <td>
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" OnClick="btnUpdate_Click" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                    </td>
                                    <td>
                                        <asp:Label ID="tipsetIDLabel1" style="width: 70px;" runat="server" Text='<%# Eval("tipsetID") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="usernameTextBox" style="width: 200px;" runat="server" Text='<%# Bind("username") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="roundIDTextBox" style="width: 70px;" runat="server" Text='<%# Bind("roundID") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game1TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game1") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game2TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game2") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game3TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game3") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game4TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game4") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game5TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game5") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game6TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game6") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game9TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game9") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game8TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game8") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game7TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game7") %>' />
                                    </td>
                                    <td>
                                        <%-- Edit items validation. --%>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="usernameTextBox" ErrorMessage="Username is required." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="roundIDTextBox" ErrorMessage="RoundID is required." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="game1TextBox" ErrorMessage="Game 1 is required." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="game2TextBox" ErrorMessage="Game 2 is required." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="game3TextBox" ErrorMessage="Game 3 is required." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="game4TextBox" ErrorMessage="Game 4 is required." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="game5TextBox" ErrorMessage="Game 5 is required." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="game6TextBox" ErrorMessage="Game 6 is required." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="game7TextBox" ErrorMessage="Game 7 is required." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="game8TextBox" ErrorMessage="Game 8 is required." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="game9TextBox" ErrorMessage="Game 9 is required." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="usernameTextBox" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ErrorMessage="Email-address must be valid." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ControlToValidate="roundIDTextBox" ValidationExpression="^[1-20]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="game1TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="game2TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="game3TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="game4TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ControlToValidate="game5TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" ControlToValidate="game6TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" ControlToValidate="game7TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" ControlToValidate="game8TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" ControlToValidate="game9TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Edit" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                    </td>
                                </tr>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                    <tr>
                                        <td>No data was returned.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" OnClick="btnInsert_Click" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="usernameTextBox" style="width: 200px;" runat="server" Text='<%# Bind("username") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="roundIDTextBox" style="width: 70px;" runat="server" Text='<%# Bind("roundID") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game1TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game1") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game2TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game2") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game3TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game3") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game4TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game4") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game5TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game5") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game6TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game6") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game9TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game9") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game8TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game8") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="game7TextBox" style="width: 70px;" runat="server" Text='<%# Bind("game7") %>' />
                                    </td>
                                    <td>
                                        <%-- Insert items validation. --%>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="usernameTextBox" ErrorMessage="Username is required." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="roundIDTextBox" ErrorMessage="RoundID is required." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="game1TextBox" ErrorMessage="Game 1 is required." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="game2TextBox" ErrorMessage="Game 2 is required." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="game3TextBox" ErrorMessage="Game 3 is required." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="game4TextBox" ErrorMessage="Game 4 is required." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="game5TextBox" ErrorMessage="Game 5 is required." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="game6TextBox" ErrorMessage="Game 6 is required." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="game7TextBox" ErrorMessage="Game 7 is required." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="game8TextBox" ErrorMessage="Game 8 is required." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="game9TextBox" ErrorMessage="Game 9 is required." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="usernameTextBox" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ErrorMessage="Email-address must be valid." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ControlToValidate="roundIDTextBox" ValidationExpression="^[1-20]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="game1TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="game2TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="game3TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="game4TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ControlToValidate="game5TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" ControlToValidate="game6TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" ControlToValidate="game7TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" ControlToValidate="game8TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" ControlToValidate="game9TextBox" ValidationExpression="^[-200-200]([0-9]*,?)*$" ErrorMessage="Game-score must be between -200 and 200." ValidationGroup="Insert" Display="Dynamic" ForeColor="Crimson" RunAt="Server" />
                                    </td>
                                </tr>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <tr style="background-color:#DCDCDC;color: #000000;">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                    </td>
                                    <td>
                                        <asp:Label ID="tipsetIDLabel" runat="server" Text='<%# Eval("tipsetID") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="roundIDLabel" runat="server" Text='<%# Eval("roundID") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game1Label" runat="server" Text='<%# Eval("game1") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game2Label" runat="server" Text='<%# Eval("game2") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game3Label" runat="server" Text='<%# Eval("game3") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game4Label" runat="server" Text='<%# Eval("game4") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game5Label" runat="server" Text='<%# Eval("game5") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game6Label" runat="server" Text='<%# Eval("game6") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game9Label" runat="server" Text='<%# Eval("game9") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game8Label" runat="server" Text='<%# Eval("game8") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game7Label" runat="server" Text='<%# Eval("game7") %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                    <th runat="server"></th>
                                                    <th runat="server">tipsetID</th>
                                                    <th runat="server">username</th>
                                                    <th runat="server">roundID</th>
                                                    <th runat="server">game1</th>
                                                    <th runat="server">game2</th>
                                                    <th runat="server">game3</th>
                                                    <th runat="server">game4</th>
                                                    <th runat="server">game5</th>
                                                    <th runat="server">game6</th>
                                                    <th runat="server">game9</th>
                                                    <th runat="server">game8</th>
                                                    <th runat="server">game7</th>
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
                            <SelectedItemTemplate>
                                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                    </td>
                                    <td>
                                        <asp:Label ID="tipsetIDLabel" runat="server" Text='<%# Eval("tipsetID") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="roundIDLabel" runat="server" Text='<%# Eval("roundID") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game1Label" runat="server" Text='<%# Eval("game1") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game2Label" runat="server" Text='<%# Eval("game2") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game3Label" runat="server" Text='<%# Eval("game3") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game4Label" runat="server" Text='<%# Eval("game4") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game5Label" runat="server" Text='<%# Eval("game5") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game6Label" runat="server" Text='<%# Eval("game6") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game9Label" runat="server" Text='<%# Eval("game9") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game8Label" runat="server" Text='<%# Eval("game8") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="game7Label" runat="server" Text='<%# Eval("game7") %>' />
                                    </td>
                                </tr>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:Label ID="lblResult" runat="server"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TippingConnection %>" DeleteCommand="DELETE FROM [tips] WHERE [tipsetID] = @tipsetID" InsertCommand="INSERT INTO [tips] ([username], [roundID], [game1], [game2], [game3], [game4], [game5], [game6], [game9], [game8], [game7]) VALUES (@username, @roundID, @game1, @game2, @game3, @game4, @game5, @game6, @game9, @game8, @game7)" SelectCommand="SELECT [tipsetID], [username], [roundID], [game1], [game2], [game3], [game4], [game5], [game6], [game9], [game8], [game7] FROM [tips]" UpdateCommand="UPDATE [tips] SET [username] = @username, [roundID] = @roundID, [game1] = @game1, [game2] = @game2, [game3] = @game3, [game4] = @game4, [game5] = @game5, [game6] = @game6, [game9] = @game9, [game8] = @game8, [game7] = @game7 WHERE [tipsetID] = @tipsetID">
                            <DeleteParameters>
                                <asp:Parameter Name="tipsetID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="username" Type="String" />
                                <asp:Parameter Name="roundID" Type="Int32" />
                                <asp:Parameter Name="game1" Type="Int32" />
                                <asp:Parameter Name="game2" Type="Int32" />
                                <asp:Parameter Name="game3" Type="Int32" />
                                <asp:Parameter Name="game4" Type="Int32" />
                                <asp:Parameter Name="game5" Type="Int32" />
                                <asp:Parameter Name="game6" Type="Int32" />
                                <asp:Parameter Name="game9" Type="Int32" />
                                <asp:Parameter Name="game8" Type="Int32" />
                                <asp:Parameter Name="game7" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="username" Type="String" />
                                <asp:Parameter Name="roundID" Type="Int32" />
                                <asp:Parameter Name="game1" Type="Int32" />
                                <asp:Parameter Name="game2" Type="Int32" />
                                <asp:Parameter Name="game3" Type="Int32" />
                                <asp:Parameter Name="game4" Type="Int32" />
                                <asp:Parameter Name="game5" Type="Int32" />
                                <asp:Parameter Name="game6" Type="Int32" />
                                <asp:Parameter Name="game9" Type="Int32" />
                                <asp:Parameter Name="game8" Type="Int32" />
                                <asp:Parameter Name="game7" Type="Int32" />
                                <asp:Parameter Name="tipsetID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                        

                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
</asp:Content>