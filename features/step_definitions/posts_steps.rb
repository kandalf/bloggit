Given /^the following posts$/ do |table|
  table.hashes.each do |attrs|
    Factory.create(:post, attrs)
  end
  Post.all.should_not be_empty
end
