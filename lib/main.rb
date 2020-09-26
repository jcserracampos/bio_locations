# frozen_string_literal: true

require_relative 'locations.rb'

location = Locations.new('SPCJDN1', 'Jardim Paulista', 'São Paulo')
location.save

Locations.all
