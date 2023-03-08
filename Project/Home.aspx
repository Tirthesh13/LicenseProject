<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="color:#FFFBEB; background-color: #181D31; padding:50px 0px 50px 0px;">
        <div class="container" >
        <div class="row">
            <div class="col-md-6" style="text-align:center">
                <h2 style="margin-top:100px;">Apply for License from Home</h2>
                <asp:Button ID="Button1" CssClass="btn btn-secondary btn-lg" runat="server" Text="Apply" OnClick="Button1_Click" />
            </div>
            <div class="col-md-6">
                <img style="width:600px; margin-top:5px;" src="images/Untitled%20design(1).png" class="img-fluid"/>
            </div>
        </div>
        
    </div>
    </section>
    <section Id="#Working" style="padding:50px 0px 50px 0px;">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <center>
                        <h3>
                            How It Works
                        </h3>
                    </center>
                </div>
            </div>
            <div class="row" style="text-align:center">
                <div class="col-md-4">
                    <img style="width:150px;" src="images/apply.png" />
                    <h4>Click On Apply</h4>
                </div>
                <div class="col-md-4">
                    <img style="width:150px;" src="images/details.png" />
                    <h4>Submit Details</h4>
                </div>
                <div class="col-md-4">
                    <img style="width:150px;" src="images/test.png" />
                    <h4>Give Test </h4>
                </div>
            </div>
        </div>
    </section>
    <section>
        
        <div>
            <h3 style="color:#FFFBEB; background-color: #181D31; text-align:center; padding:50px 0px 50px 0px;" >Check Out The Below Video To Know  How This Website Work.</h3>
           <center > <iframe width="560" height="315" src="https://www.youtube.com/embed/tRLVtWrPoyU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen style="color:#FFFBEB; background-color: #181D31; text-align:center; padding:0px 20px 0px 20px;"></iframe></center>
            
        </div>
    </section>
    <section style="color:#FFFBEB; background-color: #181D31; padding:120px 0px 120px 0px;">
        <div class="container">
            <div>
                <center>
                    <h1 class="display-5 fw-bold">StudyMaterials</h1>
                    <div>
                        <p class="lead mb-4">Check out the Study Materials Section Before the exam.</p>
                        <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                            <asp:Button ID="Button2" runat="server" CssClass="btn btn-outline-secondary btn-lg px-4" Text="Click to Check" OnClick="Button2_Click" />

                        </div>

                    </div>
                 </center>
                
            </div>
        </div>
    </section>
   

</asp:Content>
