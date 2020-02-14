class TeamLeaderChangeNotifyMailer < ApplicationMailer
  
  def team_leader_change_notify_mail(team)
    @team = team
    mail to: @team.owner.email, subject: 'チームリーダー変更のお知らせ'
  end
end
