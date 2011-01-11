require 'spec_helper'

describe User do
  it "should have posts" do
    user = Summoner.summon :user
    user.respond_to?(:posts).should be_true
  end

end
