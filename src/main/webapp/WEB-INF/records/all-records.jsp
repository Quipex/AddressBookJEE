<%@ page import="com.softserve.itacademy.addressbook.AddressBookExtractor" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="body" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body:genericpage pageTitle="All records">
    <p>
        Sort:
        <a href="/records/list?sort=asc">ascending</a> |
        <a href="/records/list?sort=desc">descending</a>
    </p>
    <table class="">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Address</th>
            <th colspan="3">Operations</th>
        </tr>
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
                    <a href="/records/read?fName=${AddressBookExtractor.getFName(record)}&lName=${AddressBookExtractor.getLName(record)}">Read</a>
                </td>
                <td>
                    <a href="/records/update?fName=${AddressBookExtractor.getFName(record)}&lName=${AddressBookExtractor.getLName(record)}">Edit</a>
                </td>
                <td>
                    <a href="/records/delete?fName=${AddressBookExtractor.getFName(record)}&lName=${AddressBookExtractor.getLName(record)}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body:genericpage>
