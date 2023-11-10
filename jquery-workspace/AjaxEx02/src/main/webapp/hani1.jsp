<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%--@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import var="xmlData" url="https://www.hani.co.kr/rss/lead/" />
${ xmlData }
