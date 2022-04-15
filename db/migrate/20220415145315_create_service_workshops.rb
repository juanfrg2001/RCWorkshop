class CreateServiceWorkshops < ActiveRecord::Migration[6.1]
  def change
    create_table :service_workshops do |t|
      t.string :name
      t.string :objective
      t.string :duration
      t.string :car_specialization
      t.references :workshop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
