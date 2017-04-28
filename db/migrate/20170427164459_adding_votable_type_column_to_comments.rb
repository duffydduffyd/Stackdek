class AddingVotableTypeColumnToComments < ActiveRecord::Migration
  def change
    add_column(:comments, :votable_type, :string)
  end
end
