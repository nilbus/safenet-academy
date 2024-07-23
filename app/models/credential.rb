class Credential < ApplicationRecord
  def masked_password
    return "***" if password.length <= 3

    "#{password[0, 3]}********"
  end

  def weaknesses
    "none"
  end

  def crack_time
    "minutes"
  end
end
