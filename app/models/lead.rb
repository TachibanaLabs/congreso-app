class Lead < ApplicationRecord
  validates :name, :email, presence: true, allow_blank: false
end