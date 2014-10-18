class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/boato/list")
		"/index"(view:"/boato/list")
		"/login"(view:"/login")
        "500"(view:'/error')
	}
}
