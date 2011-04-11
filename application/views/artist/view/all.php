<h2>viewing all artists</h2>

<?php if ($results->num_rows() == 0): ?>
Nothing is ready to roll. Try another category.
<?php else: ?>
<ul>
<?php foreach ($results->result() as $row): ?>

<li><a href="<?php echo base_url(); ?>artist/edit/<?php echo $row->artist_url_slug; ?>"><?php echo $row->artist_name; ?></a> <a href="<?php echo base_url(); ?>track/delete/<?php echo $row->artist_url_slug; ?>"><img src="<?php echo base_url();?>images/icons/delete.gif" alt="delete artist"  onclick="if ( confirm('Are you sure you want to delete this artist and all their tracks?') ) { return true;}return false;" /></a></li>
<?php endforeach; ?>
</ul>
<?php endif; ?>