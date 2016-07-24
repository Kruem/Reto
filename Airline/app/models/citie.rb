class Citie < ActiveRecord::Base
  has_many :routes #una ciudad tiene muchas rutas
end
