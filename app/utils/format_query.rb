# frozen_string_literal: true

def format_query(query:)
  query.gsub(query.slice(0..query.index('>') + 1), '').gsub(query.slice(-2..-1), '')
end
