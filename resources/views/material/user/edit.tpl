{include file='user/main.tpl'}
	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">修改資料</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
					<div class="col-lg-6 col-md-6">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">修改密碼</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="oldpwd">當前密碼</label>
											<input class="form-control" id="oldpwd" type="password">
										</div>

										<div class="form-group form-group-label">
											<label class="floating-label" for="pwd">新密碼</label>
											<input class="form-control" id="pwd" type="password">
										</div>
										<div class="form-group form-group-label">
											<label class="floating-label" for="repwd">確認新密碼</label>
											<input class="form-control" id="repwd" type="password">
										</div>
									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="pwd-update" ><span class="icon">check</span>&nbsp;提交</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">連接密碼修改</p>
										<p>當前連接密碼：{$user->passwd}</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="sspwd">連接密碼</label>
											<input class="form-control" id="sspwd" type="text">
										</div>
									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="ss-pwd-update" ><span class="icon">check</span>&nbsp;提交</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">加密方式修改</p>
										<p>注意：SS 和 SSR 支持的加密方式有所不同，請根據實際情況來進行選擇！</p>
										<p>當前加密方式：{$user->method}</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="method">加密方式</label>
											<select id="method" class="form-control">
												{$method_list = $config_service->getSupportParam('method')}
												{foreach $method_list as $method}
													<option value="{$method}" {if $user->method == $method}selected="selected"{/if}>[{if URL::CanMethodConnect($method) == 2}SS{else}SS/SSR{/if} 可連接] {$method}</option>
												{/foreach}
											</select>
										</div>
									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="method-update" ><span class="icon">check</span>&nbsp;提交</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">聯絡方式修改</p>
										<p>當前聯絡方式：
										{if $user->im_type==1}
										微信
										{/if}

										{if $user->im_type==2}
										QQ
										{/if}

										{if $user->im_type==3}
										Google+
										{/if}

										{if $user->im_type==4}
										Telegram
										{/if}

										{$user->im_value}</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="imtype">選擇您的聯絡方式</label>
											<select class="form-control" id="imtype">
												<option></option>
												<option value="1">微信</option>
												<option value="2">QQ</option>
												<option value="3">Google+</option>
												<option value="4">Telegram</option>
											</select>
										</div>

										<div class="form-group form-group-label">
											<label class="floating-label" for="wechat">在這輸入聯絡方式賬號</label>
											<input class="form-control" id="wechat" type="text">
										</div>

									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="wechat-update" ><span class="icon">check</span>&nbsp;提交</button>
										</div>
									</div>
								</div>
							</div>
						</div>



						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">協議&混淆設置</p>
										<p>當前協議：{$user->protocol}</p>
										<p>注意1：如果需要兼容原版SS請選擇帶_compatible的兼容選項！</p>
										<p>注意2：如果您使用原版 SS 客戶端此處請直接設置爲 origin！</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="protocol">協議</label>
											<select id="protocol" class="form-control">
												{$protocol_list = $config_service->getSupportParam('protocol')}
												{foreach $protocol_list as $protocol}
													<option value="{$protocol}" {if $user->protocol == $protocol}selected="selected"{/if}>[{if URL::CanProtocolConnect($protocol) == 3}SS/SSR{else}SSR{/if} 可連接] {$protocol}</option>
												{/foreach}
											</select>
										</div>

									</div>

									<div class="card-inner">
										<p>當前混淆方式：{$user->obfs}</p>
										<p>注意1：如果需要兼容原版SS請選擇帶_compatible的兼容選項！</p>
										<p>注意2：SS 和 SSR 支持的混淆類型有所不同，simple_obfs_* 爲原版 SS 的混淆方式，其他爲 SSR 的混淆方式！</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="obfs">混淆方式</label>
											<select id="obfs" class="form-control">
												{$obfs_list = $config_service->getSupportParam('obfs')}
												{foreach $obfs_list as $obfs}
													<option value="{$obfs}" {if $user->obfs == $obfs}selected="selected"{/if}>[{if URL::CanObfsConnect($obfs) >= 3}SS/SSR{else}{if URL::CanObfsConnect($obfs) == 1}SSR{else}SS{/if}{/if} 可連接] {$obfs}</option>
												{/foreach}
											</select>
										</div>
									</div>

									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="ssr-update" ><span class="icon">check</span>&nbsp;提交</button>
										</div>
									</div>
								</div>
							</div>
						</div>







						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">主題修改</p>
										<p>當前主題：{$user->theme}</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="theme">主題</label>
											<select id="theme" class="form-control">
												{foreach $themes as $theme}
													<option value="{$theme}">{$theme}</option>
												{/foreach}
											</select>
										</div>


									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="theme-update" ><span class="icon">check</span>&nbsp;提交</button>
										</div>
									</div>
								</div>
							</div>
						</div>
