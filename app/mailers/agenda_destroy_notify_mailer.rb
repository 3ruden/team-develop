class AgendaDestroyNotifyMailer < ApplicationMailer
  def agenda_destroy_notify_mail(agenda)
    @agenda = agenda
    @emails = @agenda.team.members.inject('') do |emails, member|
      emails + member.email + ','
    end
    mail to: @emails, subject: "アジェンダの削除のお知らせ"
  end
end
