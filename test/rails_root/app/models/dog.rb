class Dog < ActiveRecord::Base
  belongs_to :user, :foreign_key => :owner_id
  belongs_to :address
  has_many :treats
  has_and_belongs_to_many :fleas, :join_table => :fleas
  validates_presence_of :treats, :fleas
end
