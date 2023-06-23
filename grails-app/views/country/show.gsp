<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'country.label', default: 'Country')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
    <div>
        <h1>${country.name}</h1>
        <h3>Столица: ${country.capital}</h3>
        <h3>Список отелей:</h3>
        <div class="pt-3 pb-3">
            <g:each var="hotel" in="${country.hotels}">
                <h5 class="pl-4">${hotel.name}</h5>
            </g:each>
        </div>
    </div>
    <div class="pb-1 pt-1">
        <td><g:link action="edit" id="${country.id}" class="btn btn-secondary">Изменить</g:link></td>
        <td><g:link action="delete" id="${country.id}" class="btn btn-danger">Удалить</g:link></td>
    </div>
    </body>
</html>
