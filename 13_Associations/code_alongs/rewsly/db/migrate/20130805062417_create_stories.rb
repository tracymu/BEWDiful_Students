class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :headline
      t.text :content

      t.timestamps
    end
  end
end
