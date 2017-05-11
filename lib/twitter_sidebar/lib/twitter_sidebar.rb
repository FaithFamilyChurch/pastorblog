class TwitterSidebar < Sidebar

    display_name 'Twitter Feed'
    description 'Show the latest tweets from a twitter feed'

    setting :twitter_user, 'Reuters', label: "Twitter Username"
    setting :title, "Twitter Feed"
    setting :tweet_count, 5, label: 'Number of Tweets'
    setting :twitter_height, '1000', label: 'Widget Height (in px)'
    setting :show_follow_button, true, label: 'Show Follow Button?', input_type: :checkbox, onclick: 'changeVal(this)'
    setting :show_read_more_button, true, label: 'Show Read More Button?', input_type: :checkbox, onclick: 'changeVal(this)'

    attr_accessor :twitter

end

SidebarRegistry.register_sidebar TwitterSidebar