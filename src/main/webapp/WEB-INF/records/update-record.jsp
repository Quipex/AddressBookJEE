<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="body" tagdir="/WEB-INF/tags" %>

<body:genericpage pageTitle="Updating ${requestScope.fName} ${requestScope.lName}">
    <c:if test="${requestScope.error != null}">
        <c:out value="${requestScope.error}"/>
    </c:if>
    <form action="/records/update" method="post">
        <table class="record">
            <tr>
                <td><label for="firstName">First Name:</label></td>
                <td>
                    <input type="text" id="firstName" name="first-name" value="${requestScope.fName}" readonly="readonly">
                </td>
            </tr>
            <tr>
                <td><label for="lastName">Last Name:</label></td>
                <td>
                    <input type="text" id="lastName" name="first-name" value="${requestScope.lName}" readonly="readonly">
                </td>
            </tr>
            <tr>
                <td><label for="address">Address:</label></td>
                <td><textarea name="address" id="address">${requestScope.address}</textarea></td>
            </tr>
            <tr>
                <td><input type="submit" value="Update"></td>
                <td><input type="reset" value="Reset"></td>
            </tr>
        </table>
    </form>
</body:genericpage>
