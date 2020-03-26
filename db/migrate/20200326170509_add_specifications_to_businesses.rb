class AddSpecificationsToBusinesses < ActiveRecord::Migration[6.0]
  def change
    add_column :businesses, :specifications, :hstore
  end
end
