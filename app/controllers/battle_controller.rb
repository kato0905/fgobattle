class BattleController < ApplicationController
  def home

  end

  def command
    #@servants = Servant.all
    @command = []
    params[:command].split(" ").each do |v|
      @command << v
    end
    respond_to do |format|
    format.html
    format.js
    end
  end

  def skill
    @sskill = Sskill.where(skill_id: params[:skill])
    respond_to do |format|
    format.html
    format.js
    end
  end

end
