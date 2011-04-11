<h2>edit artist - <?php echo $artist->artist_name; ?></h2>

<?php // Change the css classes to suit your needs    

$attributes = array('class' => '', 'id' => '');
echo form_open("artist/edit/{$artist->artist_url_slug}", $attributes); ?>

<p>
        <label for="artist_name">Artist's name</label>
        <?php echo form_error('artist_name'); ?>
        <br /><input id="artist_name" type="text" name="artist_name" maxlength="300" value="<?php echo set_value('artist_name', $artist->artist_name); ?>"  />
</p>

<p>
        <label for="artist_soundcloud">Artist's soundcloud</label>
        <?php echo form_error('artist_soundcloud'); ?>
        <br /><input id="artist_soundcloud" type="text" name="artist_soundcloud" maxlength="500" value="<?php echo set_value('artist_soundcloud', $artist->artist_soundcloud); ?>"  />
</p>

<p>
        <label for="artist_twitter">Artist's twitter</label>
        <?php echo form_error('artist_twitter'); ?>
        <br /><input id="artist_twitter" type="text" name="artist_twitter" maxlength="50" value="<?php echo set_value('artist_twitter', $artist->artist_twitter); ?>"  />
</p>

<p>
        <label for="artist_facebook">Artist's facebook</label>
        <?php echo form_error('artist_facebook'); ?>
        <br /><input id="artist_facebook" type="text" name="artist_facebook" maxlength="50" value="<?php echo set_value('artist_facebook', $artist->artist_facebook); ?>"  />
</p>
	
<p>
        <label for="artist_website">Artist's website</label>
        <?php echo form_error('artist_website'); ?>
        <br /><input id="artist_website" type="text" name="artist_website" maxlength="50" value="<?php echo set_value('artist_website', $artist->artist_website); ?>"  />
</p>
	
<p>
        <?php echo form_submit( 'submit', 'save'); ?> <a href="<?php echo base_url(); ?>artists/view/all">or cancel</a>
</p>

<?php echo form_close(); ?>