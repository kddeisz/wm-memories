# frozen_string_literal: true
class Admin < ApplicationRecord

  validates :email, presence: true, uniqueness: true, format: Subscription::EMAIL_REGEX

end
