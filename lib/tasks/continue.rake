require "readline"
require "rainbow"

task :continue do
  while taskname = Readline.readline(">>".color(Continue::PROMPT_COLOR), true)
    break if %w(exit quit bye).include?(taskname)
    Rake::Task.tasks.each(&:reenable)
    begin
      Rake::Task[taskname].invoke
    rescue
      puts $!.to_s.color(Continue::WARN_COLOR)
    end
  end
end

task :reload! => :environment do
  Rails.reload!
end
