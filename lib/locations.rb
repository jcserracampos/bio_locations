# Separar este model
class Location < ActiveRecord::Base
  def initialize(acronym, name, city)
      @acronym = acronym
  end
end

# Separar estas chamadas
Unidade.create(acronym: "PTA", name: "Paulista", city: "São Paulo")

unidade = Unidade.new(acronym: "SPJDN5", name: "Paulista", city: "São Paulo")
unidade.save

