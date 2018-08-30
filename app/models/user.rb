# frozen_string_literal: true

# User only for backoffice purposes
class User < ApplicationRecord
  include Clearance::User
end
