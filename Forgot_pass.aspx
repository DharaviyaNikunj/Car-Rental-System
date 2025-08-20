<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgot_pass.aspx.cs" Inherits="Forgot_pass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"><style>

       h1 {
            text-align:center;
        }
        form {
            padding:10px;            
            border:dashed 5px azure;                              
            box-shadow: 0px;
           
        }
    </style>
    <title>Forgot Password</title>
    <%--<link rel="stylesheet" href="\bootstrap.min.css" />--%>    
    <link href="car%20rental%20system/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
    <body style="background-color:azure">

    <div class="container g-3" style="margin-left:23%">        
    <div class="container" style="margin-top:7%">
        
        <div class="display w-50">
            <div class="col-md-6 col-lg-6 col-xl-8">
                <div class="shadow-lg">
                    <center></center>
    <form id="Form2" class="row g-1" runat="server" >
        <div class="align-content-center">
                <h1>Forgot Password</h1>
                    </div>
        
        <div class="col-md-12">
          <label for="addressarea" class="form-label">Email ID</label><br />
                     <input type="text" class="form-control form-control-lg" id="txtemailid" runat="server" placeholder="enter a email id" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="please enter a address" ControlToValidate="txtemailid" ForeColor="Red"></asp:RequiredFieldValidator>
        </div><br/><br />
        <div class="col-md-12 ">
          <label id="Label1" class="form-label" for="form3Example4" runat="server">Password</label> 
                                <input type="password" id="txtpass" runat="server" class="form-control form-control-lg"
                                    placeholder="enter password" />

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please enter a password" ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>    
        <br/>
        
          <div class="col-md-12">
              <label id="Label2" class="form-label" for="form3Example4" runat="server">conform password </label>
                                <input type="password" id="txtconformpass" runat="server" class="form-control form-control-lg"
                                    placeholder="enter password" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="please enter a conform password" ControlToValidate="txtconformpass" ForeColor="Red"></asp:RequiredFieldValidator>
             
</div>
        
      
        
        <div class="col-12">
            <asp:Button ID="txtsave" runat="server" Text="save" OnClick="txtsave_Click" />   
            <%--<asp:Button ID="btcar" runat="server" Text="insert" OnClick="btcar_Click" />--%>  
                </div>
            
      </form>
                    </div>
            </div>

        </div>
            </div>

        </div>
   <script src="../Bootstrap/js/bootstrap.min.js"></script>
</body>
</html>


