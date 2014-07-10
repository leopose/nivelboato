<div class="block-content controls">

    <div class="row-form">
        <div class="col-md-3"><strong>Descrição:</strong></div>
        <div class="col-md-9"><g:textField name="descricao" class="form-control" value="${categoriaInstance?.descricao}"/></div>
    </div>

    <div class="row-form">
        <div class="col-md-3"><strong>Status:</strong></div>
        <div class="col-md-9">
            <div class="form-group">
                <div class="radio radio-inline">
                    <label>
                        <input type="radio" name="status" value="1"> Ativo
                    </label>
                </div>                                    
                <div class="radio radio-inline">
                    <label>
                        <input type="radio"  name="status" value="0"> Desativo
                    </label>
                </div>      
            </div>
        </div>                                            
    </div>
</div>