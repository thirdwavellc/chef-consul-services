require 'serverspec'

set :backend, :exec

describe "PostgreSQL" do
  describe file('/etc/consul.d/service-postgres.json') do
    it { should be_file }
    it { should contain '"port": 5432' }
    it { should contain '10s' }
    it { should contain 'pgrep postgres || exit 2' }
  end
end
