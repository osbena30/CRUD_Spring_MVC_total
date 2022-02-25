<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="cabecera.jsp" %>
<H1 style="clear:both"> &nbsp;</H1>
        <div class="content">
            <div class="card border-info">
                <div class="card header bg-info">
                    <h1>Modificar Clientes</h1>                    
                </div>
                <div class="carb body">
<!-----------  carga del formulario con forms            -->                    
                    <form:form commandName="cliente" method="post">
                        <form:errors path="*"></form:errors><br><br>
                        <form:label path="nombre" cssClass="input-group-addon">Digite el Nombre: </form:label>
                        <form:input path="nombre" cssClass="form-control"></form:input>

                        <form:label path="direccion" cssClass="input-group-addon">
                            Digite la Dirección: 
                        </form:label>
                        <form:input path="direccion" cssClass="form-control"></form:input>
                        <form:label path="correo" cssClass="input-group-addon">Digite el e-Mail: </form:label>
                        <form:input path="correo" cssClass="form-control"></form:input>
                        <form:label path="telefono" cssClass="input-group-addon">Digite el Teléfono: </form:label>
                        <form:input path="telefono" cssClass="form-control"></form:input>
                        <form:label path="salario" cssClass="input-group-addon">Digite el salario: </form:label>
                        <form:input path="salario" cssClass="form-control"></form:input>
                        <form:button value="Enviar_datos" class="btn btn-primary btn-md">
                            Enviar Datos
                        </form:button>
                            <input type="reset" value="Limpiar..." class="btn btn-primary btn-md"/>
                            <a href="formCliente.htm" class="btn btn-primary btn-md">Regresar<a/>
                    </form:form>
<!-----------  fin del form            -->
<!--                    <form action="" method="post">

                        <label  Class="input-group-addon">Digite el Nombre: </label>
                        <input type="text" name="nombre" Class="form-control"
                               value='<c:out value="${cli[0].nombre}"></c:out>' />
                        <label  Class="input-group-addon">Digite la Dirección: </label>
                        <input type="text" name="direccion" Class="form-control" 
                               value='<c:out value="${cli[0].direccion}"></c:out>' />
                        
                        <label name="correo" Class="input-group-addon">Digite el e-Mail: </label>
                        <input type="text" name="correo" Class="form-control"
                               value="<c:out value="${cli[0].correo}"></c:out>" />
                        
                        <label name="telefono" Class="input-group-addon">Digite el Teléfono: </label>
                        <input type="text" name="telefono" Class="form-control"
                               value="<c:out value="${cli[0].telefono}"></c:out>" />
                        
                        <label name="salario" Class="input-group-addon">Digite el salario: </label>
                        <input type="text" name="salario"  Class="form-control" 
                               value="<c:out value="${cli[0].salario}"></c:out>"/>

                        <input type="submit" name="btnEnviar" value="Actualizar_datos" class="btn btn-primary btn-md" />
                        <input type="reset" value="Limpiar..." class="btn btn-primary btn-md"/>
                        <a href="formCliente.htm" class="btn btn-primary btn-md">Regresar<a/>
                    </form>
-->
                </div>
            </div>
        </div>
    </div>
    <div class="footer" >
        <p>SENA 2021 @ Derechos Reservado </p>
    </div>
    </body>
</html>
