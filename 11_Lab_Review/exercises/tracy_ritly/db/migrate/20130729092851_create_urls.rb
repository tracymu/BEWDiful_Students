class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :name
      t.string :hash_code

      t.timestamps
    end
  end
end
