class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :comments
  has_many :questions
  has_many :answers_authored, class_name: Answer, foreign_key: :author
  has_many :answer_recieved, through: :questions, source: :answers
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
