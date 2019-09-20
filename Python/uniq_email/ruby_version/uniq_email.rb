require 'pry'

class UniqEmail
  def num_uniq_emails(emails)
    binding.pry
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
    plus_filtered = local_dot_clean.split("+").first
    plus_filtered + "@" + domain_name(email)
  end
end
