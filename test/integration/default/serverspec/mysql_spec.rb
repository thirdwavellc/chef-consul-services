require 'serverspec'

set :backend, :exec

describe "MySQL" do
  describe file('/etc/consul.d/service-mysql.json') do
    it { should be_file }
    it { should contain '"port": 3306' }
    it { should contain '10s' }
    it { should contain 'pgrep mysql || exit 2' }
  end
end
