<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reqired_a_call.aspx.cs" Inherits="reqired_a_call" %>

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
    <title>Reqired_a_call</title>
    <%--<link rel="stylesheet" href="\bootstrap.min.css" />--%>    
    <link href="car_rental_system/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>

    <body style="background-color:azure">

    <div class="container g-3" style="margin-left:23%">        
    <div class="container" style="margin-top:7%">
        
        <div class="display w-50">
            <div class="col-md-6 col-lg-6 col-xl-8">
                <div class="shadow-lg">
                    
    <form id="Form2" class="row g-1" runat="server" >
        <div class="align-content-center">
                <h1>Reqired a call</h1>
                    </div>
        
        <div class="col-md-12">
           <input type="text" class="form-control" id="txtfirstname" runat="server" enableviewstate="False" placeholder="name"/>          
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a first name"  ControlToValidate="txtfirstname" ForeColor="Red"></asp:RequiredFieldValidator>
        </div><br/><br />
        <div class="col-md-12 ">
          <input type="text" class="form-control" id="txtphoneno" runat="server" placeholder="phone_no"/>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="please enter a phone no" ControlToValidate="txtphoneno" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>    
        <br/>
        
          <div class="col-md-12">              
                    <textarea class="form-control" id="Textarea1" rows="3" runat="server" placeholder="message"></textarea>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter a message" ControlToValidate="txtmessage" ForeColor="Red"></asp:RequiredFieldValidator>--%>
</div>  <br /><br />
        <div class="col-12">
            <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
         
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
