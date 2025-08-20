<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book_deails.aspx.cs" Inherits="book_deails" %>

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
    <title>Book Details</title>
    <%--<link rel="stylesheet" href="\bootstrap.min.css" />--%>    
    <link href="car_ental_system/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-color:azure">

    <div class="container g-3" style="margin-left:23%">        
    <div class="container" style="margin-top:7%">
        
        <div class="display">
            <div class="col-md-12 col-lg-12 col-xl-8">
                <div class="shadow-lg">
    <form id="Form1" class="row g-3" runat="server">
        <div class="align-content-center">
                <h1>Book Details</h1>
                    </div>
        <div class="col-md-6">
          <label for="lblcustomer_id" class="form-label">customer_id</label>
          <input type="text" class="form-control" id="txtcustomer_id" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="please select a customer_id" ControlToValidate="txtcustomer_id" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>  
        </div>
        <div class="col-md-6 ">
          <label for="lblcar_name" class="form-label">car_name</label>
          <input type="text" class="form-control" id="txtcar_name" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter a car_id" ControlToValidate="txtcar_name" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>    
                
        <div class="col-md-6 ">
            <label for="lblrental_start_date" class="form-label">rental_start_date</label><br />            
            <asp:TextBox ID="txtrental_start_date" runat="server" placeholder="From" type="date"></asp:TextBox>                     
            <br />
           
        </div>
        
        <div class="col-md-6 ">
            <label for="lblrental_end_date" class="form-label">rental_end_date</label><br />            
            <asp:TextBox ID="txtrental_end_date" runat="server" placeholder="From" type="date"></asp:TextBox>                     
            <br />
           
        </div>

          <div class="col-md-6">
            <label for="lblstart_location" class="form-label">start_location</label>
            <input type="text" class="form-control" id="txtstart_location" runat="server"/>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter start_location" ControlToValidate="txtstart_location" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>             
</div>
        
        <div class="col-md-6 ">
          <label for="lblend_location" class="form-label">end_location</label>
          <input type="text" class="form-control" id="txtend_location" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please enter end_location" ControlToValidate="txtend_location" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        
        <div class="col-md-6 ">
          <label for="lbltotal_cost" class="form-label">total_cost</label>
          <input type="text" class="form-control" id="txttotal_cost" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="please enter total_cost" ControlToValidate="txttotal_cost" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-md-6 ">
            <div >rental_status :</div>        
            <asp:RadioButton ID="rdbrental" GroupName="Status" runat="server"></asp:RadioButton> rental
        <asp:RadioButton ID="rdbnotrental" GroupName="Status" runat="server"></asp:RadioButton>
             not rental <br />
            <asp:CustomValidator ID="valavalilablestatus" runat="server" Display="Dynamic" ErrorMessage="please select a rental_status" ForeColor="Red" SetFocusOnError="True"></asp:CustomValidator>
            <br />
            </div>    
        
        <div class="col-12">
            <asp:Button ID="btbook" runat="server" Text="insert" OnClick="btcar_Click" />  
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
