puts "SEEDING DATABASE"

site = ::Trax::Site.create(
  :name => "Trax Blog", 
  :is_default => true, 
  :description => "trax_blog",
  :host => "localhost", 
  :routing_strategy => "RESTFUL",
  :theme_id => ::Trax::Theme.first.id,
  :active => true
)
# 
# channel1 = ::Trax::Channel.create(
#   :name => "Code",
#   :description => "Code Snippets and what not",
#   :details => "Blah blah blah",
#   :active => true,
#   :routing_strategy => "RESTFUL",
#   :site => site
# )
# 
# channel2 = ::Trax::Channel.create(
#   :name => "Tutorials",
#   :description => "Tutorial videos and stuff",
#   :details => "Blah blah blah",
#   :active => true,
#   :routing_strategy => "STATIC",
#   :site => site  
# )
#                     
# puts site.inspect
# puts channel1.inspect
# puts channel2.inspect
# site = ::Trax::Site.first

400.times do |i|
  channel = ::Trax::Channel.create(
    :name => "fake channel #{i}",
    :description => "I am a fake channel",
    :details => "Blah blah blah",
    :active => true,
    :routing_strategy => "RESTFUL",
    :site => site
  )
  puts channel.inspect
end

channel = ::Trax::Channel.first

400.times do |i|
  entry = ::Trax::Entry.create(
    :title => "fake entry #{i}",
    :body => "I am a fake entry",
    :site => site,
    :channel => channel
  )
  puts entry.inspect
end
