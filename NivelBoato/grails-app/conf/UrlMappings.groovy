class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        //"/"(controller:"boato", action:"list")
        "/"(view: "index")
		"/index"(controller:"boato", action:"list")
		"/login"(view:"/login")
        "500"(view:'/error')
	}
}
