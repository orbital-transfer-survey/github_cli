# frozen_string_literal: true

require_relative "../api"

module GithubCLI
  class Commit
    extend API

    def self.get(user, repo, sha, params, options)
      output options do
        github_api(options).git_data.commits.get(user, repo, sha, params)
      end
    end

    def self.create(user, repo, params, options)
      output options do
        github_api(options).git_data.commits.create(user, repo, params)
      end
    end
  end # Commit
end # GithubCLI