</div>
					</div>


					<div class="col-lg-6 col-md-6">

						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">IP解封</p>
										<p>當前狀態：{$Block}</p>

									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="unblock" ><span class="icon">check</span>&nbsp;解封</button>
										</div>
									</div>
								</div>
							</div>
						</div>



						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">每日郵件接收設置</p>
										<p>當前設置：{if $user->sendDailyMail==1} 發送 {else} 不發送 {/if}</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="mail">發送設置</label>
											<select id="mail" class="form-control">
												<option value="1">發送</option>
												<option value="0">不發送</option>
											</select>
										</div>
									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="mail-update" ><span class="icon">check</span>&nbsp;提交</button>
										</div>
									</div>
								</div>
							</div>
						</div>



						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">兩步驗證</p>
										<p>請下載 Google 的兩步驗證器，掃描下面的二維碼。</p>
										<p><i class="icon icon-lg" aria-hidden="true">android</i><a href="https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2">&nbsp;Android</a></p>
										<p><i class="icon icon-lg" aria-hidden="true">tablet_mac</i><a href="https://itunes.apple.com/cn/app/google-authenticator/id388497605?mt=8">&nbsp;iOS</a></p>
										<p>在沒有測試完成綁定成功之前請不要啓用。</p>
										<p>當前設置：{if $user->ga_enable==1} 登錄時要求驗證 {else} 不要求 {/if}</p>
										<p>當前服務器時間：{date("Y-m-d H:i:s")}</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="ga-enable">驗證設置</label>
											<select id="ga-enable" class="form-control">
												<option value="0">不要求</option>
												<option value="1">要求驗證</option>
											</select>
										</div>


										<div class="form-group form-group-label">
											<div class="text-center">
												<div id="ga-qr"></div>
												密鑰：{$user->ga_token}
											</div>
										</div>


										<div class="form-group form-group-label">
											<label class="floating-label" for="code">測試一下</label>
											<input type="text" id="code" placeholder="輸入驗證器生成的數字來測試" class="form-control">
										</div>

									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<a class="btn btn-brand-accent btn-flat waves-attach" href="/user/gareset" ><span class="icon">format_color_reset</span>&nbsp;重置</a>
											<button class="btn btn-flat waves-attach" id="ga-test" ><span class="icon">extension</span>&nbsp;測試</button>
											<button class="btn btn-brand btn-flat waves-attach" id="ga-set" ><span class="icon">perm_data_setting</span>&nbsp;設置</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">重置端口</p>
										<p>當前端口：{$user->port}</p>

									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="portreset" ><span class="icon">check</span>&nbsp;重置端口</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">自定義ACL/PAC/Surge</p>
										<p>您可以在此處追加 Gfwlist 規則。</p>
										<p>格式參看<a href="https://adblockplus.org/zh_CN/filters">https://adblockplus.org/zh_CN/filters</a></p>
										<p>IP 段請使用 |127.0.0.0/8 類似格式表示</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="pac">規則書寫區</label>
											<textarea class="form-control" id="pac" rows="8">{$user->pac}</textarea>
										</div>

									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="setpac" ><span class="icon">check</span>&nbsp;設置</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						{if $config['enable_telegram'] == 'true'}
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">Telegram 綁定</p>
										<p>Telegram 添加機器人賬號 <a href="https://t.me/{$telegram_bot}">@{$telegram_bot}</a>，拍下下面這張二維碼發給它。</p>
										<div class="form-group form-group-label">
											<div class="text-center">
												<div id="telegram-qr"></div>
												{if $user->telegram_id != 0}當前綁定：<a href="https://t.me/{$user->im_value}">@{$user->im_value}</a>{/if}
											</div>
										</div>

									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<a class="btn btn-brand-accent btn-flat waves-attach" href="/user/telegram_reset" ><span class="icon">format_color_reset</span>&nbsp;解綁</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						{/if}
					</div>
					{include file='dialog.tpl'}
			</section>
		</div>
	</main>
{include file='user/footer.tpl'}
<script>
    $(document).ready(function () {
        $("#portreset").click(function () {
            $.ajax({
                type: "POST",
                url: "resetport",
                dataType: "json",
                data: {

                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+" 出錯啦！");
                }
            })
        })
    })
