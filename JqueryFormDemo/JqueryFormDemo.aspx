<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JqueryFormDemo.aspx.cs" Inherits="Kingo.CBXT.Web.JqueryFormDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="jquery-1.7.2.min.js"></script>
    <script src="jquery.form.min.js"></script>

    <script type="text/javascript">
        function buttonClick() {
            var options = {
                target: "#it_result",                   //target:把服务器返回的内容放入id为it_result的元素中
                beforeSubmit: function () {             //beforeSubmit:提交前的回调函数
                    if (confirm("哥哥我要准备提交表单了！" + "如果我这个方法返回false，则会阻止表单提交")) {
                        return true;
                    }
                    else {
                        return false;
                    }
                },
                url: "JqueryFormDemo.aspx",                   //url:处理文件地址，默认是form的action，如果申明，则会覆盖
                type: "POST",                           //type:默认是form的method（get or post），如果申明，则会覆盖
                success: function () {
                    alert("提交表单成功了！");
                }

                //dataType: null,           //html(默认), xml, script, json...接受服务端返回的类型
                //clearForm: true,          //成功提交后，清除所有表单元素的值
                //resetForm: true,          //成功提交后，重置所有表单元素的值
                //timeout: 3000             //限制请求的时间，当请求大于3秒后，跳出请求
            };
            $("#FormTest").ajaxSubmit(options);
            return false;
        }
    </script>
</head>

<body>
    <form id="FormTest">
        姓名：<input id="name" name="UserName" type="text" /><br />
        密码：<input id="pwd" name="UserPassword" type="password" /><br />
        性别：
        <input type="checkbox" name="abc" value="1" />
        <input type="checkbox" name="abc" value="2" />
        <input type="checkbox" name="abc" value="3" />

        <input id="it_submit" type="button" onclick="buttonClick()" value="提交" />
        <input id="it_reset" type="reset" value="重置" />
        <hr />
    </form>

    返回结果：<span id="it_result"></span>
</body>
</html>