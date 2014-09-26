$(document).ready(function() {

	carregarTabela();
	
	$("#tabCategorias tbody").on("click",'button', function() {
			var id = $(this).attr("id");
			var $btn = $(this);
			bootbox.dialog({
				message : "Confirma a exclusão da categoria?",
				title : "Excluir Categoria",
				buttons : {
					success : {
						label : "Ok",
						className : "btn-success",
						callback : function() {
							$.ajax({
								url : "remove/" + id
							})
							$('#'+id).attr('disabled','true')
							.parents('tr').find('#status').removeAttr('checked')
						}
					},
					danger : {
						label : "Cancelar"
					}
				}
			});
	});
	
	

});


function carregarTabela() {
	$('#tabCategorias').DataTable({
		"ajax" : {"url" : '../categoria/listaTodas'},
		"language": {"url" : "../js/plugins/datatables/Portuguese-Brasil.json"
		    },
		"columns": [
		            { "data": "id" },
		            { "data": "dataCadastro"},
		            { "data": "descricao" },
		            { "data": null,
		            	"render": 
		            		function (data) {
		        	    		var caixa = ' type="checkbox" name="status" disabled="disabled" id="status">';
		        	    		return caixa = ((data.status == true) ? '<input checked="true"'+ caixa : '<input' + caixa);	
		        	    	}
		            },
		            { "data": "usuarioCadastro" },
		            { "data" : null, "orderable": false,
		            	"render":
		            		function (data) {
			        	    	var btn = ' type="button" style="margin:5px" id="'+ data.id +'" class="btn btn-danger"' + 
		       	    		 	'title="Desativar"><i class="fa fa-trash-o"></i></button></center>';
			        	    	btn = ((data.status == true) ? '<button' + btn : '<button disabled="true"' + btn);
			        	    	return btn = '<center><a href="../categoria/edit/'+data.id+'" class="btn btn-success"><i class="fa fa-pencil"></i> Editar</a>' + btn; 
		            	}
		            }
		          ]
	});
}






