class CreateEventos < ActiveRecord::Migration[8.0]
  def change
    create_table :eventos do |t|
      t.string :nome
      t.string :descricao
      t.string :local
      t.datetime :data
      t.string :link_ingresso

      t.timestamps
    end
  end
end
