require 'sqlite3'

require_relative 'Locations'

# Criando o banco de dados e a tabela
@@db = SQLite3::Database.new 'locations.db'

@@db.execute 'CREATE TABLE IF NOT EXISTS Locations(acronym TEXT, name TEXT, city TEXT)'
@@db.execute 'CREATE TABLE IF NOT EXISTS LocationGroups(name TEXT, acronym TEXT, brand TEXT)'

location = Locations.new("PTA", "Paulista", "São Paulo")
location.save
