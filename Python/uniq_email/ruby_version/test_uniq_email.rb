require 'minitest/pride'
require 'minitest/autorun'
require_relative 'uniq_email'

class UniqEmailTest < Minitest::Test
  def test_it_exists
    uniq_email = UniqEmail.new
    assert_instance_of UniqEmail, uniq_email
  end

  def test_it_can_identify_local_email_name
    uniq_email = UniqEmail.new
    email = "sicuellar@gmail.com"
    assert_equal "sicuellar", uniq_email.local_name(email)
  end

  def test_it_can_return_domain_name
    uniq_email = UniqEmail.new
    email = "something.something@gmail.com"
    assert_equal "gmail.com", uniq_email.domain_name(email)
  end

  def test_it_can_convert_emails_with_periods
    uniq_email = UniqEmail.new
    email = "silver.getjob@gmail.com"
    assert_equal "silvergetjob@gmail.com", uniq_email.email_dot_cleaner_converter(email)
  end

  def test_dot_converter_does_apply_to_domain_names
    uniq_email = UniqEmail.new
    email = "silver.something@yahoo.gmail.com"
    assert_equal "silversomething@yahoo.gmail.com", uniq_email.email_dot_cleaner_converter(email)
  end

  def test_plus_char_can_ignore_chars_after_it
    uniq_email = UniqEmail.new
    email = "m.y+name@email.com"
    assert_equal "my@email.com", uniq_email.email_plus_filter(email)
  end

  def test_plus_char_cleaner_does_not_effect_domain_name
    uniq_email = UniqEmail.new
    email = "m.y+name@em+ail.com"
    assert_equal "my@em+ail.com", uniq_email.email_plus_filter(email)


  # def test_it
end

# Every emailpyp consists of a local name and a domain name, separated by the @ sign.
# For example, in alice@leetcode.com, alice is the local name, and leetcode.com is the domain name.
# Besides lowercase letters, these emails may contain '.'s or '+'s.
# If you add periods ('.') between some characters in the local name part of an email address, mail sent there will be forwarded to the same address without dots in the local name.  For example, "alice.z@leetcode.com" and "alicez@leetcode.com" forward to the same email address.  (Note that this rule does not apply for domain names.)
# If you add a plus ('+') in the local name, everything after the first plus sign will be ignored. This allows certain emails to be filtered, for example m.y+name@email.com will be forwarded to my@email.com.  (Again, this rule does not apply for domain names.)
# It is possible to use both of these rules at the same time.
# Given a list of emails, we send one email to each address in the list.  How many different addresses actually receive mails?
