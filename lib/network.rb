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
        main_charcater << character if character.salary > 500_000 && character.name == character.name.upcase
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
    actor = []
    shows_by_actor.each do |key, value|
      if value.length > 1
        actor << key
      end
    end
    actor
  end
end
