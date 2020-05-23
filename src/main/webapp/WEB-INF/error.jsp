<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="body" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body:genericpage pageTitle="${requestScope.errorCode} error">
    <div class="row h-50">
        <div class="col-sm-12 my-auto">
            <h1 class="text-center">
                <c:out value="${requestScope.errorCode}"/>
            </h1>
            <h2 class="text-center">
                <c:out value="${requestScope.errorMessage}"/>
            </h2>
        </div>
    </div>
</body:genericpage>
