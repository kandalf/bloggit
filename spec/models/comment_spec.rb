require 'spec_helper'

describe Comment do
  it "should belong to post" do
    comment = Comment.new(:commenter => "kandalf", :body => "some comment")
    comment.post.should be_nil
  end

  it "should not be valid without a commenter" do
    comment = Comment.new(:body => "some comment")
    comment.should_not be_valid
  end

  it "should not be valid without content in the body" do
    comment = Comment.new(:commenter => "Somebody")
    comment.should_not be_valid
  end

  it "should be valid with a commenter and content" do
    comment = Comment.new(:commenter => "kandalf", :body => "some comment")
    comment.should be_valid
    comment.save.should be_true
  end
end
