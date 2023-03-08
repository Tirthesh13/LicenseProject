<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.Login" %>
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
                                    <h4>LogIn</h4> 
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                             
                                <div class="form-group">
                                     <label for="TextBox1" class="form-label">Email address<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                     </label>
                                     &nbsp;<asp:TextBox  ID="TextBox1" CssClass="form-control" runat="server" placeholder="Email-ID" TextMode="Email"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                     <label for="TextBox2" class="form-label">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                     </label>
                                     &nbsp;<asp:TextBox  ID="TextBox2" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group" style="margin-top:10px;">
                                    <asp:Button ID="Button1" CssClass="w-100 btn btn-success btn-lg" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>
                                 <div class="form-group" style="margin-top:10px;">
                                     <a href="SignUp.aspx"><input id="Button2" class="w-100 btn btn-primary btn-lg" type="button" value="Sign Up" /></a>
                                     
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
