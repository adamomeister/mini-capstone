class AddSupplierIdToSuppliers < ActiveRecord::Migration[5.2]
  def change
    add_column :suppliers, :supplier_id, :string
  end
end
