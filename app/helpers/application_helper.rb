module ApplicationHelper
  def gravatar_for(user,options = { size: 80 })
    # byebug
    params = {
      :a => user.username.itself[0,1].to_s.upcase + user.username.match(/(?<=\s)./).to_s.upcase
    }
    size = options[:size]
    user_path = user.username.itself[0,1].to_s.upcase + user.username.match(/(?<=\s)./).to_s.upcase
    default_url = "http://www.lse.ac.uk/International-Inequalities/Assets/Images/BlankImage.jpg?h=60&w=60"
    
    # default_url = "http://via.placeholder.com/150/000000/FFFFFF/?text=".concat(user_path)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    gravatar_url= "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}&d=#{CGI.escape(default_url)}"
    image_tag(gravatar_url, alt:user_path, html: { style: "height: 60px;, width:60px;"}, class: "bg1 rounded-circle shadow mx-auto d-block")
    
    
  
  end


end
