class AddImageLinkToPicks < ActiveRecord::Migration[5.0]
  def change
    add_column :picks, :image_link, :text
  end
end
