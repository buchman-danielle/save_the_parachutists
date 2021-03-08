require './lib/globals.rb'
require './graphics/boat.rb'
require './graphics/plane.rb'
require './graphics/parachutist.rb'

class GameManager
  def initialize
    graphics_initialize
    matrix_initialize
  end

  def graphics_initialize
    Board.new
    @plane = Plane.new
    @boat = Boat.new
    @parachutists = []
  end

  def matrix_initialize
    @score = 0
    create_or_update_score_label
    @lives = Globals::INITIAL_LIVES_COUNT
    create_or_update_lives_label
  end

  def move_boat(key)
    @boat.move(key)
  end

  def game_on?
    @lives > 0
  end

  def advance
    @plane.move
    drop_parachutist if should_drop_parachutist?

    @parachutists.each do |parachutist|
      parachutist.move
    end

    @parachutists.delete_if do |parachutist| 
      if parachutist.hit_surface?
        if parachutist_land_on_boat?(parachutist, @boat)
          update_score(Globals::SUCCESSFUL_MOVE_POINTS)
        else
          remove_live
        end
        parachutist.remove
      end
    end
  end

  def should_drop_parachutist?
    @parachutists.size < Globals::MAX_ACTIVE_PARACHUTISTS && 
    rand() > Globals::WEIGHTED_RANDOM
  end

  def drop_parachutist
    @parachutists << Parachutist.new(@plane.x, @plane.y)
  end

  def parachutist_land_on_boat?(parachutist, boat)
    boat.x - Parachutist::PARACHUTIST_WIDTH/2 <= parachutist.x &&
    boat.x + Boat::BOAT_WIDTH - Parachutist::PARACHUTIST_WIDTH/2 >= parachutist.x
  end

  def update_score(points)
    @score += points
    create_or_update_score_label
  end

  def remove_live
    @lives -= 1
    create_or_update_lives_label
  end

  def create_or_update_score_label
    @score_label.remove if @score_label
    @score_label = Text.new("Score: #{@score}", x: 20, y: 10, color: 'blue')
  end

  def create_or_update_lives_label
    @lives_label.remove if @lives_label
    @lives_label = Text.new("Lives: #{@lives}", x: 20, y: 30, color: 'blue')
  end
end