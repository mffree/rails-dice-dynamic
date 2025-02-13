class DiceController < ApplicationController
  def homepage
    render({ :template => "dice_templates/home"})
  end

  def roll
    @num_dice = params.fetch("dice_param").to_i
    @num_sides = params.fetch("sides_param").to_i
    @rolls = []

    @num_dice.times do
      die = rand(1..@num_sides)
      @rolls.push(die)
    end

    render({ :template => "dice_templates/rolls" })
  end

end
