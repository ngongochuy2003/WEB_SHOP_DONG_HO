using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class TrangChu : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        string strcn = ConfigurationManager.ConnectionStrings["qlBanDongHo"].ConnectionString;
        string queryClothesMen = "select * from SanPham where GioiTinh = 'Nam' and MaSP >=1 and MaSP <= 11 and SoLuongTon > 1";
        string queryClothesWomen = "select * from SanPham where GioiTinh = N'Nữ' and MaSP >=1 and MaSP <= 20 and SoLuongTon > 1";
        SqlConnection connect = new SqlConnection(strcn);
        connect.Open();
        SqlDataAdapter sqldaForMen = new SqlDataAdapter(queryClothesMen, connect);
        DataSet dsMen = new DataSet();
        sqldaForMen.Fill(dsMen, "ClothesForMen");
        DataList1.DataSource = dsMen.Tables["ClothesForMen"];
        DataList1.DataBind();

        SqlDataAdapter sqldaForWomen = new SqlDataAdapter(queryClothesWomen, connect);
        DataSet dsWomen = new DataSet();
        sqldaForWomen.Fill(dsWomen, "ClothesForWomen");
        DataList2.DataSource = dsWomen.Tables["ClothesForWomen"];
        DataList2.DataBind();
    }
}