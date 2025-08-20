using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class driver_details : System.Web.UI.Page
{
    ConnectionClass cnn;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Messagebox(string Message)
    {
        Response.Write("<script>alert('" + Message + "')</script>");
    }
    void BindMyData()
    {
        string QRY = "INSERT INTO tbl_drives_details ";
        QRY += "SELECT ";
        QRY += "MAX(driver_id) + 1, ";
        QRY += "'" + txtfirstname.Value.Trim() + "', ";
        QRY += "'" + txtlastname.Value.Trim() + "', ";
        QRY += "" + txtcontct_no.Value.Trim() + ", ";

        if (rdbavailable.Checked) QRY += "'True', ";
        else if (rdbnotavailable.Checked) QRY += "'False', ";
        else QRY += "NULL, ";

        //QRY += "" + txtrental_rate.Value.Trim() + ", ";
        QRY += "'TRUE' FROM tbl_drives_details ";

        cnn = new ConnectionClass();
        cnn.drives_details(QRY);

        Messagebox("Success Fully Data Insert");
        txtfirstname.Focus();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        BindMyData();
    }
}