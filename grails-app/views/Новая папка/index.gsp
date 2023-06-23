<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Hotels</title>
</head>
<body>
<div class="pt-3">
    <button class="btn-secondary" g:link>
        <g:link action="create">Добавить страну</g:link>
    </button>
</div>
<div >
    <table class="table">
        <tr>
            <th>Название</th>
            <th>Страна</th>
            <th>Звездность</th>
            <th>Сайт</th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
        <g:each var="hotel" in="${hotelList}">
            <tr>
                <td>${hotel.name}</td>
                <td>${hotel.country.name}</td>
                <td>
                    <g:each var="i" in="${1..5}">
                        <g:if test="${i <= hotel.stars}">&#9733;</g:if>
                        <g:else>&#9734;</g:else>
                    </g:each>
                </td>
                <td>${hotel.website}</td>
                <td><g:link action="show" id="${hotel.id}">Подробнее</g:link></td>
                <td><g:link action="edit" id="${hotel.id}">Изменить</g:link></td>
                <td><g:link action="delete" id="${hotel.id}">Удалить</g:link></td>
            </tr>
        </g:each>
        <g:paginate action="index" max="2" total="${hotelCount}" />
    </table>
</div>
</body>
</html>