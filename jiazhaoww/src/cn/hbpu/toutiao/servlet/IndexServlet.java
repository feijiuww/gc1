package cn.hbpu.toutiao.servlet;

import cn.hbpu.toutiao.model.Discussion;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "IndexServlet", value ="/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Discussion> list = new ArrayList<>();
        Discussion discussion1 =  new Discussion(
                "科一考前必",
                "1-1.jpg",
                "2022-09-26"
                );
        Discussion discussion2 =  new Discussion(
                "科一口诀技巧",
                "1-2.jpg",
                "2022-09-23");
        Discussion discussion3 =  new Discussion(
                "科一考前必看，这些注意事项",
                "1-3.jpg",
                "2022-09-23"
        );
        Discussion discussion4 =  new Discussion(
                "不想科一丢分？一定要看看这篇存技巧攻略",
                "1-4.jpg",
                "2022-09-21"
        );
        Discussion discussion5 =  new Discussion(
                "科一考前必看",
                "2-1.jpg",
                "2022-09-20"
        );
        Discussion discussion6 =  new Discussion(
                "科目二你不知道的倒车技巧，无私分享！",
                "2-2.jpg",
                "2022-09-29"
        );
        Discussion discussion7 =  new Discussion(
                "科二考试流程+易扣分点解析，考前一过便",
                "2-3.jpg",
                "2022-09-28"
        );
        Discussion discussion8 =  new Discussion(
                "志留纪早期鱼化石，揭秘“从鱼到人”演化关键跃升",
                "2-4.jpg",
                "2022-09-23"
        );
        Discussion discussion9 =  new Discussion(
                "俄否认制造“北溪”管道泄漏事故，欧盟认为事故是蓄意破坏导致，俄方：美方应就是否对“北溪”实施威胁做出回应",
                "3-1.jpg",
                "2022-09-24"
        );
        list.add(discussion1);
        list.add(discussion2);
        list.add(discussion3);
        list.add(discussion4);
        list.add(discussion5);
        list.add(discussion6);
        list.add(discussion7);
        list.add(discussion8);
        list.add(discussion9);
        req.setAttribute("list",list);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
