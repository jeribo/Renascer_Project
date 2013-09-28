class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.belongs_to :city
      t.belongs_to :state
      t.belongs_to :person
      t.string :street
      t.string :number
      t.string :complement

      t.timestamps
    end
    add_index :addresses, :city_id
    add_index :addresses, :state_id
    add_index :addresses, :person_id
  end
end
