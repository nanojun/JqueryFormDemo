using System;
using System.Web;

namespace Kingo.CBXT.Web
{
    public partial class JqueryFormDemo : System.Web.UI.Page, IHttpHandler
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["UserName"] != null)
            {
                if (Request.Form["UserName"] != null && Request.Form["UserPassword"] != null)
                {
                    Response.Write(
                        "姓名：" + Request.Form["UserName"].ToString() +
                        " 密码：" + Request.Form["UserPassword"].ToString() +
                        " 性别：" + Request.Form["abc"].ToString());
                }
                else
                {
                    Response.Write("获取不到url参数！");
                }
            }
        }
    }
}