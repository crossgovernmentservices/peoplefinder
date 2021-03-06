class SuggestionMailer < ActionMailer::Base
  layout 'email'

  def person_email(person, suggester, suggestion_hash)
    @person = person
    @suggester = suggester
    @suggestion = Suggestion.new(suggestion_hash)
    mail to: person.email
  end

  def team_admin_email(person, suggester, suggestion_hash, admin)
    @person = person
    @suggester = suggester
    @suggestion = Suggestion.new(suggestion_hash)
    mail to: admin.email
  end
end
