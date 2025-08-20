using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class book_deails : System.Web.UI.Page
{
    ConnectionClass cnn;

    protected void Page_Load(object sender, EventArgs e)
    {
    }
    public void Messagebox(string Message)
    {
        Response.Write("<script>alert('" + Message + "')</script>");
    }
    protected void btcar_Click(object sender, EventArgs e)
    {
        string QRY = "INSERT INTO tbl_book_deails ";
        QRY += "SELECT ";
        QRY += "MAX(rental_id) + 1, ";
        QRY += "'" + txtcustomer_id.Value.Trim() + "', ";        
        QRY += "'" + txtcar_name.Value.Trim() + "', ";
        QRY += "'" + txtrental_start_date.Text.Trim() + "', ";
        QRY += "'" + txtrental_end_date.Text.Trim() + "', ";
        QRY += "'" + txtstart_location.Value.Trim() + "', ";
        QRY += "'" + txtend_location.Value.Trim() + "', ";
        QRY += "" + txttotal_cost.Value.Trim() + ", ";

        if (rdbrental.Checked) QRY += "'True', ";
        else if (rdbnotrental.Checked) QRY += "'False', ";
        else QRY += "NULL, ";

        QRY += "'TRUE' FROM tbl_book_deails ";
        cnn = new ConnectionClass();
        cnn.book_details(QRY);
        Messagebox("Success Fully Data Insert");
        txtrental_start_date.Focus();

    }
}