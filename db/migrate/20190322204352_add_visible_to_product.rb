class AddVisibleToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :visible, :boolean, default: true
  end
end
