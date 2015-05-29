class AddFieldsToRevenue < ActiveRecord::Migration
  def change
    add_column :revenues, :description, :text
  end
end
