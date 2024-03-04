# frozen_string_literal: true

require 'sqlite3'

$db = SQLite3::Database.new './app/db/development.sqlite3'
