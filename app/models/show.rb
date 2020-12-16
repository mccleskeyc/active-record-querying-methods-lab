class Show < ActiveRecord::Base
    def self.highest_rating
        #return highest value in the ratings column -- maximum method
        self.maximum(:rating)
    end

    def self.most_popular_show
        #returns show highest rating, use above method as helper
        self.where("rating =?", self.highest_rating).first
    end

    def self.lowest_rating
        # lowest value in the ratings column
        self.minimum(:rating)
    end

    def self.least_popular_show
        #show with the lowest rating
        self.where("rating =?", self.lowest_rating).first
    end

    def self.ratings_sum
        #sum of all ratings
        self.sum(:rating)
    end

    def self.popular_shows
        #an array of all the shows that have a rating > 5; use where method
        self.where("rating >=?", 5)
    end

    def self.shows_by_alphabetical_order
        #array with them sorted in alphabetical order, use order method
        self.order(:name)
    end
end