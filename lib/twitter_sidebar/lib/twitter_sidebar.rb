class TwitterSidebar < Sidebar

    display_name 'Twitter Feed'
    description 'Show a given number of the latest tweets from a twitter feed'

    setting :title, ""
    setting :tweet_count, 5, label: 'Number of Tweets'
    setting :twitter_user, 'Reuters', label: "Twitter Account to Follow"

    attr_accessor :twitter

    def tweetbuilder
        @tweetbuilder ||= TweetBuilder.new
        @client ||= @tweetbuilder.twitter_client
    end


    def client
        return @client
    end


    def get_tweetbuilder
        return @tweetbuilder
    end

end

SidebarRegistry.register_sidebar TwitterSidebar