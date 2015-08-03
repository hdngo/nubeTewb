# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }]
#   Mayor.create(name: 'Emanuel', city: cities.first)
# videos = []
# video1 = Yt::Video.new url: 'https://www.youtube.com/watch?v=Q8QGdnuWrqU'
# video2 = Yt::Video.new url: 'https://www.youtube.com/watch?v=T7pxa488YmI'
# video3 =  Yt::Video.new url: 'https://www.youtube.com/watch?v=ZwS14TiO7Pk'
# video4 =  Yt::Video.new url: 'https://www.youtube.com/watch?v=6uqAV4pwt6U'
# video5 =  Yt::Video.new url: 'https://www.youtube.com/watch?v=ncl-gaBEUco'
# video6 =  Yt::Video.new url: 'https://www.youtube.com/watch?v=aXhy5fhBX7c'
# video7 =  Yt::Video.new url: 'https://www.youtube.com/watch?v=H4Pzo475ccs'
# video8 =  Yt::Video.new url: 'https://www.youtube.com/watch?v=NvfAUE_ApF4'
# video9 =  Yt::Video.new url: 'https://www.youtube.com/watch?v=W3YyUcU6lU0'
# videos.push(video1, video2, video3, video4, video5, video6, video7, video8, video9)

# p video1.channel_title
# p video2.channel_title
# p video3.channel_title
# videos.each do |video|
# 	selected_video_data = {id: video.id, thumbnail: video.thumbnail_url, title: video.title, description: video.description, channel: video.channel_title, likes: video.like_count, dislikes: video.dislike_count}
# 	Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], description: selected_video_data[
# 		:description], channel: selected_video_data[:channel], likes: selected_video_data[:likes
# 			], dislikes: selected_video_data[:dislikes])
# end

