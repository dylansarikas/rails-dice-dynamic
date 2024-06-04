class DiceController < ApplicationController

  def show
    @num_dice = params.fetch("num").to_i
    @sides = params.fetch("sides").to_i
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end
    
    render({:template => "dice_templates/dice_rolls"})
  end

  def home
    render({:template => "dice_templates/home_view"})
  end

end
