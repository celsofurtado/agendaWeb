	//PEGANDO TODOS OS OBJETOS TEXT
	var nome = document.forms["frmContato"]["txtNome"];
	var logradouro = document.forms["frmContato"]["txtLogradouro"];
	
	//PEGANDO TODOS OS ELEMENTOS QUE VÃO EXIBIR A MSG DE ERRO
	var erro_nome = document.getElementById("erro_nome");
	var erro_logradouro = document.getElementById("erro_logradouro");
	
	function validate(){
		var valida = true;
		if (nome.value == ""){
			nome.style.border = "1px solid red";
			nome.style.background = "yellow";
			erro_nome.textContent = " *";
			nome.focus();
			valida = false;
		} else {
			nome.style.border = "1px solid";
			erro_nome.textContent = "";
			valida = true;
		}
		
		if (logradouro.value == ""){
			logradouro.style.border = "1px solid red";
			erro_logradouro.textContent = " *";
			logradouro.focus();
			valida = false;
		}
		
		return valida;
		
	}
