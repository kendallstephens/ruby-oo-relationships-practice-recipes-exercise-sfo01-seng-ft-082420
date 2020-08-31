class Allergy
    attr_reader :user, :ingredient
    
    @@all = []

    def initialize(user, ingredient)
        @@all << self

        @user = user
        @ingredient = ingredient
    end

    # return all of the Allergy instances
    def self.all
        @@all
    end
end