require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/building'

class BuildingTest < Minitest::Test

  def test_new_building_has_no_units
    building = Building.new

    assert_equal [], building.units
  end

  def test_apartment_can_be_added_to_buiding
    building = Building.new
    a1 = Apartment.new({})
    building.add_unit(a1)

    assert_equal [a1], building.units
  end

  def test_muitiple_apt_can_be_added
    building = Building.new
    a1 = Apartment.new({number: 1})
    building.add_unit(a1)
    a2 = Apartment.new({number: 2})
    building.add_unit(a2)

    assert_equal [a1, a2], building.units
  end

  def test_correct_average_rent_is_returned
    building = Building.new
    a1 = Apartment.new({number: 1, monthly_rent: 700})
    building.add_unit(a1)
    a2 = Apartment.new({number: 2, monthly_rent: 950})
    building.add_unit(a2)

    assert_equal 825, building.average_rent
  end

  def test_total_annual_rent_is_returned
    building = Building.new
    a1 = Apartment.new({number: 1, monthly_rent: 700})
    building.add_unit(a1)

    assert_equal 8400, building.total_annual_rent
  end

  def test_building_with_no_renters_has_zero_occupancy
    building = Building.new
    a1 = Apartment.new({number: 1, monthly_rent: 700})
    building.add_unit(a1)
    a2 = Apartment.new({number: 2, monthly_rent: 950})
    building.add_unit(a2)

    assert_equal 0.0, building.occupancy
  end

  def test_building_has_50_percent_occupancy
    building = Building.new
    a1 = Apartment.new({number: 1, monthly_rent: 700})
    joe = Renter.new('Joe')
    a1.add_renter(joe)
    building.add_unit(a1)
    a2 = Apartment.new({number: 2, monthly_rent: 950})
    building.add_unit(a2)

    assert_equal 50.0, building.occupancy
  end
end


























