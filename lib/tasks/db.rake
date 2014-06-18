namespace :db do
  desc "Load a small set of data so the app is usable for development."
  task sample_data: :environment do
    sample_data = File.join(Rails.root, 'db', 'sample_data.rb')
    load(sample_data) if sample_data
  end
end
