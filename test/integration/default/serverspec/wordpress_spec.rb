require 'serverspec'

set :backend, :exec

describe "Wordpress" do
  describe file('/etc/consul.d/service-wordpress.json') do
    it { should be_file }
    it { should contain '10s' }
    it { should contain 'curl http://localhost/wp-login.php | grep Username || exit 2' }
  end
end
