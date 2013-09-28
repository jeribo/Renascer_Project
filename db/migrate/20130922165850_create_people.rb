class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :federal_id
      t.string :regional_id
      t.date :birthday
      t.string :email
      t.string :mothers_name
      t.string :fathers_name

      t.timestamps
    end
  end
end
