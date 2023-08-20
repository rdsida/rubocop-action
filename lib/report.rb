# frozen_string_literal: true

class Report
  attr_reader :github_data, :command

  def initialize(github_data, command)
    @github_data = github_data
    @command = command
  end

  def build
    report_path ? Util.read_json(report_path) : results
  end

  private

  def report_path
    ENV.fetch('REPORT_PATH', nil)
  end

  def results
    Results.new(command).build
  end
end
