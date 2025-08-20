<%@ Page Language="C#" AutoEventWireup="true" CodeFile="car.aspx.cs" Inherits="car1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <style>

       h1 {
            text-align:center;
        }
        form {
            padding:25px;            
            border:dashed 10px azure;            
            /*/*/*border-radius:20px;*/*/*/         
            box-shadow: 0px;
           
        }
    </style>
    <title>Car</title>
    <link rel="stylesheet" href="\bootstrap.min.css" />  
     <link href="car_rental_system/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>

<body style="background-color:azure">

    <div class="container g-3" style="margin-left:23%">        
    <div class="container" style="margin-top:7%">
        
        <div class="display">
            <div class="col-md-12 col-lg-12 col-xl-8">
                <div class="shadow-lg">
    <form id="Form1" class="row g-3" runat="server">
        <div class="align-content-center">
                <h1>Car Details</h1>
                    </div>
        <div class="col-md-6">
          <label for="lblcar_name" class="form-label">car_name</label>
          <input type="text" class="form-control" id="txtcar_name" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="please select a car name" ControlToValidate="txtcar_name" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>  
        </div>
        <div class="col-md-6 ">
          <label for="lblmodel" class="form-label">model</label>
          <input type="text" class="form-control" id="txtmodel" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter a modle name" ControlToValidate="txtmodel" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>    

        
          <div class="col-md-6">
            <label for="lblyear" class="form-label">year</label>
            <input type="text" class="form-control" id="txtyear" runat="server"/>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter  year" ControlToValidate="txtmodel" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
             
</div>
        
        <div class="col-md-6 ">
          <label for="lbllicence_plate" class="form-label">licence_plate</label>
          <input type="text" class="form-control" id="txtlicence_plate" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please enter licnce plate number" ControlToValidate="txtlicence_plate" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        <div class="col-md-6 ">
            <div >availabity_status :</div>        
            <asp:RadioButton ID="rdbavailable" GroupName="Status" runat="server"></asp:RadioButton> available
        <asp:RadioButton ID="rdbnotavailable" GroupName="Status" runat="server"></asp:RadioButton>
             not available <br />
            <asp:CustomValidator ID="valavalilablestatus" runat="server" Display="Dynamic" ErrorMessage="please select a available status" ForeColor="Red" SetFocusOnError="True"></asp:CustomValidator>
            <br />

            </div>
    
          <div class="col-md-6">
            <label for="lblrental_rate" class="form-label">rental_rate</label>
            <input type="text" class="form-control" id="txtrental_rate" runat="server">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="please enter rental rate" ControlToValidate="txtrental_rate" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
 
        
        <div class="col-12">
            <asp:Button ID="btcar" runat="server" Text="insert" OnClick="btcar_Click" />  
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
