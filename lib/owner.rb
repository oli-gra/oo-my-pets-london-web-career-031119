
require "pry"

class Owner
  # code goes here
  @@all = []
  @pets = {}

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    @@all << self
    @species = "human"
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end


    def buy_cat(name)
      pets[:cats] << Cat.new(name)
    end


      def buy_dog(name)
        pets[:dogs] << Dog.new(name)
      end

      def walk_dogs
        pets.each do |sp,ary|
          if sp == :dogs
            ary.each do |dog|
              dog.mood = "happy"
            end
          end
        end
      end

      def play_with_cats
        pets.each do |sp,ary|
          if sp == :cats
            ary.each do |cat|
              cat.mood = "happy"
            end
          end
        end
      end

      def feed_fish
        pets.each do |sp,ary|
          if sp == :fishes
            ary.each do |fish|
              fish.mood = "happy"
            end
          end
        end
      end

      def sell_pets
        pets.each do |sp,ary|
            ary.each do |animal|
              animal.mood = "nervous"
            end
          end
        pets.clear
      end

      def list_pets
        "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
      end
end
