document.getElementById("btnPesquisar").addEventListener("click", function(event){
    event.preventDefault()
});

document.getElementById("btnLimparEnd").addEventListener("click", function(event){
    event.preventDefault()
});

document.getElementById("btnClean").addEventListener("click", function(event){
    event.preventDefault()
});
/*
document.getElementById("btnCadastrar").addEventListener("click", function(event){
    event.preventDefault()
});
*/
$('#email').focusin(function (){
    let efocus = document.createElement('p');
    efocus.setAttribute('id', 'efocus');
    efocus.style.color = 'green';
    efocus.innerHTML = 'Este sera seu usuário';
    document.getElementById('demail').appendChild(efocus);
})
$('#email').focusout(function (){
    $('#efocus').remove()
})
$('#senha').focusin(function (){
    let efocus = document.createElement('p');
    efocus.setAttribute('id', 'efocus');
    efocus.style.color = 'green';
    efocus.innerHTML = 'Nunca revele sua senha';
    document.getElementById('dsenha').appendChild(efocus);
})
$('#senha').focusout(function (){
    $('#efocus').remove()
})

function somenteNumeros(num) {
    var er = /[^0-9.]/;
    er.lastIndex = 0;
    var campo = num;
    if (er.test(campo.value)) {
      campo.value = "";
    }
}



function limparCampos(){
    $('#nome').val('');
    $('#datanasc').val('');
    $('#cel').val('');
    $('#sex').val('');
    $('#ra').val('');
    $('#email').val('');
    $('#estciv').val('');
    $('#id').val('');
    $('#senha').val('');
    $('#cep').val('');
    $('#rua').val('');
    $('#num').val('');
    $('#comp').val('');
    $('#bairro').val('');
    $('#city').val('');
    $('#est').val('');
   
}

/*view*/
function limparCEP(){
    $('#cep').val('');
    $('#rua').val('');
    $('#num').val('');
    $('#comp').val('');
    $('#bairro').val('');
    $('#city').val('');
    $('#est').val('');
}
function pesquisaCEP(){
   
    let cep = $('#cep').val();
    
    buscaCep(cep)
        
}