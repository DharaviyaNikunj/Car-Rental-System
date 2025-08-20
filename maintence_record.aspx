<%@ Page Language="C#" AutoEventWireup="true" CodeFile="maintence_record.aspx.cs" Inherits="maintence_record" %>

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
    <title>Maintence_record</title>
     <link href="car_rental_system/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="bootstrap.min.css" />
</head>
<body style="background-color:azure">
    
    <div class="container g-4" style="margin-left:23%">        
    <div class="container" style="margin-top:7%">
                <div class="col-md-12 col-lg-12 col-xl-8">                                        
        <div class="display">
            <div class="shadow-lg">
    <form id="Form1" class="row g-3" runat="server">
        <div class="align-content-center">
                <h1>Maintence Record</h1>
                    </div>
        <div class="col-md-6 ">
            <label for="lblcar_id" class="form-label">Car_id</label>
            <input type="text" class="form-control" id="txtcar_id" runat="server">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please select a car_id" ControlToValidate="txtcar_id" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
        <div class="col-md-6 ">
            <label for="lblmainten_date" class="form-label">Mainten_date</label><br />
            <%--<input type="date" class="form-control" id="mainten_date" runat="server">--%>   
            <asp:TextBox ID="mainten_date" runat="server" placeholder="From" type="date"></asp:TextBox>         
            <%--<input type="date" id="mainten_date" class="form-control" />--%>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please select a mainten_date" ControlToValidate="mainten_date" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
         <div class="col-md-6 ">
          <label for="lbldescription" class="form-label">Description</label>
          <input type="text" class="form-control" id="txtdescription" runat="server">
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please enter description" ControlToValidate="txtdescription" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
              
         <div class="col-md-6 ">
          <label for="lblcost" class="form-label">Cost</label>
          <input type="text" class="form-control" id="txtcost" runat="server" />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="please enter a cost " ControlToValidate="txtcost" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>                
        
        <div class="col-12">
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click1" />
        </div>
      </form>
    
    </div>
                    </div>
</div>
        </div>
   <script src="../Bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
