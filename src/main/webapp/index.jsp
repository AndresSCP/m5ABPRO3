<%
if (session.getAttribute("username") == null) {
    response.sendRedirect("login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/Style.css">
</head>
<body>
	<%@include file="extras/Navbar.jsp"%>
<div class="container">	
		<div class="row justify-content-center my-auto vh-100">
				<div class="col-md-4 col-lg-4 d-flex justify-content-center align-items-center mx-auto" id="quienesSomos">
					<h2>�Qui�nes somos?</h2>
				</div>
				<div class="col-md-6 col-lg-8 d-flex justify-content-center  align-items-center" id="parrafo1">
					<p>Somos una empresa especializada en asesor�as en prevenci�n
						de riesgos. Nuestro equipo de expertos cuenta con una amplia
						experiencia en el campo de la seguridad laboral y est�
						comprometido con brindar soluciones efectivas y personalizadas
						para garantizar la salud y seguridad de su personal y su entorno
						de trabajo. Nos enorgullece ofrecer una amplia gama de servicios,
						desde la evaluaci�n y gesti�n de riesgos hasta la capacitaci�n en
						seguridad, para ayudar a nuestros clientes a cumplir con los
						requisitos legales y mejorar continuamente sus pr�cticas de
						prevenci�n de riesgos. En resumen, estamos comprometidos con el
						�xito de nuestros clientes a trav�s de la prevenci�n de riesgos y
						la promoci�n de un entorno de trabajo seguro y saludable.</p>
				</div>
		</div>
</div>			
</body>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
	integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
	crossorigin="anonymous"></script>

<footer><%@include file="extras/footer.jsp"%></footer>
</html>