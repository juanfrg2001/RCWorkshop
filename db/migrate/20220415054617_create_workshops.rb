class CreateWorkshops < ActiveRecord::Migration[6.1]
  def change
    create_table :workshops do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :finish_date
      t.boolean :active
      t.references :city, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.refernces :person_representation_workshop

      t.timestamps
    end
  end
end
