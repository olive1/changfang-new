							<div class="search">
								<div class="searchtitle">
								<img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/searchlogo.gif" />
									<h2>会议场地查询及预订</h2>
								</div>
								
								<div class="searchcontent">
									<form method="get" action="<?php echo(site_url('meeting'));?>" name="searchform">
									<table width="100%">
										<tr>
											<td width="20%" align="right" valign="middle">
												地区：
											</td>
											<td width="80%" align="left" valign="middle">
												<select name="cid_a" id="cid_a">
													<option value="0">
														省（市）
													</option>
												</select>
												<select name="cid_b" id="cid_b">
													<option value="0">
														市（区）
													</option>
												</select>
											</td>
										</tr>
										
										<tr>
											<td width="20%" align="right" valign="middle">
												商圈：
											</td>
											<td width="80%" align="left" valign="middle">
												<select name="area" value="0" id="area">
													<option value="0">全部</option>
												</select>
											</td>
										</tr>
										
										
										<tr>
											<td width="20%" align="right" valign="middle">
												价格：
											</td>
											<td width="80%" align="left" valign="middle">
												<select name="price_a" id="price_a">
													<option value="0">全部</option>
												</select>
												<select name="price_b" id="price_b">
													<option value="0">全部</option>
												</select>
											</td>
										</tr>
										
										
										<tr>
											<td width="20%" align="right" valign="middle">
												人数：
											</td>
											<td width="80%" align="left" valign="middle">
												<select name="menu_table" id="menu_table">
													<option value="0">全部</option>
												</select>
											</td>
										</tr>
										
										
										<tr>
											<td width="20%" align="right" valign="middle">
												面积：
											</td>
											<td width="80%" align="left" valign="middle">
												<select name="menu_l_price" id="menu_l_price">
													<option value="0">全部</option>
												</select>
											</td>
										</tr>
										
										<tr>
											<td width="20%" align="right" valign="middle">
												布局：
											</td>
											<td width="80%" align="left" valign="middle">
												<select name="put_id" id="put_id">
													<option value="0">全部</option>
												</select>
												<select name="score" id="score">
													<option value="0">星级</option>
												</select>
											</td>
										</tr>

										
										
										<tr>
											<td width="20%" align="right" valign="middle">
												名称：
											</td>
											<td width="80%" align="left" valign="middle">
												<input type="text" name="goods_name">
											</td>
										</tr>
									</table>
										
									<div class="searchsub">
										<input type="submit" src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/searchsubmit.jpg" value="  " class="searchsubmit">
									</div>
									</form>

								</div>
							</div>
