# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trax_post, :class => 'Post' do
    author_id ""
    category_id ""
    channel_id ""
    site_id ""
    last_edited_by ""
    title "MyString"
    permalink "MyString"
    body "MyText"
    last_edited_at "2013-11-15 12:36:53"
    published_at "2013-11-15 12:36:53"
    status "MyString"
  end
end
