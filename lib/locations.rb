# frozen_string_literal: true

require_relative 'application.rb'

# Esta classe e responsavel por lidar com Unidades
class Locations < Application
  def initialize(acronym, name, city)
    @acronym = acronym
    @name = name
    @city = city
  end

  def save
    @database.execute "INSERT INTO Locations VALUES ('#{@acronym}', '#{@name}', '#{@city}');"
  end

  def self.all
    @locations = @database.execute 'SELECT * FROM Locations'
    return @locations unless @locations.empty?
  end
end
