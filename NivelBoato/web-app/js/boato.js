
$(document).ready(function(){

	$("input[id*='data']").datepicker({ minDate: -0, dateFormat: 'dd/mm/yy',
                dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'],
                dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
                dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
                monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
                monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez']});


     $('#maisBoatos').on('click',function(){
     	$.ajax({
		    url: hostPrincipal + "/boato/listaCartaoBoato",
		    success: function(data) {
		       
		        $('#cartaoBoatos').append(data).hide().fadeIn(1000);
		        $('.knobItem').knob();
		    },
		    error: function(request, status, error) {
		        alert(error);
		    }
		});
     });

     $("#formBoato").validationEngine('attach',{promptPosition : "topLeft", binded: false}); 
});



