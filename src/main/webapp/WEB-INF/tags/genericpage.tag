<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@tag description="Overall Page template" pageEncoding="UTF-8" isELIgnored="false" %>
<%@attribute name="pageTitle" required="true" %>
<html>
<head>
    <link rel="stylesheet" href="<c:url value="/assets/styles.css"/>">
    <link rel="icon" href="<c:url value="/assets/favicon512.png"/>" type="image/png">
    <!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>${pageTitle}</title>
</head>
<body>
<%@include file="../common/header.html" %>
<main role="main" class="container">
    <jsp:doBody/>
</main>
<%@include file="../common/footer.html" %>
</body>
<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</html>
