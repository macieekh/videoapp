class CreateChapterElements < ActiveRecord::Migration
  def change
    create_table :chapter_elements do |t|
      t.string :title
      t.string :description
      t.integer :position

      t.timestamps
    end
  end
end
