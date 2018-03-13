{include file='user/main.tpl'}
<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">我的賬戶</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="row">
					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">我的帳號</p>
										<dl class="dl-horizontal">
											<dt>用戶名</dt>
											<dd>{$user->user_name}</dd>
											<dt>郵箱</dt>
											<dd>{$user->email}</dd>
										</dl>
									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<a class="btn btn-flat waves-attach" href="kill"><span class="icon">check</span>&nbsp;刪除我的賬戶</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-main">
								<div class="card-inner margin-bottom-no">
									<p class="card-heading">最近五分鍾使用IP</p>
									<p>請確認都爲自己的IP，如有異常請及時修改連接密碼。</p>
									<div class="card-table">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<th>IP</th>
													<th>歸屬地</th>
												</tr>
												{foreach $userip as $single=>$location}
													<tr>

														<td>{$single}</td>
														<td>{$location}</td>
													</tr>
												{/foreach}
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-main">
								<div class="card-inner margin-bottom-no">
									<p class="card-heading">最近十次登錄IP</p>
									<p>請確認都爲自己的IP，如有異常請及時修改密碼。</p>
									<div class="card-table">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<th>IP</th>
													<th>歸屬地</th>
												</tr>
												{foreach $userloginip as $single=>$location}
													<tr>
														<td>{$single}</td>
														<td>{$location}</td>
													</tr>
												{/foreach}
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">返利記錄</p>
										<div class="card-table">
											<div class="table-responsive">
											{$paybacks->render()}
												<table class="table">
													<thead>
													<tr>
														<th>###</th>
														<th>返利用戶</th>
														<th>返利金額</th>
													</tr>
													</thead>
													<tbody>
													{foreach $paybacks as $payback}
														<tr>
															<td><b>{$payback->id}</b></td>
															{if $payback->user()!=null}
																<td>{$payback->user()->user_name}
																</td>
																{else}
																<td>已注銷
																</td>
															{/if}
															</td>
															<td>{$payback->ref_get} 元</td>
														</tr>
													{/foreach}
													</tbody>
												</table>
											{$paybacks->render()}
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
