<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<!--foot-->
			<div class="foot">
				<div class="nav">
					 <?php
					 $index_foot	=	$top_foot['index_foot'];	
					 if($index_foot):
										$i = 0;														
											foreach($index_foot as $news_row):
											$i++;
										?>
										<a href="<?php echo(site_url('article/detail/'.$news_row['news_id']));?>"><?php echo($news_row['newstitle']);?></a> | 
										<?php
											endforeach;
					 endif;
										?>
					<br>
					沪ICP备   500002XCCD   Copyright © 2012huiwutong
				</div>			
				
				<div>
					<img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/webjb.jpg">
				</div>	
			</div>
			<!--foot 00-->
