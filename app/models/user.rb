### User
# username: string, not_full, unique
# email: string, not_full, unique
# password_digest: string, not_full
# name: string, not_full
class User < ApplicationRecord
  #Atributo deve ser password e não password_digest
  has_secure_password
  validates :username, :email, :password_confirmation, :password, presence: true
  validates :username,:email, uniqueness: true
  #Não é necessário criar um atributo password_confirmation
  validates_confirmation_of :password
end
