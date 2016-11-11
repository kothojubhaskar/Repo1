require 'mixlib/shellout'
class Helper
def self.check_rhel_or_oracle
 find = Mixlib::ShellOut.new("sudo yum check-update")
 find.run_command
 Chef::Log.info("#{find.stdout}")
end

def self.update_rhel_or_oracle
 find = Mixlib::ShellOut.new("yum update -y")
 find.run_command
 return find.stdout
end

def self.update_ubuntu
 find = Mixlib::ShellOut.new("apt-get update -y")
 find.run_command
 Chef::Log.info("#{find.stdout}")
end

def self.upgrade_ubuntu
 find = Mixlib::ShellOut.new("sudo apt-get upgrade -y")
 find.run_command
 Chef::Log.info("#{find.stdout}")
end
end