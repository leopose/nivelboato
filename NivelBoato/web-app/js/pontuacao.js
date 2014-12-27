    $(document).ready(function(){

    	$(".curtir").on("click",function(){
    		var elem = $(this);
    		pontuar(elem,"negar");

		});

		$(".negar").on("click",function(){
    		var elem = $(this);
    		pontuar(elem,"curtir");

		});

    	function pontuar(elem,tipoPar) {
    			

    		elem.fadeTo(250,0.7,function(){
    			var totalPontuado = elem.find('span');
    			totalPontuado.html(parseInt(totalPontuado.html())+1);
    			elem.attr("disabled",true);
    			var idBoato = elem.attr('data-boato');

    			var parPontuado = $.find('button[data-boato='+idBoato+'][class*='+tipoPar+']')[0];
    			parPontuado.disabled = true;
    			
    			//Salva no banco a nova curtida
		    	$.ajax({
				    url:"/NivelBoato/boato/ajaxPontuar",
				    dataType: 'json',
				    data: {
				        boato: idBoato,
				        pontuado: tipoPar ==="curtir" ? false : true
				    },
				    success: function(data) {
				        if(data.jaCurtiu=='true'){
				        	alert('Você já pontuou este boato!');	
				        }	        
				        totalPontuado.html(data.pontuado);
				    },
				    error: function(request, status, error) {
				        alert(error)
				    },
				    complete: function() {
				    }
				});

    		});

    	}


    });
  


