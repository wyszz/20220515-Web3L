using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;
using Entity;

namespace _20220515_Web3L
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            this.tbx_teacherid.Text = "";
            this.tbx_password.Text = "";
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            //首先验证文本框是否为空
            //获取文本框信息
            //访问数据库
            //根据返回值判断是否登录成功
            //将用户信息存入Session
            if (this.tbx_teacherid.Text.Trim()=="")
            {
                Response.Write("<script>alert('教师ID不能为空！')</script>");
                return;
            }
            if (tbx_password.Text.Trim() == "")
            {
                Response.Write("<script>alert('密码不能为空！')</script>");
                return;
            }
            //判断验证码
            //
            Entity.Teacher t = new Teacher();
            t.TeacherID = this.tbx_teacherid.Text.Trim();
            t.Password = this.tbx_password.Text.Trim();
            t.RoleID=
        }
    }
}