package cn.hbpu.toutiao.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RequestParamsServlet",urlPatterns = "/request")
public class RequestParamsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        PrintWriter writer = response.getWriter();
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println("用户名："+ name);
        System.out.println("密 码："+ password);
        String[] hobbys = request.getParameterValues("hobby");
        System.out.println("爱好：");
        for (int i = 0; i < hobbys.length; i++ ){
            System.out.println(hobbys[i]+", ");
        }
        writer.println(name);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }
}
