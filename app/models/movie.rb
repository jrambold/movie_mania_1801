class Movie < ApplicationRecord
  has_many :actor_movies
  has_many :actors, through: :actor_movies
  belongs_to :director
  has_many :genre_movies
  has_many :genres, through: :genre_movies
end
