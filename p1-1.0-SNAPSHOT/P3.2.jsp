<%-- 
    Document   : P3.2
    Created on : 7 Kas 2023, 23:45:32
    Author     : bsra_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
     <%

                        if (request.getParameter("name") != null && request.getParameter("password") != null) {
                            String name = new String(request.getParameter("name").getBytes("ISO-8859-9"), "UTF-8");
                            String password = new String(request.getParameter("password").getBytes("ISO-8859-9"), "UTF-8");

                            String isim = "Busraevin";
                            String sifre = "12345";

                            if (name == null || password == null) {
                                out.println("İsim veya Şifre Alanı Boş Bırakılamaz");
                            }

                            if (name.trim().length() < 1 && password.trim().length() < 1) {
                                out.println("Boş Giremezsin");
                            } else {
                                if (name.trim().length() < 1 || password.trim().length() < 1) {
                                    out.println("İsim veya Şifre Boş Bırakılamaz");
                                } else {
                                    if (isim.equals(request.getParameter("name")) && sifre.equals(request.getParameter("password"))) {
                                        out.println("Giriş Başarılı");
                                    } else {
                                        out.println("Giriş Başarısız! İsim veya Şifrenizi Yanlış Girdiniz");

                                    }
                                }
                            }

                        }

                    %>
</body>
</html>
