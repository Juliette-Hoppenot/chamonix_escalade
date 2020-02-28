class Inscription < ApplicationRecord
  validates :first_name, :last_name, :email, :phone, :birth_date, presence: true, uniqueness: true
end
