class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :title
      t.string :name
      t.string :bio
      t.references :department, null: false, foreign_key: true
      t.string :email
      t.string :password
      t.string :password_digest
      t.string :image_url
      t.boolean :doc

      t.timestamps
    end
  end
end
