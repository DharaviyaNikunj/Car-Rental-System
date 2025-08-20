<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment_offline.aspx.cs" Inherits="payment_offline" %>

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
    <title>Payment Offline</title>
     <link href="car_rental_system/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="bootstrap.min.css" />
</head>
<body style="background-color:azure">
    <div class="container g-4" style="margin-left:23%">        
    <div class="container" style="margin-top:7%">
        <div class="display">
            <div class="col-md-12 col-lg-12 col-xl-8">
                <div class="shadow-lg">
    <form id="Form1" class="row g-3" runat="server">
        <div class="align-content-center">
                <h1>Payment Offline</h1>
                    </div>
        <div class="col-md-6">
          <label for="lblcustomer_id" class="form-label">customer_id</label>
          <input type="text" class="form-control" id="txtcustomer_id" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please select a car name" ControlToValidate="txtcustomer_id" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-md-6 ">
          <label for="lblpay_amount" class="form-label">pay_amount</label>
          <input type="text" class="form-control" id="txtpay_amount" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please select a car name" ControlToValidate="txtpay_amount" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        
          <div class="col-md-6 ">
            <label for="lblmainten_date" class="form-label">pay date</label><br />
            <%--<input type="date" class="form-control" id="mainten_date" runat="server">--%>   
            <asp:TextBox ID="txtofflinedate" runat="server" placeholder="From" type="date"></asp:TextBox>         
            <%--<input type="date" id="mainten_date" class="form-control" />--%>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please select a date" ControlToValidate="txtofflinedate" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>

        
        <div class="col-md-6 ">
          <label for="lblpay_method" class="form-label">pay_method</label>
          <input type="text" class="form-control" id="txtpay_method" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="please enter a pay method" ControlToValidate="txtpay_amount" ForeColor="Red"></asp:RequiredFieldValidator>
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
