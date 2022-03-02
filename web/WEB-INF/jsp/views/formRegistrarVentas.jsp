<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="cabecera.jsp" %>
        <H1 style="clear:both"> &nbsp;</H1>
        <div class="content">
            <div class="card border-info">
                <div class="card header bg-info">
                    <h1>Agregar Ventas....</h1>                    
                </div>
                <div class="carb body">
                    <form:form commandName="venta" method="post">
                         <form:errors path="*"></form:errors><br><br>
                        <form:label path="Cod_Venta" cssClass="input-group-addon">Codigo de la venta: </form:label>
                        <form:input path="Cod_Venta" cssClass="form-control"></form:input>

                        <form:label path="id_cliente" cssClass="input-group-addon">Codigo del cliente</form:label>
                        <form:select path="id_cliente" cssClass="form-control">
                            <c:forEach var="dato" items="${idClientes}" >
                                <option value="${dato.id}">${dato.nombre}</OPTION>
                            </c:forEach>
                        </form:select>
                        <form:label path="fecha_venta" cssClass="input-group-addon">Fecha Venta: </form:label>
                        <form:input path="fecha_venta" cssClass="form-control"></form:input>
                        <form:label path="cod_producto" cssClass="input-group-addon">Codigo Producto: </form:label>
                        <form:select path="cod_producto" cssClass="form-control">
                            <c:forEach var="prod" items="${idProductos}" >
                                <option value="${prod.cod_producto}">${prod.nombre}</OPTION>
                            </c:forEach>                            
                        </form:select>
                        <form:button value="Enviar_datos" class="btn btn-primary btn-md">
                            Enviar Datos
                        </form:button>
                            <input type="reset" value="Limpiar..." class="btn btn-primary btn-md"/>
                            <a href="formVenta.htm" class="btn btn-primary btn-md"> Regresar<a/>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
    <div class="footer" >
        <p>SENA 2021 @ Derechos Reservado </p>
    </div>
    </body>
</html>
