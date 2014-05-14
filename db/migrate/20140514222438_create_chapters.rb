class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :title
      t.string :description
      t.integer :position

      t.timestamps
    end
  end
end
