desc "commentcreation"
task :comment_creation, [:number_of_comment] => [:environment] do |t, args|
  # Your code goes here
  #args.with_defaults(:number_of_comment => 1000)
  puts count = args[:number_of_comment].to_i
  file_name = "config/comments.json"
  file = File.read(file_name)
  comment_list = JSON.parse(file)

  #puts comment_list.inspect
  for i in 1..count
    #puts i
    puts comment_list.sample
    user = User.find(User.pluck(:id).sample)
    puts user.id.inspect
    #Comment.create(name: user_list[i])
    post = Post.where(:title => 'Demo Project Tasks').take
    puts post.id.inspect
  
    comment = Comment.create(
        user_id: user.id,
        post_id: post.id,
        content: comment_list.sample
        )
    puts comment.inspect
  end

end