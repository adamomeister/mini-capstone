class RemoveSupplierIdFromSuppliers < ActiveRecord::Migration[5.2]
  def change
    remove_column :suppliers, :supplier_id, :string
  end
end
