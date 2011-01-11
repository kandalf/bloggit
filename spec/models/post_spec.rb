require 'spec_helper'

describe Post do
  it "should not be valid without a name" do
    post = Post.new(:title => "title", :content => "content")
    post.should_not be_valid
  end

  it "should not be valid with a title smaller than 5 chars" do
    post = Post.new(:title => "titl", :name => "Some post")
    post.should_not be_valid
  end

  it "should be valid with a valid title and a name" do
    post = Post.new(:title => "Valid title", :name => "valid_title")
    post.should be_valid
    post.save.should be_true
  end

  it "should have comments" do
    post = Post.new(:title => "title", :name => "something")
    post.comments.should be_empty
  end

  it "should belong to a user" do
    user = Summoner.summon :user

    post = Summoner.summon(:post, :owner_id => user.id)

    post.should be_valid
    post.owner.should == user
  end
end
