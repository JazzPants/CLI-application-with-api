#Step 1

#user responses
#interact with user

#initialize welcome to the app

class CLI
  def start
    puts 'Welcome to Music Lovers!'

    #get_user_data, ask user name, else create one, or ask to view existing
    puts 'Loading API...'
    puts 'Please select an option.'
    start_menu_options

    #please enter your username to make a playlist
    #username does not exist, would you like to create one?
    # if username
    #     user_menu_options
    # else
    #exit_option
  end

  def start_menu_options
    puts "type '1' to enter your username"
    puts "type '2' to create a new user"
    puts "type '3' to exit application"
    start_menu
  end

  def start_menu
    input = gets.chomp
    if input == '1'
      enter_username
    elsif input == '2'
      create_user
    else
      puts 'exiting application'
      exit
    end
  end

  def enter_username
    puts 'Please enter your username'
    input = gets.chomp
    #save user input to database
  end

  def create_user
    puts 'Please enter a new username'
    input = gets.chomp
    puts "Do you want to use the username #{input}?"
  end

  def user_menu_options
    puts 'Please select an option'
    puts "type '1' for "
  end
end
