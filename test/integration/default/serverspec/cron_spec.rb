require 'serverspec'

set :backend, :exec

describe "Cron" do
  describe file('/etc/consul.d/service-cron.json') do
    it { should be_file }
    it { should contain '10s' }
    it { should contain 'pgrep cron' }
  end
end
