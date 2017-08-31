<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="bodyright">
								<!--会议服务-->
									<div class="left_xuqiu">
										<h2><span>会议服务</span></h2>
										<div class="clear"></div>
											
											<div class="left_xuqiucontent">
												<ul>
													<?php
													$service_result	=	$this->allpublic->get_news_class(18);
													if($service_result):
														foreach($service_result as $row):
													?>
													<li><span>●</span> <a href="<?php echo(site_url('info/'.$row->news_class_id));?>" title="<?php echo($row->news_class_title);?>"><?php echo($row->news_class_title);?></a></li>
													<?php
														endforeach;
													endif;
													?>													
												</ul>
											</div>
											<div class="clear"></div>
									</div>
								<!--会议服务  oo-->

								
								<!--会议指南-->
									<div class="left_xuqiu">
										<h2><span>会议指南</span></h2>
										<div class="clear"></div>
											
											<div class="left_xuqiucontent">
												<ul>
													<?php
													$zhinan_result	=	$this->allpublic->get_news_class(31);
													if($zhinan_result):
														foreach($zhinan_result as $row):
													?>
													<li><span>●</span> <a href="<?php echo(site_url('info/'.$row->news_class_id));?>" title="<?php echo($row->news_class_title);?>"><?php echo($row->news_class_title);?></a></li>
													<?php
														endforeach;
													endif;
													?>													
												</ul>
											</div>
											<div class="clear"></div>
									</div>
								<!--会议指南  oo-->

								
								
								<!--关于会务通-->
									<div class="left_xuqiu">
										<h2><span>关于会务通</span></h2>
										<div class="clear"></div>
											
											<div class="left_xuqiucontent">
												<ul>
													<?php
													$about_result	=	$this->allpublic->get_news(36);
													if($about_result):
														foreach($about_result as $row):
													?>
													<li><span>●</span> <a href="<?php echo(site_url('info/detail/'.$row->news_id));?>" title="<?php echo($row->newstitle);?>"><?php echo($row->newstitle);?></a></li>
													<?php
														endforeach;
													endif;
													?>
												</ul>
											</div>
											<div class="clear"></div>
									</div>
								<!--会议指南  oo-->

								
								
							</div>