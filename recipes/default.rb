# -*- coding: utf-8 -*-

package "wget" do
  action :install
end

execute "install google-chrome-stable" do
  command  "curl #{node["chrome"]["script_url"]} | sudo /bin/bash /dev/stdin -f"
  not_if "yum list installed | grep google-chrome-stable"
end

