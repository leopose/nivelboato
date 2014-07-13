<div class="block-content controls">

    <div class="row-form">
        <g:hiddenField name="id" value="${categoriaInstance?.id}" />
        <div class="col-md-3"><strong>Descrição:</strong></div>
        <div class="col-md-9"><g:textField name="descricao" class="form-control" value="${categoriaInstance?.descricao}"/></div>
    </div>

    <div class="row-form">
        <div class="col-md-3"><strong>Status:</strong></div>
        <div class="col-md-9">
            <div class="form-group">
                <div class="radio radio-inline">
                    <label>
                        <g:radio name="status" value="1" checked="${categoriaInstance?.status==true}"/>Ativo
                    </label>
                </div>                                    
                <div class="radio radio-inline">
                    <label>
                        <g:radio name="status" value="0" checked="${categoriaInstance?.status==false}"/> Desativo
                    </label>
                </div><br/>
                <g:message code="${flash.message}"/>
            </div>
        </div>                                            
    </div>
</div>