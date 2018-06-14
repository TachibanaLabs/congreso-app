class CreatePres < ActiveRecord::Migration[5.2]
  def change
    create_table :pres do |t|
      t.string :nombre
      t.string :correo

      t.timestamps
    end
  end
end
