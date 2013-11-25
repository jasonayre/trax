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

channel1 = ::Trax::Channel.create(
  :name => "Code",
  :description => "Code Snippets and what not",
  :details => "Blah blah blah",
  :active => true,
  :routing_strategy => "RESTFUL",
  :site => site
)

channel2 = ::Trax::Channel.create(
  :name => "Tutorials",
  :description => "Tutorial videos and stuff",
  :details => "Blah blah blah",
  :active => true,
  :routing_strategy => "STATIC",
  :site => site  
)
                    
puts site.inspect
puts channel1.inspect
puts channel2.inspect

