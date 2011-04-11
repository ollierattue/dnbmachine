<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>dnb machine - from birth to release</title>
        <meta name="keywords" content="" />
        <meta name="description" content="." />
        <meta http-equiv="X-UA-Compatible" content="IE=8" />

        <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/core.css" />
		<?php if (base_url() == 'http://dnbmachine.com/'): ?>
		http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js
		<?php else: ?>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/javascripts/jquery/jquery.min.js"></script>
		<?php endif; ?>
</head>

<body id="bg<?php echo rand(1,6); ?>">
        <div class="page-wrapper">

        <div class="header">
                <h1><a href="<?php echo base_url(); ?>">dnb machine</a></h1>
			
				<?php if ($this->simpleloginsecure->is_logged_in()): ?>
				<span class="login"><a href="<?php echo base_url(); ?>dashboard">dashboard</a> | <a href="<?php echo base_url(); ?>logout">log out</a></span>
				<?php else: ?>
				<span class="login"><a href="<?php echo base_url(); ?>login">log in</a></span>
				<?php endif; ?>
				
        </div>
                  <div class="column-left">