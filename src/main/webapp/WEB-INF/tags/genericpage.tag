<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@tag description="Overall Page template" pageEncoding="UTF-8" isELIgnored="false" %>
<%@attribute name="pageTitle" required="true" %>
<html>
<head>
    <link rel="stylesheet" href="/assets/css/styles.css">
    <link rel="stylesheet" href="<c:url value="/assets/css/styles.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/vendor/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/vendor/animate/animate.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/vendor/select2/select2.min.css"/>">
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/assets/vendor/perfect-scrollbar/perfect-scrollbar.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/util.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/main.css"/>">
    <link rel="icon" href="<c:url value="/assets/favicon512.png"/>" type="image/png">
    <title>${pageTitle}</title>
</head>
<body>
<%@include file="../common/header.html" %>
<div id="body">
    <jsp:doBody/>
</div>
<%@include file="../common/footer.html" %>
</body>
</html>
