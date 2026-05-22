# frozen_string_literal: true

require_relative '../meta'

module Engine
  module Game
    module G1822GC
      module Meta
        include Game::Meta

        DEV_STAGE = :prealpha

        GAME_SUBTITLE = 'Railways in the US Gulf Coast'
        GAME_DESIGNER = 'Anthony White'
        GAME_INFO_URL = ''
        GAME_LOCATION = 'Southern US'


        GAME_RULES_URL = {
          'Rules' => 'https://boardgamegeek.com/filepage/219065/1822-railways-great-britain-rules',
          '2-player rules (BGG thread)' => 'https://boardgamegeek.com/thread/2429917/article/34848979#34848979',
        }.freeze

        PLAYER_RANGE = [2, 7].freeze


      end
    end
  end
end
