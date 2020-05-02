class Funcionario < ApplicationRecord
  has_secure_password

  enum cargo: {
    admin: 1
  }
end
