class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :class_year
      t.string :message
      t.string :email

      t.timestamps
    end
  end
end
