class AddActiveToPicks < ActiveRecord::Migration[5.0]
  def change
    add_column :picks, :active, :boolean
  end
end
