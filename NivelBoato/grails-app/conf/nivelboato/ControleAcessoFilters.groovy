package nivelboato

class ControleAcessoFilters {

	def filters = {
		all(controller:'*', action:'*') {
			before = {
				if(!session.user && !actionName.equals('logar')){
					redirect (uri:"/login")
				}
			}
			after = { Map model ->
			}
			afterView = { Exception e ->
			}
		}
		
		acessoIndex(uri:'/index') {
			before = {
				if(!session.user && !actionName.equals('logar')){
					redirect (uri:"/login")
				}
			}
		}
	}
}
