namespace :posts do
  desc "Rake task to create a post"
  task create_post: :environment do
    post = Post.create(title: "second post from rake", body: "new body for post")
    if post.persisted?
      puts "post was created"
    end
  end
end
