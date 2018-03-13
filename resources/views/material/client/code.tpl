{include file='client/main.tpl'}
<main class="content">
 <section class="content-inner margin-top-no">
	 <div class="row">
		 <div class="col-lg-12 col-md-12">
			 <div class="card margin-bottom-no">
				 <div class="card-main">
					 <div class="card-inner">
						 <div class="card-inner">
							 <p class="card-heading">充值碼</p>
							 <p>當前余額：{$user->money} 元</p>
							 <div class="form-group form-group-label"> <label class="floating-label" for="code">充值碼</label> <input class="form-control" id="code" type="text"> </div>
						 </div>
						 <div class="card-action">
							 <div class="card-action-btn pull-left"> <button class="btn btn-flat waves-attach" id="code-update"><span class="icon">check</span>&nbsp;充值</button> </div>
						 </div>
					 </div>
				 </div>
			 </div>
		 </div> {if $pmw!=''}
		 <div class="col-lg-12 col-md-12">
			 <div class="card margin-bottom-no">
				 <div class="card-main">
					 <div class="card-inner">
						 <div class="card-inner"> {$pmw} </div>
					 </div>
				 </div>
			 </div>
		 </div> {/if}
		 <div class="col-lg-12 col-md-12">
			 <div class="card margin-bottom-no">
				 <div class="card-main">
					 <div class="card-inner">
						 <div class="card-inner">
							 <div class="card-table">
								 <div class="table-responsive"> {$codes->render()}
									 <table class="table table-hover">
										 <tr>
											 <th>ID</th>
											 <th>代碼</th>
											 <th>類型</th>
											 <th>操作</th>
											 <th>使用時間</th>
										 </tr> {foreach $codes as $code} {if $code->type!=-2}
										 <tr>
											 <td>#{$code->id}</td>
											 <td>{$code->code}</td> {if $code->type==-1}
											 <td>金額充值</td> {/if} {if $code->type==10001}
											 <td>流量充值</td> {/if} {if $code->type==10002}
											 <td>用戶續期</td> {/if} {if $code->type>=1&&$code->type
											 <=10000} <td>等級續期 - 等級{$code->type}</td> {/if} {if $code->type==-1}
												 <td>充值 {$code->number} 元</td> {/if} {if $code->type==10001}
												 <td>充值 {$code->number} GB 流量</td> {/if} {if $code->type==10002}
												 <td>延長賬戶有效期 {$code->number} 天</td> {/if} {if $code->type>=1&&$code->type
												 <=10000} <td>延長等級有效期 {$code->number} 天</td> {/if}
													 <td>{$code->usedatetime}</td>
										 </tr> {/if} {/foreach} </table> {$codes->render()} </div>
							 </div>
						 </div>
					 </div>
				 </div>
			 </div>
		 </div>
		 <div aria-hidden="true" class="modal modal-va-middle fade" id="readytopay" role="dialog" tabindex="-1">
			 <div class="modal-dialog modal-xs">
				 <div class="modal-content">
					 <div class="modal-heading"> <a class="modal-close" data-dismiss="modal">×</a>
						 <h2 class="modal-title">正在連接支付寶</h2> </div>
					 <div class="modal-inner">
						 <p id="title">正在處理...</p>
					 </div>
				 </div>
			 </div>
		 </div>
		 <div aria-hidden="true" class="modal modal-va-middle fade" id="alipay" role="dialog" tabindex="-1">
			 <div class="modal-dialog modal-xs">
				 <div class="modal-content">
					 <div class="modal-heading"> <a class="modal-close" data-dismiss="modal">×</a>
						 <h2 class="modal-title">請使用支付寶App掃碼充值：</h2> </div>
					 <div class="modal-inner">
						 <p id="title">手機點擊二維碼轉跳支付寶</p>
						 <p id="divide">-------------------------------------------------------------</p>
						 <p id="qrcode"></p>
						 <p id="info"></p>
					 </div>
					 <div class="modal-footer">
						 <p class="text-right"><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="alipay_cancel" type="button">取消</button></p>
					 </div>
				 </div>
			 </div>
		 </div> {include file='dialog.tpl'} </div>
 </section>
</main> {include file='client/footer.tpl'}
<script>
 $(document).ready(function() {
	 $("#code-update").click(function() {
		 $.ajax({
			 type: "POST",
			 url: "/user/code",
			 dataType: "json",
			 data: {
				 code: $("#code").val()
			 },
			 success: function(data) {
				 if (data.ret) {
					 $("#result").modal();
					 $("#msg").html(data.msg);
					 window.setTimeout("location.href=window.location.href", {
						 $config['jump_delay']
					 });
				 } else {
					 $("#result").modal();
					 $("#msg").html(data.msg);
					 window.setTimeout("location.href=window.location.href", {
						 $config['jump_delay']
					 });
				 }
			 },
			 error: function(jqXHR) {
				 $("#result").modal();
				 $("#msg").html("發生錯誤：" + jqXHR.status);
			 }
		 })
	 })
	 $("#urlChange").click(function() {
		 $.ajax({
			 type: "GET",
			 url: "/user/code/f2fpay",
			 dataType: "json",
			 data: {
				 time: timestamp
			 },
			 success: function(data) {
				 if (data.ret) {
					 $("#readytopay").modal();
				 }
			 }
		 })
	 });
	 $("#alipay").click(function() {
		 $.ajax({
			 type: "GET",
			 url: "/user/code/pay91",
			 dataType: "json",
			 data: {
				 time: timestamp
			 },
			 success: function(data) {
				 if (data.ret) {
					 $("#readytopay").modal();
				 }
			 }
		 })
	 });
	 $("#readytopay").on('shown.bs.modal', function() {
		 $.ajax({
			 type: "POST",
			 url: "/user/code/f2fpay",
			 dataType: "json",
			 data: {
				 amount: $("#type").find("option:selected").val()
			 },
			 success: function(data) {
				 $("#readytopay").modal('hide');
				 if (data.ret) {
					 $("#qrcode").html(data.qrcode);
					 $("#info").html("您的訂單金額爲：" + data.amount + "元。");
					 $("#alipay").modal();
				 } else {
					 $("#result").modal();
					 $("#msg").html(data.msg);
				 }
			 },
			 error: function(jqXHR) {
				 $("#readytopay").modal('hide');
				 $("#result").modal();
				 $("#msg").html(data.msg + "  發生了錯誤。");
			 }
		 })
	 });
	 timestamp = {
		 time()
	 };

	 function f() {
		 $.ajax({
			 type: "GET",
			 url: "/user/code_check",
			 dataType: "json",
			 data: {
				 time: timestamp
			 },
			 success: function(data) {
				 if (data.ret) {
					 clearTimeout(tid);
					 $("#alipay").modal('hide');
					 $("#result").modal();
					 $("#msg").html("充值成功！");
					 window.setTimeout("location.href=window.location.href", {
						 $config['jump_delay']
					 });
				 }
			 }
		 });
		 tid = setTimeout(f, 1000); //循環調用觸發setTimeout
	 }
	 setTimeout(f, 1000);
 })
</script>
