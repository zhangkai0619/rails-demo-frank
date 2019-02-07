desc "usercreation"
task :user_creation, [:number_of_user] => [:environment] do |t, args|
  # Your code goes here
  #args.with_defaults(:number_of_user => 1000)
  puts count = args[:number_of_user].to_i
  file_name = "config/users.yml"
  user_list = YAML.load_file(file_name)
  #puts user_list.inspect
  for i in 1..count
    #puts i
    #puts user_list[i]
    user = User.create(name: user_list[i])
    puts user.inspect
  end

end