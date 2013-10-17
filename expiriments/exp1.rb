screenname="itservicesgroup"
tweets_json = _get_ "http://api.getmytweets.co.uk/?ver=3&screenname=#{screenname}&limit=15"

tweets=JSON.parse(tweets_json)


<!-- include the jQuery library if you haven't already -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>

<!-- include the GMTweets library, keep this hosted to our servers to ensure you stay up-to date -->
<script src="http://api.getmytweets.co.uk/min.tweet.3.js"></script>

<!-- the plugin -->
<script type="text/javascript">
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
</script>
    