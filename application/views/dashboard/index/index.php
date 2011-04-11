<h2>dashboard - <?php echo $this->session->userdata('user_username'); ?></h2>

<ul>
	<li><a href="<?php echo base_url(); ?>artist/view/all">view artists</a></li>
	<li><a href="<?php echo base_url(); ?>artist/add">add artist</a></li>
	<li><a href="<?php echo base_url(); ?>track/view/all">view tracks</a></li>
	<li><a href="<?php echo base_url(); ?>track/add">add track</a></li>
</ul>