class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :commenter, {class_name: "User"}
  validates :body, presence: true
end
