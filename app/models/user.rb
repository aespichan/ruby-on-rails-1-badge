# frozen_string_literal: true

class User < ApplicationRecord
  EMAIL_REGEX = /\A\S+@\S+\.\S+\z/.freeze

  has_many :user_skill
  has_many :skills, through: :user_skill

  validates :name, presence: true
  validates :email, presence: true, format: EMAIL_REGEX
end
