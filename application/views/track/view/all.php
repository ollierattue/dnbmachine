<h2>viewing all tracks</h2>

<?php if ($results->num_rows() == 0): ?>
Nothing is ready to roll. Try another category.
<?php else: ?>
<ul>
<?php foreach ($results->result() as $row): ?>

<li><a href="<?php echo base_url()."track/edit/{$row->track_url_slug}";?>"><?php echo $row->artist_name; ?> - <?php echo $row->track_name; ?></a> - 
<?php if ($row->track_soundcloud_id): ?>
Soundcloud
<?php elseif ($row->track_youtube_id): ?>
YouTube
<?php endif; ?>
</li>

<?php endforeach; ?>
</ul>
<?php endif; ?>