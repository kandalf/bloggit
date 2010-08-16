Given /^the following posts$/ do |table|
  table.hashes.each do |attrs|
    Factory.create(:post, attrs)
  end
  Post.all.should_not be_empty
end

Given /^there is no posts$/ do
  Post.destroy_all
  Post.all.should be_empty
end

When /^I click the "([^"]*)" action in the current locale$/ do |action|
  locale_action = I18n.translate("application.actions.#{action.downcase.gsub(" ", "_")}")
  locale_action.should_not include "translation missing:"

  click locale_action
end
