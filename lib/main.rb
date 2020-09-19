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
