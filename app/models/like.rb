class Like < ApplicationRecord
  belongs_to :user
  validates :user_id, uniqueness: { scope: :video_id}
end
