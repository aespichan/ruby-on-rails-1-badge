# frozen_string_literal: true

class CreateUserSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :user_skills do |t|
      t.references :user
      t.references :skill

      t.timestamps
    end
  end
end
