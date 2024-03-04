# frozen_string_literal: true

require_relative '../db/database'
require_relative '../utils/format_query'

class GenerateSqlController
  def self.generate(params)
    query = params[:query].to_s
    formatted_query = format_query(query: query)
    $db.execute(formatted_query)

    if query.include?('CREATE TABLE')
      'Table was created successfully!'
    elsif query.include?('INSERT')
      'Data was inserted successfully!'
    else
      'Query was executed successfully!'
    end
  end
end
