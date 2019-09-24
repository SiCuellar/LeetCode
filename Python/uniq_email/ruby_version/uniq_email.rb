require 'pry'

class UniqEmail
  def num_unique_emails(emails)
    emails.map do |email|
      email_plus_filter(email)
    end.uniq.count
  end

  def local_name(email)
    email.split("@").first
  end

  def domain_name(email)
    email.split("@").last
  end

  def email_dot_cleaner_converter(email)
    clean = local_name(email).gsub(".","")
    clean + "@" + domain_name(email)
  end

  def email_plus_filter(email)
    local_dot_clean = email_dot_cleaner_converter(email)

    if local_dot_clean.include?("+")
      plus_filtered = local_dot_clean.split("+").first
      plus_filtered + "@" + domain_name(email)
    else
      local_dot_clean
    end
  end
end
