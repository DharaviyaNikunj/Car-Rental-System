using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class maintence_record : System.Web.UI.Page
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
      


    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string QRY = "INSERT INTO tbl_maintence_record ";
        QRY += "SELECT ";
        QRY += "MAX(record_id) + 1, ";
        QRY += "'" + txtcar_id.Value.Trim() + "', ";
        //QRY += "'" + mainten_date.Value.Trim + "', ";
        QRY += "'" + mainten_date.Text.Trim() + "', ";
        QRY += "'" + txtdescription.Value.Trim() + "', ";
        QRY += "" + txtcost.Value.Trim() + ", ";

        //if (rdbavailable.Checked) QRY += "'True', ";
        //else if (rdbnotavailable.Checked) QRY += "'False', ";
        //else QRY += "NULL, ";


        QRY += "'TRUE' FROM tbl_maintence_record ";

        cnn = new ConnectionClass();
        cnn.mainten_deatils(QRY);

        Messagebox("Success Fully Data Insert");
        txtcar_id.Focus();

    }
}