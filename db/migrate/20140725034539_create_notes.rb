class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :note
      t.string :image

      t.timestamps
    end
  end
end
