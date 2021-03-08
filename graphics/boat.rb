require './lib/globals.rb'
require_relative 'board.rb'

class Boat < Image
  BOAT_IMAGE = 'images/boat.png'
  BOAT_INITINAL_X = 0
  BOAT_INITINAL_Y = Globals::SURFACE_HEIGHT
  BOAT_INITINAL_Z = Board::SEA_INITINAL_Z + 1
  BOAT_WIDTH = 100
  BOAT_HEIGHT = 50
  BOAT_MOVE = 54
  BOAT_MOVE_RANGE = Globals::GAME_BOARD_WIDTH - BOAT_WIDTH

  def initialize
    super(
      BOAT_IMAGE,
      x: BOAT_INITINAL_X, y: BOAT_INITINAL_Y, z: 2,
      width: BOAT_WIDTH, height: BOAT_HEIGHT
    )
  end

  def move(key)
    case key
      when Globals::DIRECTIONS[:left]
        self.x -= BOAT_MOVE if self.x > BOAT_INITINAL_X
      when Globals::DIRECTIONS[:right]
        self.x += BOAT_MOVE if self.x < BOAT_MOVE_RANGE
    end
  end
end