class AddImageToUsers < ActiveRecord::Migration
  def change
    add_column :notes, :image, :string
  end
end
