class Globals
  # board settings
  GAME_BOARD_WIDTH = 640 #default for Ruby 2D
  GAME_BOARD_HEIGHT = 480 #default for Ruby 2D
  SURFACE_HEIGHT = GAME_BOARD_HEIGHT - 100

  # basic configurations
  GAME_SPEED_ITERATION = 0.25
  DIRECTIONS = { right: 'right',left: 'left' }
  SUCCESSFUL_MOVE_POINTS = 10
  INITIAL_LIVES_COUNT = 3

  # logic assumptions
  MAX_ACTIVE_PARACHUTISTS = 3
  WEIGHTED_RANDOM = 0.9
end