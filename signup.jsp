
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <%@include file="header.jsp" %>
        <title>Cadastre-se</title>
    </head>
    <body>
        <div class="container ">
            <h1 class="text-center">Preencha o formulario para efetivar seu cadastro</h1>
            
            <form action="recebe_Dados.jsp" name="dadosCadastro" method="post">
                <div class="row justify-content-center align-items-center">
               
                    <div class="form-group col-12 col-md-6 col-lg-3">
                        <label for="nome"> Nome:</label>
                        <input class="form-control" type="text" name="nome" id="nome" placeholder="Manoel" required autofocus size="50" maxlength="50">
                    </div>
                    <div class="form-group col-12 col-md-6 col-lg-3">
                        <label for="nome">RA:</label>
                        <input class="form-control" type="number" name="ra" id="ra" placeholder="420104490" required  maxlength="9" onkeyup="somenteNumeros(this)">
                    </div>
                    <div class="form-group col-12 col-md-6 col-lg-3">
                        <label for="nome">CPF:</label>
                        <input class="form-control" type="number" name="cpf" id="cpf" placeholder="12345678910" required  maxlength="11"onkeyup="somenteNumeros(this)">
                    </div>
                    <div class="form-group col-12 col-md-6 col-lg-3">
                        <label for="nome">Data de Nascimento:</label>
                        <input class="form-control" type="date" name="datanasc" id="datanasc" placeholder="05/09/1988" value="" required>
                    </div>
                </div>
                 <div class="row justify-content-center">
                <div class="form-group col-12 col-md-6 col-lg-3" id="demail">
                    <label for="email">Email:</label>
                    <input class="form-control" type="email" name="email" id="email" placeholder="exemplo@exemplar.com.br" size="50" required maxlength="50" onblur="validacaoEmail(this)">
                </div>
                <div class="form-group col-12 col-md-6 col-lg-3">
                    <label for="nome">Tel/Cel:</label>
                    <input class="form-control" type="number" name="cel" id="cel" placeholder="11912349321" required maxlength="11" onkeyup="somenteNumeros(this)">
                </div>
                <div class="form-group col-12 col-md-6 col-lg-3">
                    <label for="sex">Sexo:</label>
                    <select class="form-control" name="sex" id="sex" required>
                      <option value="">Escolha</option>
                      <option value="mc">Masculino Cis</option>
                      <option value="fc">Feminino Cis</option>
                      <option value="mt">Masculino Trans</option>
                      <option value="ft">Feminino Trans</option>
                      <option value="gnb">Genero não-Binário</option>
                    </select>
                  </div>
                <div class="form-group col-12 col-md-6 col-lg-3" id="dsenha">
                    <label for="senha">Senha:</label>
                    <input class="form-control" type="password" name="senha" id="senha" placeholder="*********" size="50" required maxlength="50">
                </div>
            </div>
            
            <div class="row justify-content-center">
                <div class="row mt-5"><!--Endereço-->
                   
    
                    <div class="form-group  col-12 col-md-6 " >
                      <label for="cep">CEP:</label>
                      <input class="form-control" type="number" name="cep" id="cep" placeholder="00000000"  maxlength="8" onkeyup="somenteNumeros(this)">
                    </div>
                   
                    <div class="form-group mt-2 col-12 col-md-6 align-self-center">
                      <button class="btn btn-outline-success mt-3" id="btnPesquisar" type="submit" onclick="pesquisaCEP()">Pesquisar Cep </button>
                      <button class="btn btn-outline-danger mt-3 " id="btnLimparEnd" type="submit" onclick="limparCEP()">Limpar Endereço </button>
                      <button class="btn btn-outline-danger mt-3 " id="btnClean" type="submit" onclick="limparCampos()">Limpar Tudo </button>
                    </div>
                    
                  </div>
    
                  <div class="row">
                    <div class="form-group col-12 col-md-6 col-lg-4">
                      <label for="rua">Rua:</label>
                      <input class="form-control" disabled type="text" name="rua" id="rua" required>
                    </div>
                    <div class="form-group col-12 col-md-6 col-lg-4">
                      <label for="num">Numero:</label>
                      <input class="form-control" disabled type="number" name="num" id="num" onkeyup="somenteNumeros(this)">
                    </div>
                  
                    <div class="form-group col-12 col-md-6 col-lg-4">
                      <label for="comp">Complemento:</label>
                      <input class="form-control" disabled type="text" name="comp" id="comp">
                    </div>
                    <div class="form-group col-12 col-md-6 col-lg-4">
                      <label for="bairro">Bairro:</label>
                      <input class="form-control" disabled type="text" name="bairro" id="bairro" required>
                    </div>
                     
                    <div class="form-group col-12 col-md-6 col-lg-4">
                      <label for="city">Cidade:</label>
                      <input class="form-control" disabled type="text" name="city" id="city" required>
                    </div>
                    <div class="form-group col-12 col-md-6 col-lg-4">
                      <label for="est">Estado:</label>
                      <input class="form-control" disabled type="text" name="est" id="est" required>
                    </div>
                    
                    <div class="form-group mt-2 mb-5 mb-md-0 col-12 align-self-center">
                      <button class="btn btn-outline-success col-12 mt-1 " id="btnCadastrar" type="submit" onclick="cadastrar()">Cadastrar</button>  
                    </div>
    
                    <div class="mb-5"></div>
                  </div><!--/Endereço-->
            </div>
                

            </form>
        
        <%--<%@include file="footer.jsp" %>--%>
        </div>
            <!--Modal-->
       <div class="modal" tabindex="-1" id="showModalError">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title text-danger" id="tituloErro"></h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <p id="msgErro"></p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-outline-danger" id="btnErrorModal" data-bs-dismiss="modal">Fechar</button>
            </div>
          </div>
        </div>
      </div>
      <!--/Modal-->
      
       <!--Jquery | Bootstrap-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
      
          <script src="cadastroView.js"></script>
          <script src="cadastroController.js"></script>

   
        <%@include file="script.js" %>
    </body>
</html>
