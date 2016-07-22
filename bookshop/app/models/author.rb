class Author < ActiveRecord::Base
  has_many :books #un author tiene muchos libros
end
