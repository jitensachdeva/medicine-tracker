class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :gender
      t.date :dob
      t.text :notes

      t.timestamps
    end
  end
end
