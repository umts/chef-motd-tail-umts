#
# Cookbook Name:: chef-motd-tail-umts
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'motd-tail-umts::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end

    it 'makes the motd.tail' do
      expect(chef_run).to create_motd_tail('/etc/motd.tail')
    end
  end
end
