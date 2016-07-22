class Book < ActiveRecord::Base
  belongs_to :author #un libro pertenee a un auhor
end
