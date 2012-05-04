<%
  @path = "/etc/profile.d/rubber.sh"
  current_path = "/mnt/#{rubber_env.app_name}-#{Rubber.env}/current" 
%>

# convenience to simply running rails console, etc with correct env
export RUBBER_ENV=<%= Rubber.env %>
export RAILS_ENV=<%= Rubber.env %>u
alias current="cd <%= current_path %>"
alias release="cd <%= Rubber.root %>"

# Always use rubygems
export RUBYOPT="rubygems"

# Use the installed Ruby
export PATH="<%= rubber_env.ruby_path %>/bin:$PATH"