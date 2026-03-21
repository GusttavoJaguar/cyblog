class Administrador < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  self.table_name = "administradors"

  devise :database_authenticatable, :recoverable, :registerable, :rememberable, :validatable
 
 
 
end
