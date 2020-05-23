<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@tag description="Overall Page template" pageEncoding="UTF-8" isELIgnored="false" %>
<%@attribute name="pageTitle" required="true" %>
<html>
<head>
<%--    я уже  и так --%>
    <link rel="stylesheet" href="/assets/styles.css">
<%--    и сяк, хз че с этими файлами ресурсов... --%>
    <link rel="stylesheet" href="<c:url value="/assets/styles.css"/>">
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
