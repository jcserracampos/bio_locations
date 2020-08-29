require 'active_record'

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "biolocations.db"
)

ActiveRecord::Schema.define do
    create_table :unidades do | table | 
        table.column :acronym, :string
        table.column :name, :string
        table.column :cidade, :string
    end
end

class Unidade < ActiveRecord::Base
end

Unidade.create(acronym: "PTA", name: "Paulista", cidade: "São Paulo")

unidade = Unidade.new(acronym: "SPJDN5", name: "Paulista", cidade: "São Paulo")
unidade.save