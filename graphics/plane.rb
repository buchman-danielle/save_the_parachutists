require './lib/globals.rb'

class Plane < Sprite
  PLANE_IMAGE = 'images/plane.png'
  PLANE_INITINAL_X = 600
  PLANE_INITINAL_Y = 10
  PLANE_WIDTH = 100
  PLANE_HEIGHT = 50
  PLANE_MOVE = 40

  def initialize
    @direction = Globals::DIRECTIONS[:right]
    super(
      PLANE_IMAGE,
        x: PLANE_INITINAL_X, y: PLANE_INITINAL_Y,
        width: PLANE_WIDTH, height: PLANE_HEIGHT
    )
  end

  def move
    case @direction 
      when Globals::DIRECTIONS[:left]
        if self.x > 0
          self.x -= PLANE_MOVE
          self.play
        else
          @direction = Globals::DIRECTIONS[:right]
          self.x = 0
          self.play flip: :horizontal
        end
      when Globals::DIRECTIONS[:right]
        if self.x < PLANE_INITINAL_X
          self.x += PLANE_MOVE
          self.play flip: :horizontal
        else
          @direction = Globals::DIRECTIONS[:left]
          self.x = PLANE_INITINAL_X
          self.play
        end
    end
  end
end