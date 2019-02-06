describe os.family do
  it { should eq 'windows' }
end

# Check that IIS is installed via Windows Features
describe windows_feature('Webserver') do
  it { should be_installed }
end

# Ensure IIS Service is running
describe service('W3SVC') do
  it { should be_installed }
  it { should be_running }
end
