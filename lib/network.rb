# frozen_string_literal: true

# Network class
class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main_charcater = []
    @shows.each do |show|
      show.characters.each do |character|
        if character.salary > 500_000 && character.name == character.name.upcase
          main_charcater << character
        end
      end
    end
    main_charcater
  end

  def actors_by_show
    hash = {}
    @shows.each do |show|
      show.characters.each do |character|
        if hash[show]
          hash[show] << character.actor
        else
          hash[show] = [character.actor]
        end
      end
    end
    hash
  end

  def shows_by_actor
    hash = {}
    @shows.each do |show|
      show.characters.each do |character|
        if hash[character.actor]
          hash[character.actor] << show
        else
          hash[character.actor] = [show]
        end
      end
    end
    hash
  end

  def prolific_actors
    hash = {
      "David Hasselhoff" => [knight_rider, baywatch],
      "William Daniels" => [knight_rider],
      "Amy Poehler" => [parks_and_rec],
      "Nick Offerman" => [parks_and_rec]
    }

    p hash.key.max
  end
end
