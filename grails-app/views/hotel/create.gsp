<!DOCTYPE html>
<html xmlns:g="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="main" />
    <title>Add country</title>
</head>
<body>
<h1>Добавить отель</h1>
<div class="pt-3 pb-3">
    <g:form action="update">
        <div class="pt-1"><label>Название: <g:textField name="name" value="${hotel.name}"/></label></div>
        <div class="pt-1">
            <label>Страна :
                <g:select name="countryId" from="${countries}" value="${params.searchCountryName}"
                          optionKey="id" optionValue="name" noSelection="${[null: 'Выберите страну']}"/>
            </label>
        </div>
        <!--<div class="pt-1">
            <label>
                <g:field type="search" name="test" list="countries" autocomplete="true"></g:field>
                <datalist id="countries">
                    <g:each var="country" in="${countries}">
                        <option value="${country.id}">${country.name}</option>
                    </g:each>
                </datalist>
            </label>
        </div> -->
        <div class="pt-1"><label>Звездность : <g:field type="number" min="1" max="5" name="stars" value="${hotel.stars}"/></label></div>
        <div class="pt-1"><label>Сайт : <g:textField name="website" value="${hotel.website}"/></label></div>
        <div class="pt-1"><input type="submit" value="Добавить"/></div>
    </g:form>
</div>
<g:if test="${flash.message}">
    <h2>${flash.message}</h2>
</g:if>
</body>
</html>
