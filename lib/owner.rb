class Owner
  # code goes here
  
    attr_reader :species
    attr_accessor :name, :pets
        @@all = []

   
     def initialize(species)
        @species = species
        @@all << self
        @pets = {:fishes => [], :dogs => [], :cats => []}
     end

  

    def self.all
      @@all 
    end

    def self.count
      @@all.length
    end

    def self.reset_all
      @@all = []
    end

    def say_species
        return "I am a #{@species}."
    end

    def buy_fish(name)
      @pets[:fishes] << Fish.new(name)
    end

    def buy_cat(name)
      @pets[:cats] << Cat.new(name)
    end

    def buy_dog(name)
      @pets[:dogs] << Dog.new(name)
    end

    def walk_dogs
      
    end
end