using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class payment_online : System.Web.UI.Page
{
    ConnectionClass cnn;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Messagebox(string Message)
    {
        Response.Write("<script>alert('" + Message + "')</script>");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string QRY = "INSERT INTO tbl_payment_online ";
        QRY += "SELECT ";
        QRY += "MAX(payment_id) + 1, ";
        QRY += "'" + txtcustomer_id.Value.Trim() + "', ";
        QRY += "'" + txtpay_amount.Value.Trim() + "', ";
        QRY += "'" + txtonlinedate.Text.Trim() + "', ";
        QRY += "'" + txtpay_method.Value.Trim() + "', ";

        QRY += "'TRUE' FROM tbl_payment_online ";

        cnn = new ConnectionClass();
        cnn.car_details(QRY);

        Messagebox("Success Fully Data Insert");
        txtcustomer_id.Focus();
    }
   
}