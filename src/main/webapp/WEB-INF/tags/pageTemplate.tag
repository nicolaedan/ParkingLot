<%@ tag description="base page template" pageEncoding="UTF-8" %>
<%@attribute name="pageTitle"%>
<!DOCTYPE html>
<html>
<head>
    <title>${pageTitle}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<jsp:include page="/WEB-INF/pages/menu.jsp" />
<main class="container-fluid mt-5">

<jsp:doBody/>
</main>
</body>

<footer class="footer"> <jsp:include page="/WEB-INF/pages/footer.jsp" /></footer>
</html>