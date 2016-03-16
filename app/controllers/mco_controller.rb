class McoController < ApplicationController

  def hello

    #file = IO.popen("touch /Users/FreySong/rails_projects/puppet-dashboard/mco.txt")
    #file = IO.popen("touch /Users/FreySong/rails_projects/puppet-dashboard/mco2.txt")
    ##file = IO.popen("puppet agent -t --noop")
    #IO.popen("ifconfig").each_line { |f| puts f }
    #@file2 = "IO"
    #@file3 = IO.popen("touch /Users/FreySong/rails_projects/puppet-dashboard/mco.txt")
    #@file4 = IO.popen("ifconfig") { |f| puts f }
    #@mco_noop_action = IO.popen("touch /Users/FreySong/rails_projects/puppet-dashboard/mco3.txt")
    #@cat = IO.popen("cat /Users/FreySong/rails_projects/puppet-dashboard/mcoaa")

    #@input_file =  File.open("/Users/FreySong/rails_projects/puppet-dashboard/mco_input.txt")
    #@input_file.each_line do |text|
    #  puts text
    #end

    ##in-output screen
    #IO.popen("ifconfig >> /Users/FreySong/rails_projects/puppet-dashboard/tmp/mco/ip.tmp")
    #IO.popen("/usr/bin/puppet help >> /Users/FreySong/rails_projects/puppet-dashboard/tmp/mco/ip.tmp")
    IO.popen("/usr/bin/mco help > /Users/FreySong/rails_projects/puppet-dashboard/tmp/mco/hello.tmp")
    #@ip_file =  File.open("/Users/FreySong/rails_projects/puppet-dashboard/tmp/mco/ip.tmp")

  end

  def hello_status

    @hello_status =  File.open("/Users/FreySong/rails_projects/puppet-dashboard/tmp/mco/hello.tmp")

  end

  def mco_noop

    IO.popen("/usr/bin/mco help > /Users/FreySong/rails_projects/puppet-dashboard/tmp/mco/mco_noop_status.tmp")

  end

  def mco_noop_status

    @mco_noop_status =  File.open("/Users/FreySong/rails_projects/puppet-dashboard/tmp/mco/mco_noop_status.tmp")

  end

  def mco_action

    IO.popen("/usr/bin/mco help > /Users/FreySong/rails_projects/puppet-dashboard/tmp/mco/mco_action_status.tmp")

  end

  def mco_action_status

    @mco_action_status =  File.open("/Users/FreySong/rails_projects/puppet-dashboard/tmp/mco/mco_action_status.tmp")

  end

end

