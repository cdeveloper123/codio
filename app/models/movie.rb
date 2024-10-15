class Movie < ActiveRecord::Base
  def self.all_ratings
    # Return an array of all ratings from the database, removing duplicates
    pluck(:rating).uniq
  end

  def self.with_ratings(ratings_list)
    if ratings_list.nil? || ratings_list.empty?
      # If no ratings are specified, return all movies
      all
    else
      #Return movies where the rating is in the ratings_list
      where(rating: ratings_list)
    end
  end
 end
