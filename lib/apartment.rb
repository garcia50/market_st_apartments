class Apartment
  attr_reader :number, 
              :monthly_rent, 
              :bathrooms,
              :bedrooms,
              :renter

  def initialize(apt_data)
    @number = apt_data[:number]
    @monthly_rent = apt_data[:monthly_rent]
    @bathrooms = apt_data[:bathrooms]
    @bedrooms = apt_data[:bedrooms]
  end

  def add_renter(renter)
    @renter = renter 
    
  end
end
