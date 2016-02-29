require 'spec_helper'

describe Posix do
  describe '#exec' do
    it 'executes provided command and returns output' do
      expect(Posix.exec('echo', 'Hello')).to eq("Hello\n")
    end

    it 'raises error when command line tool is not installed' do
      stub_const('POSIX::Spawn::Child',
        double(:new => double('status' => double('exitstatus' => 127))))
      expect { Posix.exec('sometool', 'some arguments') }.
        to raise_error('No sometool tool found, please install it and retry.')
    end
  end
end
