<!DOCTYPE html>
<html xmlns:g="http://www.w3.org/1999/html">
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'country.label', default: 'Country')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <h1>Добавить страну</h1>
    <div class="pt-3 pb-3">
        <g:form action="update">
            <div class="pt-1"><label>Название: <g:textField name="name" value="${country.name}"/></label></div>
            <div class="pt-1"><label>Столица : <g:textField name="capital" value="${country.capital}"/></label></div>
            <div class="pt-1"><input type="submit" value="Добавить"/></div>
        </g:form>
    </div>
        <g:if test="${flash.message}">
            <h2>${flash.message}</h2>
        </g:if>
    </body>
</html>
