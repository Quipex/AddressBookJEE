<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="body" tagdir="/WEB-INF/tags" %>
<body:genericpage pageTitle="Create new record">
    <c:if test="${requestScope.errorMessage != null}">
        <h2>
            <c:out value="${requestScope.errorMessage}"/>
        </h2>
    </c:if>
    <form action="/records/create" method="post">
        <table class="record">
            <tr>
                <td><label for="firstName">First Name:</label></td>
                <td><input type="text" id="firstName" name="firstName"></td>
            </tr>
            <tr>
                <td><label for="lastName">Last Name:</label></td>
                <td><input type="text" id="lastName" name="lastName"></td>
            </tr>
            <tr>
                <td><label for="address">Address:</label></td>
                <td><textarea name="address" id="address"></textarea></td>
            </tr>
            <tr>
                <td><input type="submit"></td>
                <td><input type="reset"></td>
            </tr>
        </table>
    </form>
</body:genericpage>
