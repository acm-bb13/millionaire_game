package millionaire_game.servlet;

import millionaire_game.javabean.Register_Message_bean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Register_operate_Servlet")
public class Register_operate_Servlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //        设置文档为UTF-8，防止乱码
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        String request =req.getParameter("request");
        Register_Message_bean rmb = Register_Message_bean.getRegister_messageBean();

        Ajax_packAndSend.pack("servlet","Register_operate_Servlet");
        if(rmb != null){
            Ajax_packAndSend.pack("is_login","true");
            if("allMessage".equals(request)){
                //                请求帐号所有可获取信息
                Ajax_packAndSend.pack("user_login",rmb.getUser_login());
                Ajax_packAndSend.pack("user_name",rmb.getUser_name());
                Ajax_packAndSend.pack("user_gold",rmb.getUser_gold());
                Ajax_packAndSend.pack("experience",rmb.getExperience());
                Ajax_packAndSend.pack("is_admin",rmb.isIs_admin());

            }else if("is_login_Message".equals(request)){
//                请求帐号是否为登录状态

            }else if("register_exit".equals(request)){
//              请求账号登出
                System.out.println("test-2");
                Register_Message_bean.exit_login();
                System.out.println("text-1");
            }
        }else {
            Ajax_packAndSend.pack("is_login","false");
        }
        Ajax_packAndSend.pack("request",request);
        Ajax_packAndSend.send(resp);
    }
}
