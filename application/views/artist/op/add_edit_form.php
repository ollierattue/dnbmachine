<h2><?php echo $action; ?> artist <?php if ($artist_data['artist_name']) echo ' - '.$artist_data['artist_name']; ?></h2>

<?php // Change the css classes to suit your needs    

$attributes = array('class' => '', 'id' => '');
echo form_open("artist/op/{$action}/{$artist_data['artist_url_slug']}", $attributes); ?>

<p>
        <label for="artist_name">Artist's name</label>
        <?php echo form_error('artist_name'); ?>
        <br /><input id="artist_name" type="text" name="artist_name" maxlength="300" value="<?php echo set_value('artist_name', $artist_data['artist_name']); ?>"  />
</p>

<p>
        <label for="artist_soundcloud">Soundcloud (just account name)</label>
        <?php echo form_error('artist_soundcloud'); ?>
        <br /><input id="artist_soundcloud" type="text" name="artist_soundcloud" maxlength="500" value="<?php echo set_value('artist_soundcloud', $artist_data['artist_soundcloud']); ?>"  />
</p>

<p>
        <label for="artist_twitter">Twitter (just account name)</label>
        <?php echo form_error('artist_twitter'); ?>
        <br /><input id="artist_twitter" type="text" name="artist_twitter" maxlength="50" value="<?php echo set_value('artist_twitter', $artist_data['artist_twitter']); ?>"  />
</p>

<p>
        <label for="artist_facebook">Facebook (just account name)</label>
        <?php echo form_error('artist_facebook'); ?>
        <br /><input id="artist_facebook" type="text" name="artist_facebook" maxlength="100" value="<?php echo set_value('artist_facebook', $artist_data['artist_facebook']); ?>"  />
</p>

<p>
        <label for="artist_mysapce">Myspace (just account name)</label>
        <?php echo form_error('artist_myspace'); ?>
        <br /><input id="artist_myspace" type="text" name="artist_myspace" maxlength="200" value="<?php echo set_value('artist_myspace', $artist_data['artist_myspace']); ?>"  />
</p>

<p>
        <label for="artist_disogs">Disogs (just account name)</label>
        <?php echo form_error('artist_disogs'); ?>
        <br /><input id="artist_disogs" type="text" name="artist_disogs" maxlength="200" value="<?php echo set_value('artist_disogs', $artist_data['artist_disogs']); ?>"  />
</p>		
	
<p>
        <label for="artist_website">Website (including http://)</label>
        <?php echo form_error('artist_website'); ?>
        <br /><input id="artist_website" type="text" name="artist_website" maxlength="500" value="<?php echo set_value('artist_website', $artist_data['artist_website']); ?>"  />
</p>
	
<p>
		<?php	
		if ($action == 'edit') $submit_button_copy = 'Save changes';
		if ($action == 'add') $submit_button_copy = 'Add artist';
		?>
		<button type="submit"><?php echo $submit_button_copy?></button> <a href="<?php echo base_url(); ?>artist/view/all">or cancel</a>
</p>

<?php echo form_close(); ?>