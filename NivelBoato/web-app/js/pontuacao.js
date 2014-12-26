    function chamarAjaxCurtir(idBoato, idUsuario){
	    $.ajax({
		    url:"/NivelBoato/boato/ajaxCurtir",
		    dataType: 'json',
		    data: {
		        boato: idBoato,
		        usuario: idUsuario
		    },
		    success: function(data) {
		        if(data.jaCurtiu=='true'){
		        	alert('Você já aprovou!');	
		        }	        
		        $('#valorCurtidasBoato'+data.idBoato).text(data.curtidas);
		    },
		    error: function(request, status, error) {
		        alert(error)
		    },
		    complete: function() {
		    }
		});
	}   


