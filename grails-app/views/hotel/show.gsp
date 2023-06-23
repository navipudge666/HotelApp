<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'hotel.label', default: 'Hotel')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div>
            <h1>${hotel.name}</h1>
            <h2>Страна: ${hotel.country.name}</h2>
            <h2>Звёздность:
                <g:each var="i" in="${1..5}">
                    <g:if test="${i <= hotel.stars}">&#9733;</g:if>
                    <g:else>&#9734;</g:else>
                </g:each>
            </h2>
            <g:if test="${hotel.website}">
                <h2><a href="${hotel.website}" target="_blank">Вебсайт</a></h2>
            </g:if>
            </div>
        <div class="pb-1 pt-1">
            <td><g:link action="edit" id="${hotel.id}" class="btn btn-secondary">Изменить</g:link></td>
            <td><g:link action="delete" id="${hotel.id}" class="btn btn-danger">Удалить</g:link></td>
        </div>
    </body>
</html>
