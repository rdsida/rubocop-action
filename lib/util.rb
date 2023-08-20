# frozen_string_literal: true

class Util
  class << self
    def read_json(path)
      JSON.parse(File.read(path))
    rescue Errno::ENOENT
      p "Notice: No file: #{path}"
      {}
    end

    def read_yaml(path)
      YAML.safe_load_file(path)
    rescue Errno::ENOENT
      p "Notice: No file: #{path}"
      {}
    end
  end
end
