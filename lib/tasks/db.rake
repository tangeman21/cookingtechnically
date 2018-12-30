namespace :db do
  desc "TODO"
  task drop_all: :environment do
    conn = ActiveRecord::Base.connection
    tables = conn.tables
    tables.each do |table|
      puts "Deleting #{table}"
      conn.drop_table(table)
    end
  end
end
