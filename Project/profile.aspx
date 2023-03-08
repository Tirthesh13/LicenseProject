<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Project.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-group">
            <label for="TextBox1" class="form-label">Email address</label>
            <asp:TextBox  ID="TextBox1" CssClass="form-control" runat="server" placeholder="Email-ID" TextMode="Email" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Button ID="Button1" CssClass="w-100 btn btn-success btn-lg" runat="server" Text="Submit" OnClick="Button1_Click"  />
        </div>
        <br />
        <br />
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card" style="margin:10px 0px 10px 0px;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>                                  
                                    <h4>License</h4> 
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <img style="width:150px;" src="images/Profile.png" />
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-6">
                                        <asp:Label ID="Label7" runat="server" Text="License Number :" CssClass="form-label"></asp:Label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label1" runat="server" Text="" CssClass="form-label"></asp:Label>

                                        </div>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <asp:Label ID="Label8" runat="server" Text="Name :" CssClass="form-label"></asp:Label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label2" runat="server" Text="" CssClass="form-label"></asp:Label>

                                        </div>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <asp:Label ID="Label9" runat="server" Text="DOB :" CssClass="form-label"></asp:Label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label3" runat="server" Text="" CssClass="form-label"></asp:Label>

                                        </div>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <asp:Label ID="Label10" runat="server" Text="Type :" CssClass="form-label"></asp:Label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label6" runat="server" Text="" CssClass="form-label"></asp:Label>

                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <asp:Label ID="Label11" runat="server" Text="Exp.Date :" CssClass="form-label"></asp:Label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label4" runat="server" Text="" CssClass="form-label"></asp:Label>

                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <asp:Label ID="Label12" runat="server" Text="State :" CssClass="form-label"></asp:Label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label5" runat="server" Text="" CssClass="form-label"></asp:Label>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                   
                </div>
            </div>
        </div>
    </div>
</asp:Content>
