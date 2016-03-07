class McoController < ApplicationController

  def hello

    file = IO.popen("touch /Users/FreySong/rails_projects/puppet-dashboard/mco.txt")
    file = IO.popen("touch /Users/FreySong/rails_projects/puppet-dashboard/mco2.txt")
    #file = IO.popen("puppet agent -t --noop")
    IO.popen("ifconfig").each_line { |f| puts f }
    @file2 = "IO"
    @file3 = IO.popen("touch /Users/FreySong/rails_projects/puppet-dashboard/mco.txt")
    @file4 = IO.popen("ifconfig") { |f| puts f }
    @mco_noop_action = IO.popen("touch /Users/FreySong/rails_projects/puppet-dashboard/mco3.txt")
    @cat = IO.popen("cat /Users/FreySong/rails_projects/puppet-dashboard/mcoaa")

  end

  def mco_noop

    #file = IO.popen("puppet agent -t --noop")
    #IO.popen("ifconfig") { |f| puts f }
    #IO.popen("ifconfig").each_line { |f| puts f }
    @file = "MCO NOOP SUCCESS!"
    @file_noop = IO.popen("touch /Users/FreySong/rails_projects/puppet-dashboard/mco_result/mco_noop.txt")
    @mco_noop_action = IO.popen("mco puppet --noop")

  end

  def mco_action

    #file = IO.popen("puppet agent -t --noop")
    #IO.popen("ifconfig") { |f| puts f }
    #IO.popen("ifconfig").each_line { |f| puts f }
    @file = "MCO ACTION SUCCESS!"
    @file_action = IO.popen("touch /Users/FreySong/rails_projects/puppet-dashboard/mco_result/mco_acton.txt")
    @mco_noop_action = IO.popen("mco puppet -v runonc")

  end

end

