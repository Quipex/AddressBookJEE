<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="body" tagdir="/WEB-INF/tags" %>

<body:genericpage pageTitle="Updating ${requestScope.fName} ${requestScope.lName}">
    <h1 class="mb-5">Updating information about ${requestScope.fName} ${requestScope.lName}</h1>
    <c:if test="${requestScope.errorMessage != null}">
        <div class="alert alert-danger" role="alert">
            <c:out value="${requestScope.errorMessage}"/>
        </div>
    </c:if>
    <form action="/records/update" method="post">
        <div class="form-group">
            <label for="firstName">First Name:</label>
            <input class="form-control" type="text" id="firstName" name="first-name" value="${requestScope.fName}"
                   readonly>
        </div>
        <div class="form-group">
            <label for="lastName">Last Name:</label>
            <input class="form-control" type="text" id="lastName" name="last-name" value="${requestScope.lName}"
                   readonly>
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <textarea class="form-control" name="address" id="address">${requestScope.address}</textarea>
        </div>
        <input class="btn btn-primary" type="submit" value="Update">
        <input class="btn btn-secondary" type="reset" value="Reset">
    </form>
</body:genericpage>
