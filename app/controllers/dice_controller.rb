class DiceController < ApplicationController
  def home
    render({ template: "dice_templates/home" })
  end

  def roll
    dice_count = params[:dice_count].to_i
    sides = params[:sides].to_i

    @rolls = Array.new(dice_count) { rand(1..sides) }
    @dice_count = dice_count
    @sides = sides

    render({ template: "dice_templates/roll" })
  end
end
