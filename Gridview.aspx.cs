using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Gridview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    //void BindMyData()
    //{
    //    string QRY = "INSERT INTO tbl_register ";
    //    QRY += "SELECT ";
    //    QRY += "MAX(customer_id) + 1, ";
    //    QRY += "'" + txtfirstname.Value.Trim() + "', ";
    //    QRY += "'" + txtlastname.Value.Trim() + "', ";
    //    QRY += "'" + txtemailid.Value.Trim() + "', ";
    //    QRY += "'" + txtpassword.Value.Trim() + "', ";

    //    if (rdbMale.Checked) QRY += "'True', ";
    //    else if (rdbFemale.Checked) QRY += "'False', ";
    //    else QRY += "NULL, ";

    //    QRY += "" + txtphoneno.Value.Trim() + ", ";
    //    //QRY += "" + ddlCity.SelectedValue.ToString() + ", ";
    //    QRY += "'" + txtcity.Value.Trim() + "', ";
    //    QRY += "'" + txtstate.Value.Trim() + "', ";
    //    //QRY += "" + ddlstate.SelectedValue.ToString() + ", ";
    //    QRY += "'" + txtaddress.Value.Trim() + "', ";
    //    QRY += "'TRUE' FROM tbl_register ";

    //    cnn = new ConnectionClass();
    //    cnn.Register(QRY);

    //    Messagebox("Success Fully Data Insert");
    //    txtfirstname.Focus();


    //}
    
    protected void dtGrd_StudInfo_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
}