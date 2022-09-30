package cn.hbpu.toutiao.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       // System.out.println("doPost");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter writer = resp.getWriter();
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String message = "";
        String checkcode = req.getParameter("checkcode");
        HttpSession session = req.getSession();
        Object checkcode1 = (String)session.getAttribute("checkcode");
        if (checkcode1.equals(checkcode)) {
            if (username.equals("zhang") && password.equals("123456")) {
                Cookie lastAccess = null;//记录上次访问时间
                Cookie[] cookies = req.getCookies();
                String lastAccessValue = "";
                if (cookies != null) {
                    for (Cookie c : cookies) {
                        //寻找是否有上次访问时间的coolie
                        if (c.getName().equals("lastAccess")) {
                            lastAccess = c;
                            break;
                        }
                    }
                }
                Date date = new Date();
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd日HH时mm分ss秒");
                String dateStr = dateFormat.format(date);
                if (lastAccess == null) {
                    //第一次访问,创建cookie
                    lastAccess = new Cookie("lastAccess", dateStr);
                    lastAccess.setMaxAge(24 * 7 * 60 * 60);
                } else {
                    lastAccessValue = lastAccess.getValue();
                    lastAccess.setValue(dateStr);
                }
                resp.addCookie(lastAccess);

                if (lastAccessValue.equals("")) {

                    message = "用户名和密码正确，欢迎您登录" + username;
                } else {
                    message = "用户名和密码正确，您上次访问时间为" + lastAccessValue;
                }
                session.setAttribute("user",username);
                req.setAttribute("errMeg",message);
                req.getRequestDispatcher("personal.jsp").forward(req,resp);
                writer.println("<script>alert('" + message + "');");
            } else {
                message = "用户名和密码错误，请重新登录";
                req.setAttribute("errMsg",message);
                req.getRequestDispatcher("login2.jsp").forward(req,resp);

            }
        }else{
            message = "验证码错误，请重新输入";
            req.setAttribute("errMsg",message);
            req.getRequestDispatcher("login2.jsp").forward(req,resp);


        }

    }
}
