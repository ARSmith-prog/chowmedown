class Dog < ApplicationRecord

  belongs_to :user, :optional => true
  has_many :recipes

  validates :name, presence: true
  validates :age, presence: true


end
