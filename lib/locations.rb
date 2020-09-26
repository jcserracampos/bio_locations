# frozen_string_literal: true

# Esta classe e responsavel por lidar com Unidades
class Locations
  def initialize(acronym, name, city)
    @acronym = acronym
    @name = name
    @city = city
  end

  def save
    @@db.execute "INSERT INTO Locations VALUES ('#{@acronym}', '#{@name}', '#{@city}');"
  end

  def self.all
    @locations = @@db.execute 'SELECT * FROM Locations'
    puts @locations
  end
end
