using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ThongKe : System.Web.UI.Page {
    string strcn = ConfigurationManager.ConnectionStrings["qlBanDongHo"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e) {
        SqlConnection connect = new SqlConnection(strcn);
        connect.Open();
        string query = "select MaHD ,MaKH , MaSP , TenSP , SoLuong , NgayDat as 'Ngày bán', ThanhTien from HoaDon";
        SqlCommand cmd = new SqlCommand(query, connect);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (!sdr.HasRows) {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "Swal.fire('Thông báo','Chưa có doanh thu ☹️','info')", true);
        }
        else {
            loadData();
        }
    }
    public void loadData() {
        SqlConnection connect = new SqlConnection(strcn);
        connect.Open();
        DataTable dtThongKe = new DataTable();
        dtThongKe.Columns.Add("MaHD", typeof(int));
        dtThongKe.Columns.Add("MaKH", typeof(int));
        dtThongKe.Columns.Add("MaSP", typeof(int));
        dtThongKe.Columns.Add("TenSP", typeof(string));
        dtThongKe.Columns.Add("SoLuong", typeof(int));
        dtThongKe.Columns.Add("ThanhTien", typeof(double));
        string query = "select MaHD ,MaKH , MaSP , TenSP , SoLuong , NgayDat as 'Ngày bán', ThanhTien from HoaDon";
        SqlDataAdapter sqlda = new SqlDataAdapter(query, connect);
        sqlda.Fill(dtThongKe);
        double tongDoanhThu = 0;
        for (int i = 0; i < dtThongKe.Rows.Count; i++) {
            tongDoanhThu += double.Parse(dtThongKe.Rows[i]["ThanhTien"].ToString());
        }
        GridView1.DataSource = dtThongKe;
        GridView1.DataBind();
        txtTongDoanhThu.Text = "Tổng doanh thu: " + String.Format("{0:0,0}", tongDoanhThu) + " VNĐ";
    }
}