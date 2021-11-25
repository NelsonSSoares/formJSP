function buscaCep(cep){
    if(cep != '' && cep.length === 8){
            
        try {
            const reqcep = $.ajax({
                url: `https://viacep.com.br/ws/${cep}/json/`, 
                async: false,
            //    type: 'GET',
            //    dataType: 'JSON'
            }).responseJSON;
            
            if(reqcep.erro !== true){
                $('#rua').prop('disabled', false);
                $('#bairro').prop('disabled', false);
                $('#cidade').prop('disabled', false);
                $('#city').prop('disabled', false);
                $('#est').prop('disabled', false);
                $('#rua').val(`${reqcep.logradouro}`);
                $('#num').prop('disabled', false).focus();
                $('#comp').prop('disabled', false); 
                $('#bairro').val(`${reqcep.bairro}`);
                $('#city').val(`${reqcep.localidade}`);
                $('#est').val(`${reqcep.uf}`);
            }else{
                $('#tituloErro').html('CEP Não Encontrado');
                $('#msgErro').html(`Houve um erro durante a Busca do CEP! \n Tente novamente, use Somente NUMEROS! \n Erro: ${error}`);
                $('#showModalError').modal('show');
            }
            
        } catch (error) {
            $('#tituloErro').html('Erro!');
            $('#msgErro').html(`Houve um erro durante a Busca do CEP! \n Tente novamente, use Somente NUMEROS! \n Erro: ${error}`);
            $('#showModalError').modal('show');
        }
        
    }else{
        $('#tituloErro').html('Dados invalidos!');
        $('#msgErro').html('Verifique se Digitou o CEP corretamente! \n Use Somente NUMEROS!');
        $('#showModalError').modal('show');
    }
}