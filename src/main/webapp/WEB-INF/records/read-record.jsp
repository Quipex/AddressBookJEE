<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="body" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body:genericpage pageTitle="${requestScope.fName} ${requestScope.lName} information">
    <p>
        <c:out value="First name: ${requestScope.fName}"/>
    </p>
    <p>
        <c:out value="Last name: ${requestScope.lName}"/>
    </p>
    <p>
        <c:out value="Address: ${requestScope.address}"/>
    </p>
</body:genericpage>
