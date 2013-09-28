class CreateTypeAddresses < ActiveRecord::Migration
  def change
    create_table :type_addresses do |t|
      t.string :description
      t.datetime :inactevated_at

      t.timestamps
    end
  end
end
