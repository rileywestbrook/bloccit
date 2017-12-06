require 'random_data'

#Creat posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
   )
end
posts = Post.all

#Create comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
   )
end

my_unique_post = Post.find_or_create_by(title: "Random Title", body: "Random body")
Comment.find_or_create_by(body: "Random body", post: my_unique_post)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
