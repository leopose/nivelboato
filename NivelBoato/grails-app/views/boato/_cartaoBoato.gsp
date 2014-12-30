<g:each in="${listBoatoInstance}" var="boato">
    <div class="widget-window">
        <div class="window window-dark">
            <div class="window-block">
                <div class="knob">
                    <input class="knobItem" type="text" data-fgColor="#8CC152" data-readOnly=true data-bgColor="#FFFFFF" data-min="0" data-max="100" data-width="90" data-height="90" value="95"/>
                </div>
            </div>
            <div class="window-block">
                <h2> ${boato.titulo} </h2>
                <label>${boato.descricao}</label>
                <br/>
                <span class="text-muted">
                    <i class="fa fa-user"></i> ${boato.usuarioCadastro.nome} | <i class="fa fa-clock-o"></i> 
                    <g:formatDate format="dd-MM-yyyy" date="${boato.dataInicio}"/>
                </span>
                <p class="text-warning">
                    <i class="fa fa-bookmark">
                    </i> ${boato.categoria.descricao}
                </p> 
                <g:if test="${boato.pontuado}">
                    <button type="button" disabled data-boato="${boato.id}" class="curtir btn btn-success btn-xs" title="Já Pontuado">
                        <i class="fa fa-thumbs-up"></i> 
                        <span id="valorCurtidas"> ${boato.curtidas}</span>
                    </button>
                    <button type="button" disabled data-boato="${boato.id}" class="negar btn btn-danger btn-xs" title="Já Pontuado">
                        <i class="fa fa-thumbs-down"></i> 
                        <span id="valorNegadas"> ${boato.negadas}</span>
                    </button>
                </g:if>
                <g:else>
                    <button type="button" data-boato="${boato.id}" class="curtir btn btn-success btn-xs" title="Confirmar">
                        <i class="fa fa-thumbs-up"></i> 
                        <span id="valorCurtidas"> ${boato.curtidas}</span>
                    </button>
                    <button type="button" data-boato="${boato.id}" class="negar btn btn-danger btn-xs" title="Negar">
                        <i class="fa fa-thumbs-down"></i> 
                        <span id="valorNegadas"> ${boato.negadas}</span>
                    </button>
                </g:else>
            </div>
            <g:each in="${boato.tags}" var="tag">
                <div class="window-block"><i class="fa fa-tag"></i> ${tag.descricao}</div>
            </g:each>
        </div>
    </div>
</g:each>