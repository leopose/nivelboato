$(document).ready(function(){
	dadosUsuario();
});

function dadosUsuario(){
	$.ajax({
		url:'/NivelBoato/usuario/usuarioLogado',
		success: function(dados){
			$('#nomeUsuario').html(dados.nome);
			$('#perfilUsuario').html(dados.perfil);
			$('#avatarUsuario').attr("src","/NivelBoato/img/samples/users/user.png");
		}
	});
};