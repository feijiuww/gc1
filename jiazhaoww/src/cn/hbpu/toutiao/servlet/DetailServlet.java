package cn.hbpu.toutiao.servlet;

import cn.hbpu.toutiao.model.Discussion;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       /* ServletConfig servletConfig = getServletConfig();
        String encoding = servletConfig.getInitParameter("encoding");
        System.out.println(encoding);
        String servletName = servletConfig.getServletName();
        System.out.println(servletName);
        ServletContext application = getServletContext();
        application.setAttribute("school","hbpu");*/

        Discussion discussion =  new Discussion(
                 1,
                 "教育部：全国95%的县区已经建立课后服务经费保障机制",
                 "近日，教育部网站发布“关于修改义务教育法将双减政策上升为法律规范的建议”的答复。" +
                 "答复中提到，截至2022年6月，全国95%的县区已经建立课后服务经费保障机制。" +
                 "同时，积极在各地推广试点教师轮岗制度和弹性上下班制度，保障好教师的休息权利。\n" +
                 "\n");

         request.setAttribute("toutiao", discussion);
         request.getRequestDispatcher("detail.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          this.doGet(request,response);
    }
}
