package hotelapp

import groovy.transform.CompileStatic

@CompileStatic
class BootStrap {

    CountryService countryService
    HotelService hotelService

    def init = { servletContext ->
        def random = new Random()
        for (def i in 1..15){
            Country country = new Country(name: "Country-${i}", capital: "Capital-${i}").save()
            for (def j in 1..5){
                def hotel = new Hotel(name: "Example Hotel ${i}-${j}", country: country, stars: random.nextInt(5) + 1,
                        website: random.nextBoolean()?"https://site.com":null).save()
            }
        }
    }
    def destroy = {
    }
}
