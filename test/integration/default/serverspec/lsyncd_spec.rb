require 'serverspec'

set :backend, :exec

describe "lsyncd" do
  describe file('/etc/consul.d/check-lsyncd.json') do
    it { should be_file }
    it { should contain '10s' }
    it { should contain 'pgrep lsyncd || exit 2' }
  end
end
