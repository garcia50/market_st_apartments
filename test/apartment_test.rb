require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/apartment'

class ApartmentTest < Minitest::Test

  def test_correct_apt_number_is_returned
    a1 = Apartment.new(number: 1)
    
    assert_equal 1, a1.number
  end

  def test_correct_monthly_rent_is_returned
    a1 = Apartment.new(monthly_rent: 800)
    
    assert_equal 800, a1.monthly_rent
  end

  def test_correct_amount_of_bathrooms_is_returned
    a1 = Apartment.new(bathrooms: 1)

    assert_equal 1, a1.bathrooms 
  end

  def test_correct_amount_of_bedrooms_is_returned
    a1 = Apartment.new(bedrooms: 2)

    assert_equal 2, a1.bedrooms 
  end

  def test_new_apt_has_no_renter
    a1 = Apartment.new({number: 2})

    assert_equal nil, a1.renter 
  end

  def test_renter_can_be_added_to_apt
    a1 = Apartment.new({})
    joe = Renter.new('Joe')
    a1.add_renter(joe)

    assert_equal joe, a1.renter
  end

end
























