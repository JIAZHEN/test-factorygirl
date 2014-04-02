require 'active_record'
require 'faker'
require 'debugger'

ActiveRecord::Base.establish_connection(
  :adapter =>  "mysql2",
  :encoding =>  "utf8",
  :reconnect =>  true,
  :pool =>  5,
  :username =>  'root',
  :host =>  "localhost",
  :password => "123456",
  :database =>  "university")

ActiveRecord::Base.connection.tables.each do |table|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
end

Dir.glob('./models/*').each { |r| require r }
import 'tasks/sample_data.rake'