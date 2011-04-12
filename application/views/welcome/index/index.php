<h2><?php echo $track_status; ?></h2>

<?php if ($results->num_rows() == 0): ?>
Nothing is ready to roll. Try another category.
<?php else: ?>

<?php foreach ($results->result() as $row): ?>

<h3><?php echo $row->artist_name; ?> - <?php echo $row->track_name; ?> <?php if ($track_status == 'released' && $row->track_buy_url) echo '<a href="'.$row->track_buy_url.'">(Buy)</a>'; ?></h3>

<?php if ($row->track_soundcloud_id): ?>

<object height="81" width="480"> <param name="movie" value="http://player.soundcloud.com/player.swf?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F<?php echo $row->track_soundcloud_id; ?>&amp;show_comments=false&amp;auto_play=false&amp;color=ff7700"></param> <param name="allowscriptaccess" value="always"></param> <embed allowscriptaccess="always" height="81" src="http://player.soundcloud.com/player.swf?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F<?php echo $row->track_soundcloud_id; ?>&amp;show_comments=false&amp;auto_play=false&amp;color=ff7700" type="application/x-shockwave-flash" width="480"></embed> </object>

<?php elseif ($row->track_youtube_id): ?>
<object width="480" height="25"><param name="movie" value="http://www.youtube.com/v/<?php echo $row->track_youtube_id; ?>?fs=1&amp;hl=en_GB&amp;rel=0"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/<?php echo $row->track_youtube_id; ?>?fs=1&amp;hl=en_GB&amp;rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="480" height="25"></embed></object>

<?php else: ?>
<p>Awaiting track sample.</p>
<?php endif; ?>

<?php endforeach; ?>
<?php endif; ?>