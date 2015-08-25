namespace :monitrc do
  desc "Download monitrc from the hosts"
  task :download do
    on roles(:all) do |host|
      hostname = host.hostname
      monitrc = "#{hostname}.monitrc"
      remote_monitrc = current_path.join monitrc

      # monitrc copied to deploy folder
      sudo :cp, "/etc/monitrc", remote_monitrc 
      # change permission to be able to download
      sudo :chmod, "644", remote_monitrc
      # download and save it to local
      download! remote_monitrc, monitrc
      # delete the file
      execute :rm, remote_monitrc
    end
  end

  desc "copy monitrc to /etc/monitrc and change permission"
  task :deploy do
    on roles(:all) do |host|
      hostname = host.hostname
      monitrc = "#{hostname}.monitrc"
      remote_monitrc = current_path.join monitrc

      # mointrc copied to /etc/moinrc
      sudo :cp, remote_monitrc, "/etc/monitrc"
      # change permission so that it makes monit service happy
      sudo :chmod, "600", "/etc/monitrc"
    end
  end
end

