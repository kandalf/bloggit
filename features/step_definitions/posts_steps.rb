Given /^the following posts$/ do |table|
  table.hashes.each do |attrs|
    Factory.build(:post, attrs)
  end
end
