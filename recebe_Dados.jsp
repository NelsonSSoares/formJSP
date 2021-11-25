<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dados Recebidos</title>
    </head>
    <body>
        <%
          String nome_txt, ra_txt, cpf_txt, datanasc_txt, email_txt, cel_txt, sexo_txt;
          String senha_txt, cep_txt, rua_txt,num_txt, comp_txt, bairro_txt, cidade_txt, estado_txt;
          
          nome_txt = request.getParameter("nome");
          ra_txt = request.getParameter("ra");
          cpf_txt = request.getParameter("cpf");
          datanasc_txt = request.getParameter("datanasc");
          email_txt = request.getParameter("email");
          cel_txt = request.getParameter("cel");
          sexo_txt = request.getParameter("sex");
          senha_txt = request.getParameter("senha");
          cep_txt = request.getParameter("cep");
          rua_txt = request.getParameter("rua");
          num_txt = request.getParameter("num");
          comp_txt = request.getParameter("comp");
          bairro_txt = request.getParameter("bairro");
          cidade_txt = request.getParameter("city");
          estado_txt = request.getParameter("est");
          
          out.print("Nome: " + nome_txt);
          out.print("<br>");
          out.print("RA :" + ra_txt);
          out.print("<br>");
          out.print("CPF :"+ cpf_txt);
          out.print("<br>");
          out.print("Data de Nascimento: " + datanasc_txt);
          out.print("<br>");
          out.print("Email: " + email_txt);
          out.print("<br>");
          out.print("Cel: " + cel_txt);
          out.print("<br>");
          out.print("Sexo: " + sexo_txt);
          out.print("<br>");
          out.print("Senha: " + senha_txt);
          out.print("<br>");
          out.print("CEP: " + cep_txt);
          out.print("<br>");
          out.print("Rua: " + rua_txt);
          out.print("<br>");
          out.print("Numero: " + num_txt);
          out.print("<br>");
          out.print("Complemento: " + comp_txt);
          out.print("<br>");
          out.print("Bairro: " + bairro_txt);
          out.print("<br>");
          out.print("Cidade: " + cidade_txt);
          out.print("<br>");
          out.print("Estado: " + estado_txt);
          out.print("<br>");
          
          

        %>
    </body>
</html>
