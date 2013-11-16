# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trax_entry, :class => 'Entry' do
    title "MyString"
    slug "MyString"
    preview "MyString"
    body "MyText"
    status "MyString"
    status_last_changed_at "2013-11-16 10:57:38"
    published_at "2013-11-16 10:57:38"
    last_edited_by ""
    parent_id ""
    user_id ""
    channel_id ""
  end
end
