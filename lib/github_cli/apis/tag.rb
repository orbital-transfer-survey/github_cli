# frozen_string_literal: true

require_relative "../api"

module GithubCLI
  class Tag
    extend API

    def self.get(user, repo, sha, params, options)
      output options do
        github_api(options).git_data.tags.get user, repo, sha, params
      end
    end

    def self.create(user, repo, params, options)
      output options do
        github_api(options).git_data.tags.create user, repo, params
      end
    end
  end # Tag
end # GithubCLI
