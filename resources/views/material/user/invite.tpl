
{include file='user/main.tpl'}
	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">邀請</h1>
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
										<p class="card-heading">注意！</p>
										<p>邀請碼請給認識的需要的人。</p>
									</div>

								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">說明</p>
										<p>當您的余額達到100可發工單請求提現。</p>
										<p>您每拉一位用戶注冊，對方充值時您就會獲得對方充值金額的 <code>{$config["code_payback"]} %</code> 的提成。</p>
									</div>

								</div>
							</div>
						</div>
					</div>
					 {if $user->class!=0}
					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">邀請</p>
										<p>當前您可以生成<code>{$user->invite_num}</code>個邀請碼。 </p>
									</div>
									{if $user->invite_num }
									<div class="card-action">
										<div class="card-action-btn pull-left">

												<button id="invite" class="btn btn-flat waves-attach">生成我的邀請碼</button>

										</div>
									</div>
									{/if}
								</div>
							</div>
						</div>
					</div>

                  <div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">

									<div class="card-inner">

										<div class="card-table">
											<div class="table-responsive">
											{$codes->render()}
												<table class="table">
													<thead>
													<tr>
													<!--	<th>###</th>   -->
														<th>邀請碼(點右鍵複制鏈接)</th>
														<th>狀態</th>
													</tr>
													</thead>
													<tbody>
													{foreach $codes as $code}
														<tr>
															<!-- <td><b>{$code->id}</b></td>  -->
															<td><a href="/auth/register?code={$code->code}" target="_blank">{$code->code}</a>
															</td>
															<td>可用</td>
														</tr>
													{/foreach}
													</tbody>
												</table>
											{$codes->render()}
											</div>
										</div>

								</div>
							</div>
						</div>
					</div>
                   {else}

                  <div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
                                  <p class="card-heading">生成邀請碼</p>
								<h3>{$user->user_name}，您不是VIP暫時無法生成邀請碼，<a href="/user/shop">成爲VIP請點擊這裏</a></h3>
								</div>
							</div>
						</div>
					</div>



								</div>
							</div>
						</div>
					</div>
					{/if}


					{include file='dialog.tpl'}
				</div>
			</section>
		</div>
	</main>







{include file='user/footer.tpl'}


<script>
    $(document).ready(function () {
        $("#invite").click(function () {
            $.ajax({
                type: "POST",
                url: "/user/invite",
                dataType: "json",
                success: function (data) {
                    window.location.reload();
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html("發生錯誤：" + jqXHR.status);
                }
            })
        })
    })
</script>
