class Micropost < ActiveRecord::Base
  attr_accessible :content
  validates  :user_id, presence: true
  # Verifies non-empty content and limits lenght to 140 chars
  validates :content, presence: true, length: { maximum: 140 }

  belongs_to :user
  
  default_scope order: 'microposts.created_at DESC'

end
