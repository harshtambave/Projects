<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
  <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            .table{
                width: 75%;
            }
            
            #b{
            	background-color: #8AB4F8;
            	color: #202124;
            	font: 13px;
            	margin: 0px 8px 0px 0px;
            	padding: 8px 16px;
            }
        </style>
        <script>
        function printForm() {
            window.open("", "Print", "width=800,height=600");
            window.print();
        }
        </script>
    </head>
<body>
<body>
        <div class="jumbotron">
            <h1>Katraj Dairy</h1>
        </div>
       
        <%
            String cname=request.getParameter("cname");
            String toc=request.getParameter("toc");
            String tom=request.getParameter("tom");
            String rate=request.getParameter("rate");
            String qty=request.getParameter("qty");
            String bill=request.getParameter("bill");
            String gst1=request.getParameter("gst1");
            String gst=request.getParameter("gst");
            String fbill=request.getParameter("fbill");
           
            out.print("<center><table class='table table-bordered'>");
           
            if(toc.equals("Distributor"))
            {
                out.print("<tr><th>Customer Name</th><th>Type of Customer</th><th>Type of Milk</th><th>Rate</th><th>Quantity</th><th>Bill</th><th>GST</th><th>GST</th><th>Final Bill</th></tr>");
                out.print("<tr><td>"+cname+"</td><td>"+toc+"</td><td>"+tom+"</td><td>"+rate+"</td><td>"+qty+"</td><td>"+bill+"</td><td>"+gst1+"</td><td>"+gst+"</td><td>"+fbill+"</td></tr>");
            }
            else
            {
                out.print("<tr><th>Customer Name</th><th>Type of Customer</th><th>Type of Milk</th><th>Rate</th><th>Quantity</th><th>Bill</th></tr>");
                out.print("<tr><td>"+cname+"</td><td>"+toc+"</td><td>"+tom+"</td><td>"+rate+"</td><td>"+qty+"</td><td>"+bill+"</td></tr>");
            }
           
            out.print("</table><br><button id='b' onclick='printForm()'>Print</button></center>");
        %>
</body>
</html>


   
    