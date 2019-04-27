<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>clase1</title>

	<style>
		#derecho {
			float: right;
			width: 15%;
		}

		#izquierdo {
			float: left;
			width: 20%;
			padding: 1%;
		}

		#titulo {
			text-align: center;
			border-bottom: solid;
		}
		
		#principal{
			margin-left: 21%;
			padding: 1%;
		}

		footer{

			font-style: italic;
			background-color: #cccccc;
			height: 10%;
			padding: 1%;
			box-sizing: border-box;
			font-weight: bold;
		}

		nav{
			position: fixed;
			width: 100%;
			height: 12%;
			margin-top: -1%;
			background-color: #ffffff;



		}
		#p1{
			position: relative;
			height: 100%;
			top: 12%
		}
	</style>
        <script src="Jquery/jquery-1.6.3.min.js"></script>
        <script src="js/script1.js">
            
        </script>
</head>
<body>
	<nav>
		<h1 id="titulo">Clase 1 de tecnologias de la informacion</h1>
	</nav>
	<div id="p1">
		<aside id="izquierdo">
			<h3>
				Barra lateral
			</h3>
			<p>
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
			</p>
		</aside>


		<aside id="derecho">
			<img src="imagen1.png">
		</aside>

		
		<div id="principal">
			<h2>
				Section 1
			</h2>
			<p>
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
			</p>

			<p>
				"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
			</p>
                        
                        <%for (int i = 0; i < 5; i++){%>
                        <p>
                            hola <%out.print(i); %> 
                        </p>
                            
                        <%}%>                        

		</div>




	</div>
	<footer>
		Clase de Tecnologias de la informacion©
		<br>
		Taller de Ingenieria de Software
	</footer>

</body>
</html>