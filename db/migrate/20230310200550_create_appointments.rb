class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.string :start_date
      t.string :end_date
      t.string :title
      t.string :location
      t.string :notes

      t.timestamps
    end
  end
end
