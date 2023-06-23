package hotelapp

class Hotel {
    String name
    Country country
    Integer stars
    String website

    static belongsTo = Country

    static constraints = {
        name blank: false, maxSize: 255, unique: 'country'
        country blank: false
        stars blank: false, range: 1..5
        website nullable: true, url: true
    }
}
