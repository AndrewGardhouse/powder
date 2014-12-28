desc "clears the mountain's forecast rating"
task :clear_vote => :environment do

	locations = Location.all
	locations.each do |location|
		location.location_comments.destroy_all
	end
end