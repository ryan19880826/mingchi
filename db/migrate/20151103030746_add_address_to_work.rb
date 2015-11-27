class AddAddressToWork < ActiveRecord::Migration
  def change
    add_column :works, :address, :string
    add_column :works, :footage, :string
  end
end
