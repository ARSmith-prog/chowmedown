class Recipe < ApplicationRecord


  validates :title, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :directions, presence: true


end