<%-- 
    Document   : resultado
    Created on : 11/08/2019, 02:15:11 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link   rel="stylesheet" href="css/style.css" type="text/css"><link>
        <title>JSP Page</title>
    </head>
    <body>
        <%   
            int valindividual = 2500;
            int valdoble = 4600;
            int valfamiliar = 5200;
            int resultado = 0;
            double valprecioI = 0;
            double valpreciodes = 0;
            double iva = 16;
            int sum = 0;

            String canth = request.getParameter("canth");
            String dias = request.getParameter("dias");
            
            int cantidadHuesped = Integer.parseInt(canth);
            int cantidadDias = Integer.parseInt(dias);
            
            if(cantidadHuesped == 1){
                resultado = cantidadDias * valindividual;
                valprecioI = resultado + resultado*(iva/100) ;
                valpreciodes = valprecioI * 5/100;
                valpreciodes = valprecioI - valpreciodes;
               }
            if(cantidadHuesped == 2){
                resultado = cantidadDias * valdoble;
                resultado = cantidadDias * valindividual;
                valprecioI = resultado + resultado *(iva/100);
                valpreciodes = valprecioI * 9/100;
                valpreciodes = valprecioI - valpreciodes;
              }
            if(cantidadHuesped > 3){
                resultado = cantidadDias * valfamiliar;
                resultado = cantidadDias * valindividual;
                valprecioI = resultado + resultado *(iva/100);
                valpreciodes = valprecioI * 15/100;
                valpreciodes = valprecioI - valpreciodes;
               }
         %>   
         
          
           <div id="resultado">         
                <h1>Costo del hospedaje</h1>
                <p>Valor Sin Iva: <%out.println(resultado);%></p>
                <p>Valor con Iva: <%out.println(valprecioI);%></p>
                <p>Valor con descuento: <%out.println( valpreciodes);%></p>
              
            </div>
         
         
    </body>
</html>
