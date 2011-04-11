<h2><?php echo $action; ?> track <?php if ($track_data['track_name']) echo ' - '.$track_data['track_name']; ?></h2>

<?php // Change the css classes to suit your needs    

$attributes = array('class' => '', 'id' => '');
echo form_open("track/op/{$action}/{$track_data['track_url_slug']}", $attributes); ?>

<p>
        <label for="track_name">Track name</label>
        <?php echo form_error('track_name'); ?>
        <br /><input id="track_name" type="text" name="track_name" maxlength="300" value="<?php echo set_value('track_name'); ?>"  />
</p>

<p>
        <label for="track_artist_id">Artist</label>
        <?php echo form_error('track_artist_id'); ?>
        <br /><?php echo form_dropdown('track_artist_id', $artist_select_options, set_value('track_artist_id'))?>
</p>                                             
                        
<p>
        <label for="track_status_id">Status</label>
        <?php echo form_error('track_status_id'); ?>
        <br /><?php echo form_dropdown('track_status_id', $track_status_select_options, set_value('track_status_id'))?>
</p>                                             
                        
<p>
        <label for="track_soundcloud_url">Soundcloud url</label>
        <?php echo form_error('track_soundcloud_url'); ?>
        <br /><input id="track_soundcloud_url" type="text" name="track_soundcloud_url" maxlength="500" value="<?php echo set_value('track_soundcloud_url'); ?>"  />
</p>

<p>
        <label for="track_soundcloud_id">Soundcloud id</label>
        <?php echo form_error('track_soundcloud_id'); ?>
        <br /><input id="track_soundcloud_id" type="text" name="track_soundcloud_id" maxlength="20" value="<?php echo set_value('track_soundcloud_id'); ?>"  />
</p>

<p>
        <label for="track_youtube_url">YouTube url</label>
        <?php echo form_error('track_youtube_url'); ?>
        <br /><input id="track_youtube_url" type="text" name="track_youtube_url" maxlength="500" value="<?php echo set_value('track_youtube_url'); ?>"  />
</p>

<p>
        <label for="track_youtube_id">YouTube id</label>
        <?php echo form_error('track_youtube_id'); ?>
        <br /><input id="track_youtube_id" type="text" name="track_youtube_id" maxlength="20" value="<?php echo set_value('track_youtube_id'); ?>"  />
</p>

	<p>
			<?php	
			if ($action == 'edit') $submit_button_copy = 'Save changes';
			if ($action == 'add') $submit_button_copy = 'Add track';
			?>
			<button type="submit"><?php echo $submit_button_copy?></button> <a href="<?php echo base_url(); ?>tracks/view/all">or cancel</a>
	</p>

<?php echo form_close(); ?>