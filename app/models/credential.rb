require 'benchmark'
class Credential < ApplicationRecord
  include ActionView::Helpers::NumberHelper

  PWLIST = File.read(Rails.root.join("db/pwlist.txt")).lines.map(&:chomp)

  def masked_password
    return "***" if password.length <= 2

    "#{password[0, 2]}********"
  end

  def weaknesses
    return @weaknesses if defined?(@weaknesses)

    check = NOBSPW::PasswordChecker.new(**self.slice(%i[password name email]).symbolize_keys)
    reasons = check.reasons.map { |reason| reason.to_s.tr("_", " ") }
    reasons.unshift(pwlist_reason) if pwlist_reason
    @weaknesses = reasons.join(", ").presence || "✨⭐💯"
  end

  def pwlist_reason
    return @pwlist_reason if defined?(@pwlist_reason)


    index = PWLIST.index(password)
    return unless index

    number = number_with_delimiter(index + 1)
    @pwlist_reason = "##{number} most commonly used"
  end
end
