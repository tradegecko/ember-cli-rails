module EmberCli
  class TrailingSlashConstraint
    def matches?(request)
      return false if request.query_string.present?

      !request.original_fullpath.to_s.ends_with?("/")
    end
  end
end
