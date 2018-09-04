# frozen_string_literal: true

class Lead < ApplicationRecord
  validates :name, :email, presence: true, allow_blank: false
  has_one_attached :summary
  has_one_attached :file
end
