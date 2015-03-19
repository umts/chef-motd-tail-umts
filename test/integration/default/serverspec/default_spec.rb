require 'spec_helper'

describe 'motd-tail-umts::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  describe file('/etc/motd.tail') do
    it { should be_file }
    it { should contain('recipe[motd-tail-umts::default]').after('Run List:') }
  end

end
