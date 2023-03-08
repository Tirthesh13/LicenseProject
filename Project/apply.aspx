<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="apply.aspx.cs" Inherits="Project.apply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card" style="margin:10px 0px 10px 0px;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <i class="fa-solid fa-user"></i>
                                    <h4>Application Forms</h4> 
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">

                                
                             
                                <div class="form-group">
                                     <label for="TextBox1" class="form-label">Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                     </label>
                                     &nbsp;<asp:TextBox  ID="TextBox1" CssClass="form-control" runat="server" placeholder="Full Name" TextMode="SingleLine" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                     <label for="TextBox2" class="form-label">Phone No.<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Number" ForeColor="Red" ValidationExpression="\d{10}" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
                                     </label>
                                     &nbsp;<asp:TextBox  ID="TextBox2" CssClass="form-control" runat="server" placeholder="Phone no." TextMode="Number"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                     <label for="TextBox3" class="form-label">Email<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                     </label>
                                     &nbsp;<asp:TextBox  ID="TextBox3" CssClass="form-control" runat="server" placeholder="Email-ID" TextMode="Email"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                     <label for="TextBox7" class="form-label">DOB<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                     <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Must be 18-70" ForeColor="Red" ControlToValidate="TextBox7" Type="Date"></asp:RangeValidator>
                                     </label>
                                     &nbsp;<asp:TextBox  ID="TextBox7" CssClass="form-control" runat="server" placeholder="DOB" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                     <label for="TextBox8" class="form-label">Aadhar Number<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                     </label>
                                     &nbsp;<asp:TextBox  ID="TextBox8" CssClass="form-control" runat="server" placeholder="Aadhar Number" TextMode="Number" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group">
                                     <label for="TextBox4" class="form-label">Address<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                     </label>
                                     &nbsp;<asp:TextBox  ID="TextBox4" CssClass="form-control" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                     <label for="DropDownList1" class="form-label">State<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red" Display="Dynamic" InitialValue="Select" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </label>
                                    &nbsp;<asp:DropDownList ID="DropDownList1"  CssClass="form-control" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"/>
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"/>
                                        <asp:ListItem Text="Goa" Value="Goa"/>
                                        <asp:ListItem Text="Gujarat" Value="Gujarat"/>
                                        <asp:ListItem Text="Karnataka" Value="Karnataka"/>
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra"/>
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh"/>
                                        <asp:ListItem Text="Kerala" Value="Kerala"/>
                                    </asp:DropDownList>
                                     
                                </div>

                                    </div>
                                    <div class="col-md-4">
                                         <div class="form-group">
                                     <label for="TextBox5" class="form-label">City<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                             </label>
                                     &nbsp;<asp:TextBox  ID="TextBox5" CssClass="form-control" runat="server" placeholder="City" TextMode="SingleLine"></asp:TextBox>
                                </div>
                                    </div>
                                    <div class="col-md-4">
                                         <div class="form-group">
                                     <label for="TextBox6" class="form-label">PinCode<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                             </label>
                                     &nbsp;<asp:TextBox  ID="TextBox6" CssClass="form-control" runat="server" placeholder="PinCode" TextMode="Number"></asp:TextBox>
                                </div>
                                    </div>
                                </div>
                                <br />

                                <div class="form-group">
                                     <label for="DropDownList1" class="form-label">Select Vehicle type<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>
                                     </label>
                                    &nbsp;<asp:DropDownList ID="DropDownList2"  CssClass="form-control" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"/>
                                        <asp:ListItem Text="Two wheeler" Value="Two wheeler"/>
                                        <asp:ListItem Text="Three Wheeler" Value="Three Wheeler"/>
                                        <asp:ListItem Text="Four Wheeler" Value="Four Wheeler"/>
                                        <asp:ListItem Text="Heavy Weight Vehicle(Ex.Truck)" Value="Heavy Weight Vehicle"/> 
                                    </asp:DropDownList>
                                     
                                </div>



                               <br />
                                <div class="form-group" style="margin-top:10px;">
                                    <asp:Button ID="Button1" CssClass="w-100 btn btn-success btn-lg" runat="server" Text="Next" OnClick="Button1_Click" />
                                </div>                  
                            </div>
                        </div>
                    </div>
                    <a href="Home.aspx"><<-Go Home</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
