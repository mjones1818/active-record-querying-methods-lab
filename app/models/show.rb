require 'pry'
class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    most_popular = Show.highest_rating
    result = Show.find_by(rating:most_popular)
    result
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    least_popular = Show.lowest_rating
    Show.find_by(rating:least_popular)
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("Rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end
end