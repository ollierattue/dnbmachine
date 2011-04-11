                         </div>

                          <div class="column-right">
                                  	<ul>
										<li><a href="<?php echo base_url(); ?>unsigned">unsigned</a></li>
										<li><a href="<?php echo base_url(); ?>dub">dub</a><li>
										<li><a href="<?php echo base_url(); ?>forthcoming">forthcoming</a></li>
										<li><a href="<?php echo base_url(); ?>released">released</a></li>
										<li><a href="<?php echo base_url(); ?>classic">classic</a></li>
                                  	</ul>

									<?php if ($this->simpleloginsecure->is_logged_in()): ?>
									<hr />
									<ul>
										<li><a href="<?php echo base_url(); ?>track/add">add track</a></li>
										<li><a href="<?php echo base_url(); ?>track/view/all">view tracks</a></li>
										
										<li><a href="<?php echo base_url(); ?>artist/add">add artist</a></li>
										<li><a href="<?php echo base_url(); ?>artist/view/all">view artists</a></li>
										
									</ul>
									<?php endif; ?>
                          </div>
                  </div>
        </body>
</html>