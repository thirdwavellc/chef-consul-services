require 'serverspec'

set :backend, :exec

describe "Apache2" do
  describe file('/etc/consul.d/service-apache2.json') do
    it { should be_file }
    it { should contain '10s' }
    it { should contain 'pgrep apache2 || exit 2' }
  end
end
