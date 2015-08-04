search_videos = Yt::Collections::Videos.new
	Category.create(name: "popping")
	@popping= Category.find_by(name: 'popping')
	@popping_tutorials = search_videos.where(q:'popping dance tutorial', order: 'relevance').first(200)
	@popping_tutorials.each do |popping_tutorial|
	selected_video_data = {id: popping_tutorial.id, thumbnail: popping_tutorial.thumbnail_url, title: popping_tutorial.title, description: popping_tutorial.description, channel: popping_tutorial.channel_title, likes: popping_tutorial.like_count, dislikes: popping_tutorial.dislike_count}
	@popping.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end
	################################ 
	Category.create(name: "housing")
	@housing = Category.find_by(name: 'housing')
	@housing_tutorials = search_videos.where(q:'house dance tutorials', order: 'relevance').first(200)
	@housing_tutorials.each do |housing_tutorial|
		# p "hello"
		selected_video_data = {id: housing_tutorial.id, thumbnail: housing_tutorial.thumbnail_url, title: housing_tutorial.title, description: housing_tutorial.description, channel: housing_tutorial.channel_title, likes: housing_tutorial.like_count, dislikes: housing_tutorial.dislike_count}
	@housing.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end

	################################
	Category.create(name: "locking")
	@locking = Category.find_by(name: 'locking')
	@locking_tutorials = search_videos.where(q:'locking dance tutorial', order: 'relevance').first(200)
	@locking_tutorials.each do |locking_tutorial|
	selected_video_data = {id: locking_tutorial.id, thumbnail: locking_tutorial.thumbnail_url, title: locking_tutorial.title, description: locking_tutorial.description, channel: locking_tutorial.channel_title, likes: locking_tutorial.like_count, dislikes: locking_tutorial.dislike_count}
	@locking.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end


	################################
	Category.create(name: "waacking")
	@waacking = Category.find_by(name: 'waacking')
	@waacking_tutorials = search_videos.where(q:'waacking dance tutorial', order: 'relevance').first(200)
	@waacking_tutorials.each do |waacking_tutorial|
	selected_video_data = {id: waacking_tutorial.id, thumbnail: waacking_tutorial.thumbnail_url, title: waacking_tutorial.title, description: waacking_tutorial.description, channel: waacking_tutorial.channel_title, likes: waacking_tutorial.like_count, dislikes: waacking_tutorial.dislike_count}
	@waacking.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end


	################################
	Category.create(name: "breaking")
	@breaking = Category.find_by(name: 'breaking')
	@breaking_tutorials = search_videos.where(q:'breaking dance tutorial', order: 'relevance').first(200)
	@breaking_tutorials.each do |breaking_tutorial|
	selected_video_data = {id: breaking_tutorial.id, thumbnail: breaking_tutorial.thumbnail_url, title: breaking_tutorial.title, description: breaking_tutorial.description, channel: breaking_tutorial.channel_title, likes: breaking_tutorial.like_count, dislikes: breaking_tutorial.dislike_count}
	@breaking.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end

	################################
	Category.create(name: "vogueing")
	@vogueing = Category.find_by(name: 'vogueing')
	@vogueing_tutorials = search_videos.where(q:'vogueing dance tutorial', order: 'relevance').first(200)
	@vogueing_tutorials.each do |vogueing_tutorial|
	selected_video_data = {id: vogueing_tutorial.id, thumbnail: vogueing_tutorial.thumbnail_url, title: vogueing_tutorial.title, description: vogueing_tutorial.description, channel: vogueing_tutorial.channel_title, likes: vogueing_tutorial.like_count, dislikes: vogueing_tutorial.dislike_count}
	@vogueing.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end

	################################
	Category.create(name: "krumping")
	@krumping = Category.find_by(name: 'krumping')
	@krumping_tutorials = search_videos.where(q:'krumping dance tutorial', order: 'relevance').first(200)
	@krumping_tutorials.each do |krumping_tutorial|
	selected_video_data = {id: krumping_tutorial.id, thumbnail: krumping_tutorial.thumbnail_url, title: krumping_tutorial.title, description: krumping_tutorial.description, channel: krumping_tutorial.channel_title, likes: krumping_tutorial.like_count, dislikes: krumping_tutorial.dislike_count}
	@krumping.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end

	################################
	Category.create(name: "hiphop")
	@hiphop = Category.find_by(name: 'hiphop')
	@hiphop_tutorials = search_videos.where(q:'hiphop dance tutorial', order: 'relevance').first(200)
	@hiphop_tutorials.each do |hiphop_tutorial|
	selected_video_data = {id: hiphop_tutorial.id, thumbnail: hiphop_tutorial.thumbnail_url, title: hiphop_tutorial.title, description: hiphop_tutorial.description, channel: hiphop_tutorial.channel_title, likes: hiphop_tutorial.like_count, dislikes: hiphop_tutorial.dislike_count}
	@hiphop.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end

	################################
	Category.create(name: "swing")
	@swing = Category.find_by(name: 'swing')
	@swing_tutorials = search_videos.where(q:'swing dance tutorial', order: 'relevance').first(200)
	@swing_tutorials.each do |swing_tutorial|
	selected_video_data = {id: swing_tutorial.id, thumbnail: swing_tutorial.thumbnail_url, title: swing_tutorial.title, description: swing_tutorial.description, channel: swing_tutorial.channel_title, likes: swing_tutorial.like_count, dislikes: swing_tutorial.dislike_count}
	@swing.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end

	################################
	Category.create(name: "salsa")
	@salsa = Category.find_by(name: 'salsa')
	@salsa_tutorials = search_videos.where(q:'salsa dance tutorial', order: 'relevance').first(200)
	@salsa_tutorials.each do |salsa_tutorial|
	selected_video_data = {id: salsa_tutorial.id, thumbnail: salsa_tutorial.thumbnail_url, title: salsa_tutorial.title, description: salsa_tutorial.description, channel: salsa_tutorial.channel_title, likes: salsa_tutorial.like_count, dislikes: salsa_tutorial.dislike_count}
	@salsa.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end

	################################
	Category.create(name: "tango")
	@tango = Category.find_by(name: 'tango')
	@tango_tutorials = search_videos.where(q:'tango dance tutorial', order: 'relevance').first(200)
	@tango_tutorials.each do |tango_tutorial|
	selected_video_data = {id: tango_tutorial.id, thumbnail: tango_tutorial.thumbnail_url, title: tango_tutorial.title, description: tango_tutorial.description, channel: tango_tutorial.channel_title, likes: tango_tutorial.like_count, dislikes: tango_tutorial.dislike_count}
	@tango.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end

	################################
	Category.create(name: "ballet")
	@ballet = Category.find_by(name: 'ballet')
	@ballet_tutorials = search_videos.where(q:'ballet dance tutorial', order: 'relevance').first(200)
	@ballet_tutorials.each do |ballet_tutorial|
	selected_video_data = {id: ballet_tutorial.id, thumbnail: ballet_tutorial.thumbnail_url, title: ballet_tutorial.title, description: ballet_tutorial.description, channel: ballet_tutorial.channel_title, likes: ballet_tutorial.like_count, dislikes: ballet_tutorial.dislike_count}
	@ballet.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end

	################################
	Category.create(name: "tap")
	@tap = Category.find_by(name: 'tap')
	@tap_tutorials = search_videos.where(q:'tap dance tutorial', order: 'relevance').first(200)
	@tap_tutorials.each do |tap_tutorial|
	selected_video_data = {id: tap_tutorial.id, thumbnail: tap_tutorial.thumbnail_url, title: tap_tutorial.title, description: tap_tutorial.description, channel: tap_tutorial.channel_title, likes: tap_tutorial.like_count, dislikes: tap_tutorial.dislike_count}
	@tap.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end

	################################
	Category.create(name: "mj")
	@mj = Category.find_by(name: 'mj')
	@mj_tutorials = search_videos.where(q:'mj dance tutorial', order: 'relevance').first(200)
	@mj_tutorials.each do |mj_tutorial|
	selected_video_data = {id: mj_tutorial.id, thumbnail: mj_tutorial.thumbnail_url, title: mj_tutorial.title, description: mj_tutorial.description, channel: mj_tutorial.channel_title, likes: mj_tutorial.like_count, dislikes: mj_tutorial.dislike_count}
	@mj.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end

	################################
	Category.create(name: "funny")
	@funny = Category.find_by(name: 'funny')
	@funny_tutorials = search_videos.where(q:'funny dance tutorial', order: 'relevance').first(200)
	@funny_tutorials.each do |funny_tutorial|
	selected_video_data = {id: funny_tutorial.id, thumbnail: funny_tutorial.thumbnail_url, title: funny_tutorial.title, description: funny_tutorial.description, channel: funny_tutorial.channel_title, likes: funny_tutorial.like_count, dislikes: funny_tutorial.dislike_count}
	@funny.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end

