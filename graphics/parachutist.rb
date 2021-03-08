require './lib/globals.rb'
require_relative 'board.rb'

class Parachutist < Sprite
  PARACHUTIST_IMAGE = 'images/parachutist.png'
  PARACHUTIST_INITINAL_Z = Board::SEA_INITINAL_Z + 1
  PARACHUTIST_WIDTH = 40
  PARACHUTIST_HEIGHT = 70
  PARACHUTIST_MOVE = 25

  def initialize(x,y)
    super(
      PARACHUTIST_IMAGE,
      x: x, y: y, z: 1,
      width: PARACHUTIST_WIDTH, height: PARACHUTIST_HEIGHT
    )
  end

  def move
    self.y += PARACHUTIST_MOVE
    self.play
  end

  def hit_surface?
    self.y >= Globals::SURFACE_HEIGHT - PARACHUTIST_HEIGHT/2
  end
end