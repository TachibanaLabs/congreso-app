# frozen_string_literal: true

class Lead < ApplicationRecord
  validates :name, :email, presence: true, allow_blank: false
end
