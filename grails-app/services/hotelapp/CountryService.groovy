package hotelapp

import grails.gorm.transactions.Transactional

@Transactional
class CountryService {

    def save(Country country){
        if (!country.save())
            throw new IllegalArgumentException()
    }

    def delete(Country country){
        country.delete(flush: true)
    }

    def getCountriesNames(){
        return Country.list().collect{it -> it.name}
    }
}
