                         </div>

                          <div class="column-right">
                                  	<ul>
										<li><a href="<?php echo base_url(); ?>unsigned">unsigned</a></li>
										<li><a href="<?php echo base_url(); ?>dub">dub</a><li>
										<li><a href="<?php echo base_url(); ?>forthcoming">forthcoming</a></li>
										<li><a href="<?php echo base_url(); ?>released">released</a></li>
										<li><a href="<?php echo base_url(); ?>free">free</a></li>
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


				<?php
				// only output google analytic code live site
				if ("${_SERVER['HTTP_HOST']}" == 'dnbmachine.com'):
				?>
				<script type="text/javascript">

				  var _gaq = _gaq || [];
				  _gaq.push(['_setAccount', 'UA-7844413-7']);
				  _gaq.push(['_trackPageview']);

				  (function() {
				    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
				  })();

				</script>
				<?php endif; ?>
        </body>
</html>