require 'pry'
class Owner
  attr_accessor :name, :pets
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  # def pets
  #   @pets[:fishes] = []
  #   @pets[:dogs] = []
  #   @pets[:cats] = []
  #   @pets
  # end

  def buy_fish(fish)
    pet = Fish.new(fish)
    @pets[:fishes] << pet
    @pets[:fishes]
  end

  def buy_cat(cat)
    pet = Cat.new(cat)
    @pets[:cats] << pet
    @pets[:cats]
  end

  def buy_dog(dog)
    pet = Dog.new(dog)
    @pets[:dogs] << pet
    @pets[:dogs]
  end

  def walk_dogs
    dogs = @pets[:dogs]
    dogs.collect do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    cats = @pets[:cats]
    cats.collect do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    fish = @pets[:fishes]
    fish.collect do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.collect do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    @pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end
