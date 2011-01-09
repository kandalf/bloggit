# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

unless User.exists?(:email => "blogger@bloggit.com")
  user = User.new({:login => "blogger", :password => "bloggit", :password_confirmation => "bloggit", :email => "blogger@bloggit.com"})
  user.save!
end
