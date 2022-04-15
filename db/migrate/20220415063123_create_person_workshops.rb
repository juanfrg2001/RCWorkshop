class CreatePersonWorkshops < ActiveRecord::Migration[6.1]
  def change
    create_table :person_workshops do |t|
      t.string :person_name
      t.string :person_last_name
      t.string :person_telephone
      t.string :person_identification
      t.boolean :active
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
