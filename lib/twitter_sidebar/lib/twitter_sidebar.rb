class TwitterSidebar < Sidebar
  display_name 'Twitter Feed'
  description 'Show a given number of the latest tweets from a twitter feed'

  setting :twitter_user, 'Reuters'
  setting :tweet_count, 5, label: 'Number of Tweets'

  attr_accessor :twitter

end

SidebarRegistry.register_sidebar TwitterSidebar