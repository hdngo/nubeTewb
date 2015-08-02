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
	@popping_tutorials = search_videos.where(q:'popping dance tutorial')
	# @popping_tutorials.each do |popping_tutorial|
	# selected_video_data = {id: popping_tutorial.id, thumbnail: popping_tutorial.thumbnail_url, title: popping_tutorial.title, description: popping_tutorial.description, channel: popping_tutorial.channel_title, likes: popping_tutorial.like_count, dislikes: popping_tutorial.dislike_count}
	# Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[
	# 	:description], category: "popping", likes: selected_video_data[:likes
	# 		], dislikes: selected_video_data[:dislikes])
	# end
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
	# @locking_tutorials = search_videos.where(q:'locking dance tutorial')
	# @locking_tutorials.each do |locking_tutorial|
	# selected_video_data = {id: locking_tutorial.id, thumbnail: locking_tutorial.thumbnail_url, title: locking_tutorial.title, description: locking_tutorial.description, channel: locking_tutorial.channel_title, likes: locking_tutorial.like_count, dislikes: locking_tutorial.dislike_count}
	# Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[
	# 	:description], category: "locking", likes: selected_video_data[:likes
	# 		], dislikes: selected_video_data[:dislikes])
	# end


	################################
	Category.create(name: "waacking")
	# @waacking_tutorials = search_videos.where(q:'waacking dance tutorial')
	# @waacking_tutorials.each do |waacking_tutorial|
	# 	selected_video_data = {id: waacking_tutorial.id, thumbnail: waacking_tutorial.thumbnail_url, title: waacking_tutorial.title, description: waacking_tutorial.description, channel: waacking_tutorial.channel_title, likes: waacking_tutorial.like_count, dislikes: waacking_tutorial.dislike_count}
	# Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[
	# 	:description], category: "waacking", likes: selected_video_data[:likes
	# 		], dislikes: selected_video_data[:dislikes])
	# end


	################################
	Category.create(name: "breaking")
	# @breakdance_tutorials = search_videos.where(q: 'breakdance tutorial')
	# @breakdance_tutorials.each do |breakdance_tutorial|
	# 	selected_video_data = {id: breakdance_tutorial.id, thumbnail: breakdance_tutorial.thumbnail_url, title: breakdance_tutorial.title, description: breakdance_tutorial.description, channel: breakdance_tutorial.channel_title, likes: breakdance_tutorial.like_count, dislikes: breakdance_tutorial.dislike_count}
	# Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[
	# 	:description], category: "breaking", likes: selected_video_data[:likes
	# 		], dislikes: selected_video_data[:dislikes])
	# end

	################################
	Category.create(name: "vogueing")
	# @vogue_tutorials = search_videos.where(q:'vogue dance tutorial')
	# @vogue_tutorials.each do |vogue_tutorial|
	# 	selected_video_data = {id: vogue_tutorial.id, thumbnail: vogue_tutorial.thumbnail_url, title: vogue_tutorial.title, description: vogue_tutorial.description, channel: vogue_tutorial.channel_title, likes: vogue_tutorial.like_count, dislikes: vogue_tutorial.dislike_count}
	# Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[
	# 	:description], category: "vogueing", likes: selected_video_data[:likes
	# 		], dislikes: selected_video_data[:dislikes])
	# end

	################################
	Category.create(name: "krumping")
	# @krump_tutorials = search_videos.where(q:'krump dance tutorial')
	# @krump_tutorials.each do |krump_tutorial|
	# 	selected_video_data = {id: krump_tutorial.id, thumbnail: krump_tutorial.thumbnail_url, title: krump_tutorial.title, description: krump_tutorial.description, channel: krump_tutorial.channel_title, likes: krump_tutorial.like_count, dislikes: krump_tutorial.dislike_count}
	# Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[
	# 	:description], category: "krumping", likes: selected_video_data[:likes
	# 		], dislikes: selected_video_data[:dislikes])
	# end


	################################
	Category.create(name: "hiphop")
	# @hiphop_tutorials = search_videos.where(q:'hiphop dance tutorial')
	# @hiphop_tutorials.each do |hiphop_tutorial|
	# selected_video_data = {id: hiphop_tutorial.id, thumbnail: hiphop_tutorial.thumbnail_url, title: hiphop_tutorial.title, description: hiphop_tutorial.description, channel: hiphop_tutorial.channel_title, likes: hiphop_tutorial.like_count, dislikes: hiphop_tutorial.dislike_count}
	# Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[
	# 	:description], category: "hiphop", likes: selected_video_data[:likes
	# 		], dislikes: selected_video_data[:dislikes])
	# end

	################################
	Category.create(name: "swing")
	# @swing_tutorials = search_videos.where(q:'swing dance tutorial')
	# @swing_tutorials.each do |swing_tutorial|
	# 	selected_video_data = {id: swing_tutorial.id, thumbnail: swing_tutorial.thumbnail_url, title: swing_tutorial.title, description: swing_tutorial.description, channel: swing_tutorial.channel_title, likes: swing_tutorial.like_count, dislikes: swing_tutorial.dislike_count}
	# Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[
	# 	:description], category: "swing", likes: selected_video_data[:likes
	# 		], dislikes: selected_video_data[:dislikes])
	# end

	################################
	Category.create(name: "salsa")
	# @salsa_tutorials = search_videos.where(q:'salsa dance tutorial')
	# @salsa_tutorials.each do |salsa_tutorial|
	# selected_video_data = {id: salsa_tutorial.id, thumbnail: salsa_tutorial.thumbnail_url, title: salsa_tutorial.title, description: salsa_tutorial.description, channel: salsa_tutorial.channel_title, likes: salsa_tutorial.like_count, dislikes: salsa_tutorial.dislike_count}
	# Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[
	# 	:description], category: "salsa", likes: selected_video_data[:likes
	# 		], dislikes: selected_video_data[:dislikes])
	# end

	################################
	Category.create(name: "tango")
	# @tango_tutorials = search_videos.where(q:'tango dance tutorial')
	# @tango_tutorials.each do |tango_tutorial|
	# 	selected_video_data = {id: tango_tutorial.id, thumbnail: tango_tutorial.thumbnail_url, title: tango_tutorial.title, description: tango_tutorial.description, channel: tango_tutorial.channel_title, likes: tango_tutorial.like_count, dislikes: tango_tutorial.dislike_count}
	# Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[
	# 	:description], category: "tango", likes: selected_video_data[:likes
	# 		], dislikes: selected_video_data[:dislikes])
	# end

	################################
	Category.create(name: "ballet")
	# @ballet_tutorials = search_videos.where(q:'ballet dance tutorial')
	# @ballet_tutorials.each do |ballet_tutorial|
	# selected_video_data = {id: ballet_tutorial.id, thumbnail: ballet_tutorial.thumbnail_url, title: ballet_tutorial.title, description: ballet_tutorial.description, channel: ballet_tutorial.channel_title, likes: ballet_tutorial.like_count, dislikes: ballet_tutorial.dislike_count}
	# Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[
	# 	:description], category: "ballet", likes: selected_video_data[:likes
	# 		], dislikes: selected_video_data[:dislikes])
	# end	

	################################
	Category.create(name: "tap")
	# @tap_tutorials = search_videos.where(q:'tap dance tutorial')
	# @tap_tutorials.each do |tap_tutorial|
	# 	selected_video_data = {id: tap_tutorial.id, thumbnail: tap_tutorial.thumbnail_url, title: tap_tutorial.title, description: tap_tutorial.description, channel: tap_tutorial.channel_title, likes: tap_tutorial.like_count, dislikes: tap_tutorial.dislike_count}
	# Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[
	# 	:description], category: "tap", likes: selected_video_data[:likes
	# 		], dislikes: selected_video_data[:dislikes])
	# end

	################################
	Category.create(name: "mj")
	# @mj_tutorials = search_videos.where(q:'michael jackson dance tutorial')
	# @mj_tutorials.each do |mj_tutorial|
	# 	selected_video_data = {id: mj_tutorial.id, thumbnail: mj_tutorial.thumbnail_url, title: mj_tutorial.title, description: mj_tutorial.description, channel: mj_tutorial.channel_title, likes: mj_tutorial.like_count, dislikes: mj_tutorial.dislike_count}
	# Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[
	# 	:description], category: "mj", likes: selected_video_data[:likes
	# 		], dislikes: selected_video_data[:dislikes])
	# end

	################################
	Category.create(name: "funny")
	# @funny = Category.find_by(name: "funny")
	# @funny_tutorials = search_videos.where(q: 'funny dance tutorial')
	# @funny_tutorials.each do |funny_tutorial|
	# 	selected_video_data = {id: funny_tutorial.id, thumbnail: funny_tutorial.thumbnail_url, title: funny_tutorial.title, description: funny_tutorial.description, channel: funny_tutorial.channel_title, likes: funny_tutorial.like_count, dislikes: funny_tutorial.dislike_count}
	# @funny.videos.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], channel: selected_video_data[:channel], description: selected_video_data[
	# 	:description], category: "funny", likes: selected_video_data[:likes
	# 		], dislikes: selected_video_data[:dislikes], category_id: 15)
	# end

	################################


# original_video = Yt::Video.new url: 'https://www.youtube.com/watch?v=Q8QGdnuWrqU'
# # snipped_video_data = raw_vid.snippet.data
# selected_video_data = {id: original_video.id, thumbnail: original_video.thumbnail_url, title: original_video.title, description: original_video.description, channel: original_video.channel_title, likes: original_video.like_count, dislikes: original_video.dislike_count}
# # video_data = raw_vid_data.merge!(snipped_video_data)


# @video = Video.create( link: "https://www.youtube.com/watch?v=#{selected_video_data[:id]}",thumbnail: selected_video_data[:thumbnail], title: selected_video_data[:title], description: selected_video_data[
# 	:description], channel: selected_video_data[:channel_title], likes: selected_video_data[:like_count
# 		], dislikes: selected_video_data[:dislike_count])