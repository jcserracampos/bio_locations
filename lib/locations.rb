# Separar este model
class Locations
  def initialize(acronym, name, city)
      @acronym = acronym
      @name = name
      @city = city
  end

  def save
    @@db.execute "INSERT INTO Locations VALUES ('#{@acronym}', '#{@name}', '#{@city}');"
  end
end
