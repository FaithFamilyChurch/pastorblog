class AddBackgroundimageToContent < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :backgroundimage, :text
  end
end
