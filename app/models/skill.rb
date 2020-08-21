# frozen_string_literal: true

class Skill < ApplicationRecord
  has_many :user_skill
  has_many :user, through: :user_skill

  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
end
