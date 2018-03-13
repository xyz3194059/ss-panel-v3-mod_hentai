{include file='user/main.tpl'}
	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">商品列表</h1>
			</div>
		</div>
		<div class="container">
			<div class="col-lg-12 col-sm-12">
				<section class="content-inner margin-top-no">

					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<p>所有商品可以疊加購買，VIP時間會疊加</p>
								<p>當前余額：{$user->money} 元</p>
							</div>
						</div>
					</div>
					<div class="table-responsive">
						{$shops->render()}
						<table class="table ">
                            <tr>

                            <!--    <th>ID</th>    -->
                                <th>套餐</th>
								<th>價格</th>
								<th>套餐詳情</th>
                           <!--       <th>自動續費天數</th>
								<th>續費時重置流量</th>     -->
                              <th>操作</th>

                            </tr>
                            {foreach $shops as $shop}
                            <tr>

                            <!--     <td>#{$shop->id}</td>    -->
                                <td>{$shop->name}</td>
								<td>{$shop->price} 元</td>
                                <td>{$shop->content()}</td>
							  <!--	{if $shop->auto_renew==0}
                                <td>不能自動續費</td>
								{else}
								<td>可選 在 {$shop->auto_renew} 天後自動續費</td>
								{/if}

								{if $shop->auto_reset_bandwidth==0}
                                <td>不自動重置</td>
								{else}
								<td>自動重置</td>
								{/if}  -->
                                <td>
                                    <a class="btn btn-brand-accent" href="javascript:void(0);" onClick="buy('{$shop->id}',{$shop->auto_renew},{$shop->auto_reset_bandwidth})">購買</a>
                                </td>
                            </tr>
                            {/foreach}
                        </table>
						{$shops->render()}
					</div>
					<div aria-hidden="true" class="modal modal-va-middle fade" id="coupon_modal" role="dialog" tabindex="-1">
						<div class="modal-dialog modal-xs">
							<div class="modal-content">
								<div class="modal-heading">
									<a class="modal-close" data-dismiss="modal">×</a>
									<h2 class="modal-title">您有優惠碼嗎？</h2>
								</div>
								<div class="modal-inner">
									<div class="form-group form-group-label">
										<label class="floating-label" for="coupon">有的話，請在這裏輸入。沒有的話，直接確定吧</label>
										<input class="form-control" id="coupon" type="text">
									</div>
								</div>
								<div class="modal-footer">
									<p class="text-right"><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="coupon_input" type="button">確定</button></p>
								</div>
							</div>
						</div>
					</div>
					<div aria-hidden="true" class="modal modal-va-middle fade" id="order_modal" role="dialog" tabindex="-1">
						<div class="modal-dialog modal-xs">
							<div class="modal-content">
								<div class="modal-heading">
									<a class="modal-close" data-dismiss="modal">×</a>
									<h2 class="modal-title">訂單確認</h2>
								</div>
								<div class="modal-inner">
									<p id="name">商品名稱：</p>
									<p id="credit">優惠額度：</p>
									<p id="total">總金額：</p>
									<p id="auto_reset">在到期時自動續費</p>
									<div class="checkbox switch" id="autor">
										<label for="autorenew">
											<input checked class="access-hide" id="autorenew" type="checkbox"><span class="switch-toggle"></span>自動續費
										</label>
									</div>
								</div>
								<div class="modal-footer">
									<p class="text-right"><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="order_input" type="button">確定</button></p>
								</div>
							</div>
						</div>
					</div>
					{include file='dialog.tpl'}
			</div>
		</div>
	</main>
{include file='user/footer.tpl'}
<script>
function buy(id,auto,auto_reset) {
	auto_renew=auto;
	if(auto==0)
	{
		document.getElementById('autor').style.display="none";
	}
	else
	{
		document.getElementById('autor').style.display="";
	}

	if(auto_reset==0)
	{
		document.getElementById('auto_reset').style.display="none";
	}
	else
	{
		document.getElementById('auto_reset').style.display="";
	}

	shop=id;
	$("#coupon_modal").modal();
}


$("#coupon_input").click(function () {
		$.ajax({
			type: "POST",
			url: "coupon_check",
			dataType: "json",
			data: {
				coupon: $("#coupon").val(),
				shop: shop
			},
			success: function (data) {
				if (data.ret) {
					$("#name").html("商品名稱："+data.name);
					$("#credit").html("優惠額度："+data.credit);
					$("#total").html("總金額："+data.total);
					$("#order_modal").modal();
				} else {
					$("#result").modal();
					$("#msg").html(data.msg);
				}
			},
			error: function (jqXHR) {
				$("#result").modal();
                $("#msg").html(data.msg+"  發生了錯誤。");
			}
		})
	});

$("#order_input").click(function () {

		if(document.getElementById('autorenew').checked)
		{
			var autorenew=1;
		}
		else
		{
			var autorenew=0;
		}

		$.ajax({
			type: "POST",
			url: "buy",
			dataType: "json",
			data: {
				coupon: $("#coupon").val(),
				shop: shop,
				autorenew: autorenew
			},
			success: function (data) {
				if (data.ret) {
					$("#result").modal();
					$("#msg").html(data.msg);
					window.setTimeout("location.href='/user/shop'", {$config['jump_delay']});
				} else {
					$("#result").modal();
					$("#msg").html(data.msg);
				}
			},
			error: function (jqXHR) {
				$("#result").modal();
                $("#msg").html(data.msg+"  發生了錯誤。");
			}
		})
	});
</script>
