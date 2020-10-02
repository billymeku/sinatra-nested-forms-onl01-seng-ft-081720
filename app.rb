require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root  
    end 

    get '/new' do 
      erb :'pirates/new' 
    end 
   
    post '/pirates' do 
      
      @pirate = Pirate.new(params[:pirate])
     
     params[:pirate][:ships].each do |details|
      Ship.new(details)
      end
      @ships = Ship.all
      erb :'pirates/show' 
    end 
  end
  
end



<h1>Create a Team and Heroes!</h1>
<form action= "/teams" method= "POST" >
  <lable for="team_name">Team Name</lable>
  <input type="text" id="team_name" name="team[name]"><br />
  <lable for="team_motto">Team Motto</lable>
  <input type="text" id="team_motto" name="team[motto]"><br />
  
  <h1>Hero 1</h1>
  <label for="member1_name">Hero's Name:<input id="member1_name" type="text" name="team[members][][name]"/></label><br>
  <label for="member1_power">Hero's Power:<input id="member1_power" type="text" name="team[members][][power]"/></label><br>
  <label for="member1_bio">Hero's Biography:<input id="member1_bio" type="text" name="team[members][][bio]"/></label><br>
  
  <h1>Hero 2</h1>
  <label for="member2_name">Hero's Name:<input id="member2_name" type="text" name="team[members][][name]"/></label><br>
  <label for="member2_power">Hero's Power:<input id="member2_power" type="text" name="team[members][][power]"/></label><br>
  <label for="member2_bio">Hero's Biography:<input id="member2_bio" type="text" name="team[members][][bio]"/></label><br>
  
  <h1>Hero 3</h1>
  <label for="member3_name">Hero's Name:<input id="member3_name" type="text" name="team[members][][name]"/></label><br>
  <label for="member3_power">Hero's Power:<input id="member3_power" type="text" name="team[members][][power]"/></label><br>
  <label for="member3_bio">Hero's Biography:<input id="member3_bio" type="text" name="team[members][][bio]"/></label><br>
    <input type="submit" value="submit">
  </form>
  