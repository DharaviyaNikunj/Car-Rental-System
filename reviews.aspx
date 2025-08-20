<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reviews.aspx.cs" Inherits="reviews" %>

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
       
        /*this link for code = https://www.geeksforgeeks.org/star-rating-using-html-css-and-javascript/*/
    </style>
    <title>reaview</title>
    <link rel="stylesheet" href="bootstrap.min.css" />
     <link href="car_rental_system/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
      <link rel="stylesheet" href="styles.css" />
</head>
<body style="background-color:azure">
    <div class="container g-4" style="margin-left:23%">        
    <div class="container" style="margin-top:7%">
        <div class="display">
            <div class="col-md-12 col-lg-12 col-xl-8">
                <div class="shadow-lg">
    <form id="Form1" class="row g-3" runat="server">
        <div class="align-content-center">
                <h1>Review Form</h1>
                    </div>
        <div class="col-md-6">
          <label for="lblstar" class="form-label">Star</label>    
        <br />
        <span onclick="gfg(1)"class="star">★</span>
        <span onclick="gfg(2)"class="star">★</span>
        <span onclick="gfg(3)"class="star">★</span>
        <span onclick="gfg(4)"class="star">★</span>
        <span onclick="gfg(5)"class="star">★</span>
            
      
          <%--<input type="text" class="form-control" id="txtstar" runat="server">--%>
            <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="please enter a star"></asp:CustomValidator>
        </div>
        <div class="col-md-6 ">
          <label for="lblfeedback" class="form-label">Feedback</label>
          <input type="text" class="form-control" id="txtfeedback" runat="server">
            <asp:CustomValidator ID="CustomValidator5" runat="server" ErrorMessage="please enter a feedback"></asp:CustomValidator>
        </div>
        

        <div class="col-12">
            <%--<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />--%>
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
