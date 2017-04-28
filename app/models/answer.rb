class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :author, class_name: User
  has_many :votes, as: :votable
  belongs_to :commentable, polymorphic: true
  belongs_to :question
end
