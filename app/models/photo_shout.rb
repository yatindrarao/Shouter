class PhotoShout < ApplicationRecord
  has_attached_file :image, styles:{
    shout: "200x200"
  }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :image, presence: true
end
