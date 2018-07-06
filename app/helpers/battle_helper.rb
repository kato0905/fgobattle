module BattleHelper
  #選択したサーヴァントを変数に格納する
  def servant_set(s)
    t = s.split(",")
    if t.length >= 1
    @no1 = Servant.find_by(servant_id: t[0].to_i)
    end
    if t.length >= 2
    @no2 = Servant.find_by(servant_id: t[1].to_i)
    end
    if t.length >= 3
    @no3 = Servant.find_by(servant_id: t[2].to_i)
    end
    if t.length >= 4
    @no4 = Servant.find_by(servant_id: t[3].to_i)
    end
    if t.length >= 5
    @no5 = Servant.find_by(servant_id: t[4].to_i)
    end
    if t.length >= 6
    @no6 = Servant.find_by(servant_id: t[5].to_i)
    end
  end
  
  #コマンドカードをシャッフルして返す
  def servant_command(no1,no2,no3)
    command = @no1.command.split("") + @no2.command.split("") + @no3.command.split("")
    header = [@no1.servant_id.to_s<<@no1.command[0],
    @no1.servant_id.to_s<<@no1.command[1],
    @no1.servant_id.to_s<<@no1.command[2],
    @no1.servant_id.to_s<<@no1.command[3],
    @no1.servant_id.to_s<<@no1.command[4],
    @no2.servant_id.to_s<<@no2.command[0],
    @no2.servant_id.to_s<<@no2.command[1],
    @no2.servant_id.to_s<<@no2.command[2],
    @no2.servant_id.to_s<<@no2.command[3],
    @no2.servant_id.to_s<<@no2.command[4],
    @no3.servant_id.to_s<<@no3.command[0],
    @no3.servant_id.to_s<<@no3.command[1],
    @no3.servant_id.to_s<<@no3.command[2],
    @no3.servant_id.to_s<<@no3.command[3],
    @no3.servant_id.to_s<<@no3.command[4]]
    return header.shuffle
  end
end
