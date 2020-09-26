# frozen_string_literal: true
require_relative 'database_connectors.rb'

# Comentario
class Application
  def initialize
    @database = DatabaseConnectors.new('BioLocations.db')

    @database.execute('CREATE TABLE IF NOT EXISTS Locations(acronym TEXT, name TEXT, city TEXT)')
    @database.execute 'CREATE TABLE IF NOT EXISTS LocationGroups(name TEXT, acronym TEXT, brand TEXT)'
  end
end
