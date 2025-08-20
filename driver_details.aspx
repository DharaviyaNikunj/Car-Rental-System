<%@ Page Language="C#" AutoEventWireup="true" CodeFile="driver_details.aspx.cs" Inherits="driver_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <style>
        h1 {
            text-align:center;
        }
        form {
            padding:25px;            
            border:solid 2px azure;
            border-top-style:solid;
            border-radius:10px;         
            box-shadow: 50px;
           
        }
    </style>
    <title>Driver Details</title>
    <link href="car_rental_system/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="bootstrap.min.css" />
</head>
<body style="background-color:azure">
     
    <div class="container g-4" style="margin-left:23%">        
    <div class="container" style="margin-top:7%">

        <div class="display">
             <div class="col-md-12 col-lg-12 col-xl-8">   
                 <div class="shadow-lg">
    <form id="Form1" class="row g-3" runat="server" >
        <div class="align-content-center">
                <h1>Driver Details</h1>
                    </div>
        
                <div class="col-md-6 ">
                    <label for="lblfirstname" class="form-label">First Name</label>
                    <input type="text" class="form-control" id="txtfirstname" runat="server">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please enter first name" ControlToValidate="txtfirstname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6 ">
                    <label for="lbllastname" class="form-label">Last Name</label>
                    <input type="text" class="form-control" id="txtlastname" runat="server">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter last name" ControlToValidate="txtlastname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
         <div class="col-md-6 ">
          <label for="lblcontct_no" class="form-label">Contct_no</label>
          <input type="text" class="form-control" id="txtcontct_no" runat="server">
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter contect no" ControlToValidate="txtcontct_no" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
                  
        <div class="col-md-6 ">
            <div >Availabity_status :</div>        
            <asp:RadioButton ID="rdbavailable" GroupName="Status" runat="server"></asp:RadioButton> Available
            <asp:RadioButton ID="rdbnotavailable" GroupName="Status" runat="server"></asp:RadioButton> not available <br />
            <asp:CustomValidator ID="valavalilablestatus" runat="server" ErrorMessage="please select a available status" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:CustomValidator>
        
            <br />
            <%--<asp:CustomValidator ID="valCustGender" runat="server" ErrorMessage="Select Any One Gender Option" Display="Dynamic" Font-Size="0.8em" ForeColor="Red" OnServerValidate="valCustGender_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>--%>
            </div>            
        
        <div class="col-12">
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
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
