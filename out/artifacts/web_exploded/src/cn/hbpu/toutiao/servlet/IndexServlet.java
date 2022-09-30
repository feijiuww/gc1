package cn.hbpu.toutiao.servlet;

import cn.hbpu.toutiao.model.Toutiao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "IndexServlet", value = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Toutiao> list = new ArrayList<>();
        Toutiao toutiao1 =  new Toutiao(
                "教育部：全国95%的县区已经建立课后服务经费保障机制",
                "1.jpg",
                "2022-09-26"
                );
        Toutiao toutiao2 =  new Toutiao(
                "推进中国特色大国外交 服务中华民族伟大复兴——新时代中国外交工作述评",
                "2.jpg",
                "2022-09-23");
        Toutiao toutiao3 =  new Toutiao(
                "锻造雄师向复兴：胜战",
                "3.jpg",
                "2022-09-23"
        );
        Toutiao toutiao4 =  new Toutiao(
                "海报｜数据看我国产业结构不断优化 发展可持续性明显增强",
                "4.jpg",
                "2022-09-21"
        );
        Toutiao toutiao5 =  new Toutiao(
                "把未来产业作为发展重要引擎",
                "5.jpg",
                "2022-09-20"
        );
        Toutiao toutiao6 =  new Toutiao(
                "【我在中国挺好的·第二季】我在聊城寻“非遗”（下）",
                "6.jpg",
                "2022-09-29"
        );
        Toutiao toutiao7 =  new Toutiao(
                "9月28日0时至24时 天津新增39例本土阳性感染者",
                "7.jpg",
                "2022-09-28"
        );
        Toutiao toutiao8 =  new Toutiao(
                "志留纪早期鱼化石，揭秘“从鱼到人”演化关键跃升",
                "8.jpg",
                "2022-09-23"
        );
        Toutiao toutiao9 =  new Toutiao(
                "俄否认制造“北溪”管道泄漏事故，欧盟认为事故是蓄意破坏导致，俄方：美方应就是否对“北溪”实施威胁做出回应",
                "9.jpg",
                "2022-09-24"
        );
        list.add(toutiao1);
        list.add(toutiao2);
        list.add(toutiao3);
        list.add(toutiao4);
        list.add(toutiao5);
        list.add(toutiao6);
        list.add(toutiao7);
        list.add(toutiao8);
        list.add(toutiao9);
        req.setAttribute("list",list);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
