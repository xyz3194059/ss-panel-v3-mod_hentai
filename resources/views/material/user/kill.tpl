{include file='user/main.tpl'}
	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">刪除我的帳號</h1>
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
										<h4>注意！</h4>

										<p>帳號刪除後，您的所有數據都會被<b>真實地</b>刪除。</p>

										<p>如果想重新使用本網站提供的服務，您需要重新注冊。</p>

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
										<p class="card-heading">輸入當前密碼以驗證身份</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="passwd">當前密碼（必填）</label>
											<input class="form-control" id="passwd" type="password">
										</div>
									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="kill" ><span class="icon">check</span>&nbsp;刪除我的帳號</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					{include file='dialog.tpl'}
				</div>
			</section>
		</div>
	</main>







{include file='user/footer.tpl'}



<script>
    $(document).ready(function () {
        $("#kill").click(function () {
            $.ajax({
                type: "POST",
                url: "kill",
                dataType: "json",
                data: {
                    passwd: $("#passwd").val(),
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                        window.setTimeout("location.href='/'", {$config['jump_delay']});
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
					$("#result").modal();
                    $("#msg").html("發生錯誤：" + jqXHR.status + data.msg);
                }
            })
        })
    })
</script>
