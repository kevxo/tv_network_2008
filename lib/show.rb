# frozen_string_literal: true

# Show class
class Show
  attr_reader :name, :creator, :characters
  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total = 0
    @characters.each do |character|
      total += character.salary
    end
    total
  end

  def highest_paid_actor

    @characters.max_by do |character|
      actors << character
    end
  end

  def actors
    actors = []
    @characters.each do |character|
      actors << character.actor
    end
    actors
  end
end
