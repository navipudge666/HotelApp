<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <title>Countries</title>
    </head>
    <body>
        <div class="pt-3">
            <g:link action="create" class="btn btn-secondary">Добавить страну</g:link>
        </div>
        <div >
            <table class="table">
                <tr>
                    <th>Страна</th>
                    <th>Столица</th>
                    <th></th>
                </tr>
                <g:each in="${countryList}">
                    <tr>
                        <td>${it.name}</td>
                        <td>${it.capital}</td>
                        <td><g:link action="show" id="${it.id}">Управлять</g:link></td>
                    </tr>
                </g:each>
            </table>
        </div>
        <div class="pagination">
            <g:paginate params="${params}" action="index" total="${countryCount}" />
        </div>
    </body>
</html>