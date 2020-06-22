class ChangeDataTypeToLikes < ActiveRecord::Migration[5.2]
  def change
    change_column :likes, :video_id, :string
  end
end
