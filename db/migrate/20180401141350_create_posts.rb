class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :nombre
      t.text :contenido
      t.integer :autor

      t.date :fecha
      t.time :hora
      t.integer :principal
      t.references :user

      t.timestamps null: false
    end
  end
end
