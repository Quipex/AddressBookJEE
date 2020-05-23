<%@ page import="com.softserve.itacademy.addressbook.AddressBookExtractor" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="body" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body:genericpage pageTitle="All records">
    <c:if test="${requestScope.errorMessage != null}">
        <div class="alert alert-danger" role="alert">
            <c:out value="${requestScope.errorMessage}"/>
        </div>
    </c:if>
    <p>
        Sort:
        <a href="/records/list?sort=asc">ascending</a> |
        <a href="/records/list?sort=desc">descending</a>
    </p>
    <div class="card shadow-lg p-3 mb-5 bg-white rounded vh-50">
        <div class="card-body">
            <table class="table table-bordered" >
                <thead class="thead-dark">
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Address</th>
                    <th colspan="3">Operations</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.recordsIterator}" var="record">
                    <tr>
                        <td>
                                ${AddressBookExtractor.getFName(record)}
                        </td>
                        <td>
                                ${AddressBookExtractor.getLName(record)}
                        </td>
                        <td>
                                ${AddressBookExtractor.getAddr(record)}
                        </td>
                        <td>
                            <a href="/records/read?first-name=${AddressBookExtractor.getFName(record)}&last-name=${AddressBookExtractor.getLName(record)}">Read</a>
                        </td>
                        <td>
                            <a href="/records/update?first-name=${AddressBookExtractor.getFName(record)}&last-name=${AddressBookExtractor.getLName(record)}">Edit</a>
                        </td>
                        <td>
                            <a href="/records/delete?first-name=${AddressBookExtractor.getFName(record)}&last-name=${AddressBookExtractor.getLName(record)}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body:genericpage>
