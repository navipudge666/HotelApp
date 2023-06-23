package hotelapp

class CountryController {

    CountryService countryService
    def maxPerPage = 10

    def index(){
        params.max = maxPerPage
        respond Country.listOrderByName(params), model: [countryCount: Country.count()]
    }

    def create(){
        respond new Country(params)
    }

    def edit(Country country){
        respond country
    }

    def update(Country country){
        try{
            countryService.save(country)
            redirect action: 'show', id: country.id
        }
        catch(e){
            e.printStackTrace()
            flash.message = "Illegal argument"
            redirect uri: request.getHeader('referer')
        }

    }

    def show(Country country){
        respond country
    }

    def delete(Country country){
        countryService.delete(country)
        redirect action: 'index'
    }

}
