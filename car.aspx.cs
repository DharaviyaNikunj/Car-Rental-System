using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class car1 : System.Web.UI.Page
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
        string QRY = "INSERT INTO tbl_car_search ";
        QRY += "SELECT ";
        QRY += "MAX(car_id) + 1, ";
        QRY += "'" + txtcar_name.Value.Trim() + "', ";
        QRY += "'" + txtmodel.Value.Trim() + "', ";
        QRY += "" + txtyear.Value.Trim() + ", ";
        QRY += "'" + txtlicence_plate.Value.Trim() + "', ";

        if (rdbavailable.Checked) QRY += "'True', ";
        else if (rdbnotavailable.Checked) QRY += "'False', ";
        else QRY += "NULL, ";

        QRY += "" + txtrental_rate.Value.Trim() + ", ";
        QRY += "'TRUE' FROM tbl_car_search ";

        cnn = new ConnectionClass();
        cnn.car_details(QRY);

        Messagebox("Success Fully Data Insert");
        txtcar_name.Focus();
    }
}