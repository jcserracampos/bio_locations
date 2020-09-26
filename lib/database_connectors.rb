# frozen_string_literal: true

# Responsavel por executar comandos no banco
class DatabaseConnectors
  require 'sqlite3'

  def initialize(database_name)
    @db = SQLite3::Database.new database_name
  end

  def execute(sql)
    @db.execute sql
  end
end
