class AddSlugColumnToEventos < ActiveRecord::Migration[8.0]
  def change
    add_column :eventos, :slug, :string
    add_index :eventos, :slug, unique: true
  end
end
