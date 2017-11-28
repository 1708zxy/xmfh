package cn.tedu.pm.utils;

import javax.servlet.Servlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ValiImage extends HttpServlet implements Servlet {
    static  final long serialVersionUID=1L;
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws SecurityException,IOException{
        response.setHeader("Pragma","No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", -1);

        VerifyCode vc=new VerifyCode();
        vc.drawImage(response.getOutputStream());

        String valistr=vc.getCode();
        System.out.println(valistr);
        request.getSession().setAttribute("code",valistr);
    }
}
