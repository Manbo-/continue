require "spec_helper"

describe 'continue' do
  before(:all) do
    @rake = Rake::Application.new
    Rake.application = @rake
    Rake.application.rake_require("continue", ["lib/tasks"])
    Rake::Task.define_task(:environment)
  end

  it do
    expect(Readline).to receive(:readline).once
    @rake["continue"].invoke
  end

  it do
    expect(Rails).to receive(:reload!)
    @rake["reload!"].invoke
  end
end
