class Recipe < ApplicationRecord

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  has_many :comments

  validates :title, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :directions, presence: true

end
