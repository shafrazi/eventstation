class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :contact_no
      t.string :website
      t.float :rating
      t.string :type
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
