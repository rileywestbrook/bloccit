FactoryGirl.define do
  factory :comment do
    comment RandomData.random_paragraph
    topic
    post
    user
  end
end
