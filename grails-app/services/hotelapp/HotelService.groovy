package hotelapp

import grails.gorm.transactions.Transactional

@Transactional
class HotelService {
    def messageSource
    def locale = Locale.getDefault()

    def save(Hotel hotel){
        if (!hotel.save()) {
            def message = hotel.errors.allErrors.collect { it ->
                messageSource.getMessage(it, locale)
            }.join(';\n')
            throw new IllegalArgumentException(message)
        }
    }

    def delete(Hotel hotel){
        hotel.delete()
    }

    def search(params){
        def criteria = Hotel.createCriteria()
        def searchCountry = params.searchCountryName? Country.findByName(params.searchCountryName) : null
        return criteria.list (max: params.max, offset: params.offset) {
            if (params.searchName) {
                ilike('name', "%${params.searchName}%")
            }
            if (searchCountry) {
                eq('country', searchCountry)
            }
            order('stars', 'desc')
            order('name', 'asc')
        }
    }

}
