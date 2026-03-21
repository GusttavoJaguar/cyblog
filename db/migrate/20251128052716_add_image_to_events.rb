class AddImageToEvents < ActiveRecord::Migration[8.0]
  def change
    add_column :eventos, :image_eventos, :string
  end
end
