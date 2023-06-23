package hotelapp

class HotelController {

    HotelService hotelService
    CountryService countryService

    def maxPerPage = 10

    def index(){
        params.max = maxPerPage
        def hotels = hotelService.search(params)
        respond hotels, model: [hotelCount: hotels.getTotalCount(), countries: Country.listOrderByName()]
    }

    def create(){
        def countriesNames = countryService.getCountriesNames()
        respond new Hotel(params), model: [countries: Country.listOrderByName()]
    }

    def edit(Hotel hotel){
        respond hotel, model: [countries: Country.listOrderByName()]
    }

    def delete(Hotel hotel){
        hotelService.delete(hotel)
        redirect action: 'index'
    }

    def update(Hotel hotel,Long countryId){
        try{
            Country country = Country.findById(countryId)
            hotel.country = country
            hotelService.save(hotel)
            redirect action: 'show', id: hotel.id
        }
        catch(e){
            flash.message = e.message
            redirect uri: request.getHeader('referer')
        }
    }

    def show(Hotel hotel){
        respond hotel
    }
}
