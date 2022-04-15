class CreatePersonRepresentationWorkshops < ActiveRecord::Migration[6.1]
  def change
    create_table :person_representation_workshops do |t|
      t.string :representation_name
      t.string :representation_last_name
      t.string :representation_identification
      t.string :representation_birthday
      t.string :representation_telephone
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
