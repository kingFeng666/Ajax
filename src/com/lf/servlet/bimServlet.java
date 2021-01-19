package com.lf.servlet;

import java.io.IOException;

public class bimServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response)
            throws javax.servlet.ServletException, IOException {


    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response)
            throws javax.servlet.ServletException, IOException {
        //第一步接收参数
        String name = request.getParameter("name");
        String w = request.getParameter("w");
        String h = request.getParameter("h");
        //第二步就是处理参数
        float wight=Float.valueOf(w);
        float height=Float.valueOf(h);
        float bim=wight/(height*height);
        String msg="";
        if (bim>=18.5){
            msg="您的体重偏瘦";
        }else if (bim>18.5&&bim<22.9){
            msg="您的体重合格";
        }else{
            msg="您的体重肥胖";
        }
        msg=name+"先生"+"您的bim指标为"+bim+msg;
        //把数据存入到request中去
        request.setAttribute("msg",msg);
        //然后把数据发送到页面展示
        request.getRequestDispatcher("/result.jsp").forward(request,response);



    }
}
