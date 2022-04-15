class CreateWorkshops < ActiveRecord::Migration[6.1]
  def change
    create_table :workshops do |t|
      t.string :name
      t.boolean :active
      t.references :city, null: false, foreign_key: true
      t.references :person_workshop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
