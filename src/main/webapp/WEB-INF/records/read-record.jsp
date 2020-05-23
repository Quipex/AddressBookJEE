<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="body" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body:genericpage pageTitle="${requestScope.fName} ${requestScope.lName} information">
    <c:if test="${requestScope.errorMessage != null}">
        <div class="alert alert-danger" role="alert">
            <c:out value="${requestScope.errorMessage}"/>
        </div>
    </c:if>
    <form>
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
            <textarea class="form-control" name="address" id="address" readonly>${requestScope.address}</textarea>
        </div>
        <a class="btn btn-warning" href="/records/update?first-name=${requestScope.fName}&last-name=${requestScope.lName}">Edit</a>
        <a class="btn btn-danger" href="/records/delete?first-name=${requestScope.fName}&last-name=${requestScope.lName}">Delete</a>
    </form>
</body:genericpage>
