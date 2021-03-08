class Board
  BACKGROUND_IMAGE = 'images/background.png'
  BACKGROUND_INITINAL_Z = -10

  SEA_IMAGE = 'images/sea.png'
  SEA_INITINAL_Y = 400
  SEA_INITINAL_Z = BACKGROUND_INITINAL_Z + 5

  def initialize
    # sky
    Image.new(BACKGROUND_IMAGE, z: BACKGROUND_INITINAL_Z) 
    # sea
    Image.new(SEA_IMAGE, y: SEA_INITINAL_Y, z: SEA_INITINAL_Z) 
  end
end