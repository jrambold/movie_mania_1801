class Genre < ApplicationRecord
  validates_presence_of :name
  has_many :genre_movies
  has_many :movies, through: :genre_movies

  def avg_rating
    movies.average(:rating)
  end
end
