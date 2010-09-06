Given /^the following posts$/ do |table|
  table.hashes.each do |attrs|
    Factory.create(:post, attrs)
  end
end
