class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :comments
  has_many :questions, foreign_key: :author_id
  has_many :answers_authored, class_name: Answer, foreign_key: :author
  has_many :answers_received, through: :questions, source: :answers
  has_many :votes
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end


end
