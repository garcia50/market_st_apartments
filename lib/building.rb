class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(apt)
    @units << apt
  end

  def total_monthly_rent
    @units.reduce(0) do |sum, unit|
      sum + unit.monthly_rent
    end
  end

  def average_rent
    total_monthly_rent / units.count
  end

  def total_annual_rent
    total_monthly_rent * 12
  end

  def occupancy
    total_apt_renters = @units.select { |unit| unit.renter != nil }
    (total_apt_renters.count / units.count.to_f) * 100
  end
end



#@units.reduce =========
  # [apt1, apt2, apt3]
    # sum 
    # apt1 => unit
    # sum + 700
    # apt2 => unit
    # sum == 700
    # sum + 200
    # apt3 => unit
    # sum == 900
    # sum + 100
    # sum == 1000