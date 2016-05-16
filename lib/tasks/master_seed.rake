namespace :db do
	namespace :seed do
		task :track_bill => :environment do
			require "#{Rails.root}/db/seeds.rb"
		end
	end
end