{include file='user/main.tpl'}
	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">延遲檢測</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="ui-card-wrap">
					<div class="row">
						<div class="col-lg-12 col-sm-12">
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
									<!--	<p class="card-heading">注意!</p>    -->
										<p>此處只展示最近{$hour}小時的記錄。<b>測試節點來自 <a href="http://speedtest.net">Speedtest</a>，數據僅供參考~</b></p>
									</div>

								</div>
							</div>
						</div>
						<div class="col-lg-12 col-sm-12">
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">三網延遲檢測</p>
										<div class="card-table">
											<div class="table-responsive">
												<table class="table">
													<tr>
														<th>節點</th>
														<th>電信延遲</th>
													<!--	<th>電信下載速度</th>
														<th>電信上傳速度</th>   -->
														<th>聯通延遲</th>
													<!--	<th>聯通下載速度</th>
														<th>聯通上傳速度</th>  -->
														<th>移動延遲</th>
													<!--	<th>移動下載速度</th>
														<th>移動上傳速度</th>  -->
													</tr>
													{foreach $speedtest as $single}

														<tr>
															<td>{$single->node()->name}</td>
															<td>{$single->telecomping}</td>
														<!--	<td>{$single->telecomeupload}</td>
															<td>{$single->telecomedownload}</td>  -->
															<td>{$single->unicomping}</td>
														<!--	<td>{$single->unicomupload}</td>
															<td>{$single->unicomdownload}</td>   -->
															<td>{$single->cmccping}</td>
														<!--	<td>{$single->cmccupload}</td>
															<td>{$single->cmccdownload}</td>     -->
														</tr>
													{/foreach}
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</main>
{include file='user/footer.tpl'}
