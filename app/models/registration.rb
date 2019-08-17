class Registration < ApplicationRecord
  validates :first_name, :last_name, :email, :course, presence: true
end