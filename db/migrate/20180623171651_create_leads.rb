# frozen_string_literal: true

class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.timestamps
    end

    drop_table :pres
  end
end