search_videos = Yt::Collections::Videos.new
	Category.create(name: "popping")
	@popping= Category.find(1)
	@popping_tutorials = search_videos.where(q:'popping dance tutorial', order: 'relevance')
	@popping_tutorials.each do |popping_tutorial|
	selected_video_data = {id: popping_tutorial.id, thumbnail: popping_tutorial.thumbnail_url, title: popping_tutorial.title, description: popping_tutorial.description, channel: popping_tutorial.channel_title, likes: popping_tutorial.like_count, dislikes: popping_tutorial.dislike_count}
	@popping.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end
	################################ 
	Category.create(name: "housing")
	@housing = Category.find(2)
	@housing_tutorials = search_videos.where(q:'house dance tutorials', order: 'relevance')
	@housing_tutorials.each do |housing_tutorial|
		# p "hello"
		selected_video_data = {id: housing_tutorial.id, thumbnail: housing_tutorial.thumbnail_url, title: housing_tutorial.title, description: housing_tutorial.description, channel: housing_tutorial.channel_title, likes: housing_tutorial.like_count, dislikes: housing_tutorial.dislike_count}
	@housing.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end

	################################
	Category.create(name: "locking")
	@locking = Category.find(3)
	@locking_tutorials = search_videos.where(q:'locking dance tutorial', order: 'relevance')
	@locking_tutorials.each do |locking_tutorial|
	selected_video_data = {id: locking_tutorial.id, thumbnail: locking_tutorial.thumbnail_url, title: locking_tutorial.title, description: locking_tutorial.description, channel: locking_tutorial.channel_title, likes: locking_tutorial.like_count, dislikes: locking_tutorial.dislike_count}
	@locking.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])
	end


	################################
	Category.create(name: "waacking")
	@waacking = Category.find(4)
	@waacking_tutorials = search_videos.where(q:'waacking dance tutorial', order: 'relevance')
	@waacking_tutorials.each do |waacking_tutorial|
	selected_video_data = {id: waacking_tutorial.id, thumbnail: waacking_tutorial.thumbnail_url, title: waacking_tutorial.title, description: waacking_tutorial.description, channel: waacking_tutorial.channel_title, likes: waacking_tutorial.like_count, dislikes: waacking_tutorial.dislike_count}
	@waacking.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])


	################################
	Category.create(name: "breaking")
	@breaking = Category.find(5)
	@breaking_tutorials = search_videos.where(q:'breaking dance tutorial', order: 'relevance')
	@breaking_tutorials.each do |breaking_tutorial|
	selected_video_data = {id: breaking_tutorial.id, thumbnail: breaking_tutorial.thumbnail_url, title: breaking_tutorial.title, description: breaking_tutorial.description, channel: breaking_tutorial.channel_title, likes: breaking_tutorial.like_count, dislikes: breaking_tutorial.dislike_count}
	@breaking.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])

	################################
	Category.create(name: "vogueing")
	@vogueing = Category.find(6)
	@vogueing_tutorials = search_videos.where(q:'vogueing dance tutorial', order: 'relevance')
	@vogueing_tutorials.each do |vogueing_tutorial|
	selected_video_data = {id: vogueing_tutorial.id, thumbnail: vogueing_tutorial.thumbnail_url, title: vogueing_tutorial.title, description: vogueing_tutorial.description, channel: vogueing_tutorial.channel_title, likes: vogueing_tutorial.like_count, dislikes: vogueing_tutorial.dislike_count}
	@vogueing.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])

	################################
	Category.create(name: "krumping")
	@krumping = Category.find(7)
	@krumping_tutorials = search_videos.where(q:'krumping dance tutorial', order: 'relevance')
	@krumping_tutorials.each do |krumping_tutorial|
	selected_video_data = {id: krumping_tutorial.id, thumbnail: krumping_tutorial.thumbnail_url, title: krumping_tutorial.title, description: krumping_tutorial.description, channel: krumping_tutorial.channel_title, likes: krumping_tutorial.like_count, dislikes: krumping_tutorial.dislike_count}
	@krumping.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])


	################################
	Category.create(name: "hiphop")
	@hiphop = Category.find(8)
	@hiphop_tutorials = search_videos.where(q:'hiphop dance tutorial', order: 'relevance')
	@hiphop_tutorials.each do |hiphop_tutorial|
	selected_video_data = {id: hiphop_tutorial.id, thumbnail: hiphop_tutorial.thumbnail_url, title: hiphop_tutorial.title, description: hiphop_tutorial.description, channel: hiphop_tutorial.channel_title, likes: hiphop_tutorial.like_count, dislikes: hiphop_tutorial.dislike_count}
	@hiphop.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])

	################################
	Category.create(name: "swing")
	@swing = Category.find(9)
	@swing_tutorials = search_videos.where(q:'swing dance tutorial', order: 'relevance')
	@swing_tutorials.each do |swing_tutorial|
	selected_video_data = {id: swing_tutorial.id, thumbnail: swing_tutorial.thumbnail_url, title: swing_tutorial.title, description: swing_tutorial.description, channel: swing_tutorial.channel_title, likes: swing_tutorial.like_count, dislikes: swing_tutorial.dislike_count}
	@swing.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])

	################################
	Category.create(name: "salsa")
	@salsa = Category.find(10)
	@salsa_tutorials = search_videos.where(q:'salsa dance tutorial', order: 'relevance')
	@salsa_tutorials.each do |salsa_tutorial|
	selected_video_data = {id: salsa_tutorial.id, thumbnail: salsa_tutorial.thumbnail_url, title: salsa_tutorial.title, description: salsa_tutorial.description, channel: salsa_tutorial.channel_title, likes: salsa_tutorial.like_count, dislikes: salsa_tutorial.dislike_count}
	@salsa.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])

	################################
	Category.create(name: "tango")
	@tango = Category.find(11)
	@tango_tutorials = search_videos.where(q:'tango dance tutorial', order: 'relevance')
	@tango_tutorials.each do |tango_tutorial|
	selected_video_data = {id: tango_tutorial.id, thumbnail: tango_tutorial.thumbnail_url, title: tango_tutorial.title, description: tango_tutorial.description, channel: tango_tutorial.channel_title, likes: tango_tutorial.like_count, dislikes: tango_tutorial.dislike_count}
	@tango.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])

	################################
	Category.create(name: "ballet")
	@ballet = Category.find(12)
	@ballet_tutorials = search_videos.where(q:'ballet dance tutorial', order: 'relevance')
	@ballet_tutorials.each do |ballet_tutorial|
	selected_video_data = {id: ballet_tutorial.id, thumbnail: ballet_tutorial.thumbnail_url, title: ballet_tutorial.title, description: ballet_tutorial.description, channel: ballet_tutorial.channel_title, likes: ballet_tutorial.like_count, dislikes: ballet_tutorial.dislike_count}
	@ballet.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])

	################################
	Category.create(name: "tap")
	@tap = Category.find(13)
	@tap_tutorials = search_videos.where(q:'tap dance tutorial', order: 'relevance')
	@tap_tutorials.each do |tap_tutorial|
	selected_video_data = {id: tap_tutorial.id, thumbnail: tap_tutorial.thumbnail_url, title: tap_tutorial.title, description: tap_tutorial.description, channel: tap_tutorial.channel_title, likes: tap_tutorial.like_count, dislikes: tap_tutorial.dislike_count}
	@tap.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])

	################################
	Category.create(name: "mj")
	@mj = Category.find(14)
	@mj_tutorials = search_videos.where(q:'mj dance tutorial', order: 'relevance')
	@mj_tutorials.each do |mj_tutorial|
	selected_video_data = {id: mj_tutorial.id, thumbnail: mj_tutorial.thumbnail_url, title: mj_tutorial.title, description: mj_tutorial.description, channel: mj_tutorial.channel_title, likes: mj_tutorial.like_count, dislikes: mj_tutorial.dislike_count}
	@mj.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])

	################################
	Category.create(name: "funny")
	@funny = Category.find(15)
	@funny_tutorials = search_videos.where(q:'funny dance tutorial', order: 'relevance')
	@funny_tutorials.each do |funny_tutorial|
	selected_video_data = {id: funny_tutorial.id, thumbnail: funny_tutorial.thumbnail_url, title: funny_tutorial.title, description: funny_tutorial.description, channel: funny_tutorial.channel_title, likes: funny_tutorial.like_count, dislikes: funny_tutorial.dislike_count}
	@funny.videos.create(yt_id: "#{selected_video_data[:id]}", link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}", thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[:description], likes: selected_video_data[:likes], dislikes: selected_video_data[:dislikes])

	################################


# original_video = Yt::Video.new url: 'https://www.youtube.com/watch?v=Q8QGdnuWrqU'
# # snipped_video_data = raw_vid.snippet.data
# selected_video_data = {id: original_video.id, thumbnail: original_video.thumbnail_url, title: original_video.title, description: original_video.description, channel: original_video.channel_title, likes: original_video.like_count, dislikes: original_video.dislike_count}
# # video_data = raw_vid_data.merge!(snipped_video_data)


# @video = Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], description: selected_video_data[
# 	:description], channel: selected_video_data[:channel_title], likes: selected_video_data[:like_count
# 		], dislikes: selected_video_data[:dislike_count])