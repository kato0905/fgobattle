class BattleController < ApplicationController
  def home
    @servants = Servant.all
  end
end
