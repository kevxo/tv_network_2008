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
    @characters.max { |a, b| a.salary <=> b.salary }.actor
  end

  def actors
    actors = []
    @characters.each do |character|
      actors << character.actor
    end
    actors
  end
end
