
$(document).ready(function(e) {
    
    $('.twitter_feed').getmytweets({
        twitter_sn: '', /* my twitter username */
        twitter_wrap: 'tweet', /* wrap each tweet with a class */
        twitter_limit: 10, /* how many tweets to return */
        twitter_pp: false, /* display your profile picture */
        twitter_stats: false, /* display your twitter stats */
        twitter_details: false /* display your details (name, location) */
    });
    
});
