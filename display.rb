# frozen_string_literal: true

# Module with de display outputs
module Display
  def display_welcome_msg
    'Welcome to the Tik-Tak-Toe!'
  end

  def display_get_player_name(player)
    "Please enter the nickname for #{player}"
  end

  def display_well_created_player(player_name)
    "#{player_name} is ready to play!"
  end

  def display_turn_msg(player)
    "It's #{player.name} turn! Pick a place"
  end
end
