# frozen_string_literal: true

class AddFieldsToLeads < ActiveRecord::Migration[5.2]
  def change
    change_table(:leads) do |t|
      t.string :title, :career, :institution, :address, :city, :postal_code,
               :country, :phone_number, null: false, limit: 60, default: ''
      t.boolean :student, default: false
      t.integer :paper, :symposium, :table_discussion
    end
  end
end
