package cn.hbpu.jiazhao.servlet;

import cn.hbpu.jiazhao.model.Personal;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "PersonalServlet", value = "/PersonalServlet")
public class PersonalServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Personal personal = new Personal(
                "在线无聊jpg",
                "1.jpg"
        );
        request.setAttribute("personal",personal);
        request.getRequestDispatcher("personal.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);

    }
}
