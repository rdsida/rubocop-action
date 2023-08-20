# frozen_string_literal: true

module Github
  class Data
    attr_reader :event

    def initialize(event)
      @event = event
    end

    def sha
      ENV.fetch('GITHUB_SHA', nil)
    end

    def token
      ENV.fetch('GITHUB_TOKEN', nil)
    end

    def owner
      ENV['GITHUB_REPOSITORY_OWNER'] || event.dig('repository', 'owner', 'login')
    end

    def repo
      ENV['GITHUB_REPOSITORY_NAME'] || event.dig('repository', 'name')
    end

    def workspace
      ENV.fetch('GITHUB_WORKSPACE', nil)
    end
  end
end
