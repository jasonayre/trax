puts "SEEDING DATABASE"

::Trax::Site.create(:name => "Trax Blog", :is_default => true, :description => "trax_blog", :host => "localhost", :routing_strategy => "RESTFUL")

::Trax::Channel.create(
  :name => "Code",
  :is_default => true,
  :description => "Code Snippets and what not",
  :details => "Blah blah blah",
  :active => true,
  :routing_strategy => "RESTFUL"
)

::Trax::Channel.create(
  :name => "Tutorials",
  :is_default => true,
  :description => "Tutorial videos and stuff",
  :details => "Blah blah blah",
  :active => true,
  :routing_strategy => "RESTFUL"
)

::Trax::Site.create(:name => "Trax Blog", :is_default => true, :description => "trax_blog", :host => "localhost", :routing_strategy => "RESTFUL")