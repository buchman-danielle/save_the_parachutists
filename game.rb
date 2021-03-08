require 'ruby2d'
require './lib/globals.rb'
require './managers/game_manager.rb'

set title: "Save the Parachutists"
game_manager = GameManager.new

on :key_down do |event|
  game_manager.move_boat(event.key)
end

Thread.new do
  while game_manager.game_on? do
    game_manager.advance
    sleep Globals::GAME_SPEED_ITERATION
  end
  Text.new("Game Over", x: 200, y: 200, color: 'orange', size: 50)
end

show