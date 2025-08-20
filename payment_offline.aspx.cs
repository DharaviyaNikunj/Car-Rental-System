using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class payment_offline : System.Web.UI.Page
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
        string QRY = "INSERT INTO tbl_payment_offline ";
        QRY += "SELECT ";
        QRY += "MAX(payment_id) + 1, ";
        QRY += "'" + txtcustomer_id.Value.Trim() + "', ";
        QRY += "'" + txtpay_amount.Value.Trim() + "', ";
        QRY += "'" + txtofflinedate.Text.Trim() + "', ";        
        QRY += "'" + txtpay_method.Value.Trim() + "', ";

        QRY += "'TRUE' FROM tbl_payment_offline ";

        cnn = new ConnectionClass();
        cnn.payment_offline(QRY);

        Messagebox("Success Fully Data Insert");
        txtcustomer_id.Focus();
    }
}