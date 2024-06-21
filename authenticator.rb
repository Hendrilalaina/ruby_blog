puts "Welcome to the auttenticator"
puts "-"*28

def connect
  puts
  print "Username: "
  uname = gets.chomp
  print "Password: "
  passwd = gets.chomp
  puts
  authenticate(uname, passwd)
end

def authenticate(uname, passwd)
  users = [
    {username: "user1", password: "password1"},
    {username: "user2", password: "password2"},
    {username: "user3", password: "password3"},
    {username: "user4", password: "password4"}
  ]
  users.each do |user|
    if user[:username] == uname
        if user[:password] == passwd
          puts "You are connected as #{uname}!"
          exit
        else
          puts "Credentials are not matched!"
          connect
        end
    end
  end
  puts "Unvalid username!"
  connect
end
connect