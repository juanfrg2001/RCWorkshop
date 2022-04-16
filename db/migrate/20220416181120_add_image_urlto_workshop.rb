class AddImageUrltoWorkshop < ActiveRecord::Migration[6.1]
  def change
    add_column :workshops, :image_url, :string
  end
end
