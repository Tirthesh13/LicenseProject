<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Project.SignUp" %>
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
                                    <h4>Sign Up</h4> 
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">

                                <div class="form-group">
                                     <label for="TextBox3" class="form-label">Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                     </label>
                                     &nbsp;<asp:TextBox  ID="TextBox3" CssClass="form-control" runat="server" placeholder="Enter Full Name" TextMode="SingleLine"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                     <label for="TextBox1" class="form-label">Email address<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="InvalidEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                     </label>
                                     &nbsp;<asp:TextBox  ID="TextBox1" CssClass="form-control" runat="server" placeholder="Email-ID" TextMode="Email"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                     <label for="TextBox5" class="form-label">DateOfBirth<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                     <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Age Must be 18-70" ForeColor="Red" Type="Date"></asp:RangeValidator>
                                     </label>
                                     &nbsp;<asp:TextBox  ID="TextBox5" CssClass="form-control" runat="server" placeholder="DOB" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                     <label for="TextBox2" class="form-label">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                     </label>
                                     &nbsp;<asp:TextBox  ID="TextBox2" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                     <label for="TextBox4" class="form-label">Confirm Password<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                     <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox4" ErrorMessage="Password not Matched" ForeColor="Red"></asp:CompareValidator>
                                     </label>
                                     &nbsp;<asp:TextBox  ID="TextBox4" CssClass="form-control" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group" style="margin-top:10px;">
                                    <asp:Button ID="Button1" CssClass="w-100 btn btn-success btn-lg" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                </div>
                                 <div class="form-group" style="margin-top:10px;">
                                     <a href="Login.aspx"><input id="Button2" class="w-100 btn btn-primary btn-lg" type="button" value="LogIn" /></a>
                                     
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
