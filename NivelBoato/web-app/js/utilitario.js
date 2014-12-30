var hostPrincipal = window.location.host === "localhost:8080" ? "http://localhost:8080/NivelBoato" : window.location.origin;

$(document).ready(function(){
	dadosUsuario();
});

function dadosUsuario(){
	$.ajax({
		url:hostPrincipal + '/usuario/usuarioLogado',
		success: function(dados){
			$('#nomeUsuario').html(dados.nome);
			$('#perfilUsuario').html(dados.perfil);
			$('#avatarUsuario').attr("src", hostPrincipal + "/img/samples/users/user.png");
		}
	});
};