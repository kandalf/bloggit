Then /^I should see the "([^"]*)" message in the current locale$/ do |message|
  locale_msg = I18n.translate("application.messages.#{message.downcase.gsub(" ", "_")}")
  locale_msg.should_not include "translation missing:"
  page.should have_content locale_msg
end
