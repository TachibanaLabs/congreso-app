class CreateRegistrars < ActiveRecord::Migration[5.2]
  def change
    create_table :registrars do |t|
      t.string :fullname
      t.string :titulo
      t.string :carrera
      t.string :institucion
      t.string :direccion
      t.string :ciudad
      t.integer :postal
      t.string :pais
      t.integer :telefono
      t.string :correo
      t.string :cartel
      t.string :delser
      t.string :adultez
      t.string :construccion
      t.string :quien
      t.string :como
      t.string :newmun
      t.string :desigualdad
      t.string :vende
      t.string :sustenta
      t.string :futuro

      t.timestamps
    end
  end
end
