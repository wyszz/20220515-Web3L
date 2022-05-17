using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using System.Data;
using System.Data.SqlClient;
using Entity;
using Business;

namespace _20220515_Web3L
{
    public partial class DisplayTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["pageindex"] = 0;
                this.LoadDataList();
            }
        }
        private void LoadDataList()
        {
            DataTable dt = Business.AdminBusiness.SelectViewTeacher();
            DataView dv = dt.DefaultView;
            PagedDataSource pds = new PagedDataSource();
            pds.DataSource = dv;
            pds.AllowPaging = true;
            pds.PageSize = 2;
            pds.CurrentPageIndex = Convert.ToInt32(ViewState["pageindex"].ToString());
            ViewState["pagecount"] = pds.PageCount;
            if (pds.IsFirstPage)
            {
                this.lbtn_pre.Enabled = false;
            }
            else
            {
                this.lbtn_pre.Enabled = true;
            }
            if (pds.IsLastPage)
            {
                this.lbtn_next.Enabled = false;
            }
            else
            {
                this.lbtn_next.Enabled = true;
            }
            this.dl_teacher.DataSource = pds;
            this.dl_teacher.DataBind();
        }
    }
}