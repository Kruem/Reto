class Register < ActiveRecord::Base
  belongs_to :User #un registro tiene un usuario
  belongs_to :book #un registro tiene un libro

end