</script>
<script>
    $(document).ready(function () {
        $("#setpac").click(function () {
            $.ajax({
                type: "POST",
                url: "pacset",
                dataType: "json",
                data: {
                   pac: $("#pac").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+" 出錯啦！");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#pwd-update").click(function () {
            $.ajax({
                type: "POST",
                url: "password",
                dataType: "json",
                data: {
                    oldpwd: $("#oldpwd").val(),
                    pwd: $("#pwd").val(),
                    repwd: $("#repwd").val()
                },
                success: function (data) {
                    if (data.ret) {
                         $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+" 出錯啦！");
                }
            })
        })
    })
</script>

<script src=" /assets/public/js/jquery.qrcode.min.js "></script>
<script>
	var ga_qrcode = '{$user->getGAurl()}';
	jQuery('#ga-qr').qrcode({
		"text": ga_qrcode
	});

	{if $config['enable_telegram'] == 'true'}
	var telegram_qrcode = 'mod://bind/{$bind_token}';
	jQuery('#telegram-qr').qrcode({
		"text": telegram_qrcode
	});
	{/if}
</script>


<script>
    $(document).ready(function () {
        $("#wechat-update").click(function () {
            $.ajax({
                type: "POST",
                url: "wechat",
                dataType: "json",
                data: {
                    wechat: $("#wechat").val(),
					imtype: $("#imtype").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+" 出錯啦！");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#ssr-update").click(function () {
            $.ajax({
                type: "POST",
                url: "ssr",
                dataType: "json",
                data: {
                    protocol: $("#protocol").val(),
					obfs: $("#obfs").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+" 出錯啦！");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#relay-update").click(function () {
            $.ajax({
                type: "POST",
                url: "relay",
                dataType: "json",
                data: {
                    relay_enable: $("#relay_enable").val(),
					relay_info: $("#relay_info").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+" 出錯啦！");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#unblock").click(function () {
            $.ajax({
                type: "POST",
                url: "unblock",
                dataType: "json",
                data: {
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+" 出錯啦！");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ga-test").click(function () {
            $.ajax({
                type: "POST",
                url: "gacheck",
                dataType: "json",
                data: {
                    code: $("#code").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+" 出錯啦！");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ga-set").click(function () {
            $.ajax({
                type: "POST",
                url: "gaset",
                dataType: "json",
                data: {
                    enable: $("#ga-enable").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+" 出錯啦！");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ss-pwd-update").click(function () {
            $.ajax({
                type: "POST",
                url: "sspwd",
                dataType: "json",
                data: {
                    sspwd: $("#sspwd").val()
                },
                 success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html("成功了");
                    } else {
                        $("#result").modal();
						$("#msg").html("失敗了");
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+" 出錯啦！");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#mail-update").click(function () {
            $.ajax({
                type: "POST",
                url: "mail",
                dataType: "json",
                data: {
                    mail: $("#mail").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+" 出錯啦！");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#theme-update").click(function () {
            $.ajax({
                type: "POST",
                url: "theme",
                dataType: "json",
                data: {
                    theme: $("#theme").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+" 出錯啦！");
                }
            })
        })
    })
</script>



<script>
    $(document).ready(function () {
        $("#method-update").click(function () {
            $.ajax({
                type: "POST",
                url: "method",
                dataType: "json",
                data: {
                    method: $("#method").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html("成功了");
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+" 出錯啦！");
                }
            })
        })
    })
</script>
