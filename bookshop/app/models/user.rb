class User < ActiveRecord::Base
  has_one :account #un usuario tiene una cuenta
  has_many :registers #un usuario tiene muchos registros
  has_many :books, through: :registers
  #un usuario tiene muchos registros atraves de la tabla registers 
end
