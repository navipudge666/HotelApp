<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Hotels</title>
</head>
<body>
    <div class="pt-3">
        <g:link action="create" class="btn btn-secondary">Добавить отель</g:link>
    </div>
    <div class="search pt-3">
        <g:form method="GET">
            <label>
                Поиск по названию:
                <g:field type="search" name="searchName" placeholder="Введите название" width="20" value="${params.searchName}"></g:field>
            </label>

            <label>Страна :
                <g:select name="searchCountryName" from="${countries}" value="${params.searchCountryName}"
                          optionKey="name" optionValue="name" noSelection="${[null: 'Любая']}"/>
            </label>
            <input type="submit" value="Искать"/>
        </g:form>
    </div>
    <div>
        <div class="table">
            <g:if test="${hotelCount == 0}">
                <p>По вашему запросу ничего не найдено</p>
            </g:if>
            <g:else>
                <p>Количество отелей, удовлетвоящих фильтру: ${hotelCount}</p>
            </g:else>
            <table>
                <tr>
                    <th>Название</th>
                    <th>Страна</th>
                    <th>Звездность</th>
                    <th>Сайт</th>
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
                        <td>
                            <g:if test="${hotel.website}">
                                <a href="${hotel.website}" target="_blank">Перейти на сайт</a>
                            </g:if>

                        </td>
                        <td><g:link action="show" id="${hotel.id}">Управлять</g:link></td>
                    </tr>
                </g:each>
            </table>
        </div>

        <div class="pagination">
            <g:paginate params="${params}" action="index" total="${hotelCount}" />
        </div>
    </div>
</body>
</html>