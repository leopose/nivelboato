

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class NewGroovyClassController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond NewGroovyClass.list(params), model:[newGroovyClassInstanceCount: NewGroovyClass.count()]
    }

    def show(NewGroovyClass newGroovyClassInstance) {
        respond newGroovyClassInstance
    }

    def create() {
        respond new NewGroovyClass(params)
    }

    @Transactional
    def save(NewGroovyClass newGroovyClassInstance) {
        if (newGroovyClassInstance == null) {
            notFound()
            return
        }

        if (newGroovyClassInstance.hasErrors()) {
            respond newGroovyClassInstance.errors, view:'create'
            return
        }

        newGroovyClassInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'newGroovyClass.label', default: 'NewGroovyClass'), newGroovyClassInstance.id])
                redirect newGroovyClassInstance
            }
            '*' { respond newGroovyClassInstance, [status: CREATED] }
        }
    }

    def edit(NewGroovyClass newGroovyClassInstance) {
        respond newGroovyClassInstance
    }

    @Transactional
    def update(NewGroovyClass newGroovyClassInstance) {
        if (newGroovyClassInstance == null) {
            notFound()
            return
        }

        if (newGroovyClassInstance.hasErrors()) {
            respond newGroovyClassInstance.errors, view:'edit'
            return
        }

        newGroovyClassInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'NewGroovyClass.label', default: 'NewGroovyClass'), newGroovyClassInstance.id])
                redirect newGroovyClassInstance
            }
            '*'{ respond newGroovyClassInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(NewGroovyClass newGroovyClassInstance) {

        if (newGroovyClassInstance == null) {
            notFound()
            return
        }

        newGroovyClassInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'NewGroovyClass.label', default: 'NewGroovyClass'), newGroovyClassInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'newGroovyClass.label', default: 'NewGroovyClass'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
