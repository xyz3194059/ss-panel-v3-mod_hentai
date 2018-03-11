{include file='user/main.tpl'}
{$ssr_prefer = URL::SSRCanConnect($user, 0)}
<main class="content">
  <div class="content-header ui-content-header">
    <div class="container">
      <h1 class="content-heading">用戶中心</h1> </div>
  </div>
  <div class="container">
    <section class="content-inner margin-top-no">
      <div class="ui-card-wrap">
        <div class="col-lg-6 col-md-6">
          <div class="card">
            <div class="card-main">
              <div class="card-inner margin-bottom-no">
                <p class="card-heading"><i class="fas fa-bell fa-2x"></i>最新公告</p> {if $ann != null}
                <p>{$ann->content}</p> {/if}
                <p>歷史公告前往<a class="button" href="/user/announcement">公告欄</a></p>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="card-main">
              <div class="card-inner margin-bottom-no">
                <p class="card-heading"><i class="fas fa-cog fa-2x"></i>&nbsp;快速添加節點</p>
                <nav class="tab-nav margin-top-no">
                  <ul class="nav nav-list">
                    <li {if $ssr_prefer}class="active" {/if}> <a class="waves-attach" data-toggle="tab" href="#all_ssr"><i class="icon icon-lg">airplanemode_active</i>&nbsp;ShadowsocksR</a> </li>
                    <!--<li {if !$ssr_prefer}class="active"{/if}>
													<a class="waves-attach" data-toggle="tab" href="#all_ss"><i class="icon icon-lg">flight_takeoff</i>&nbsp;Shadowsocks</a>
												</li>
											</ul>
										</nav> -->
                    <div class="card-inner">
                      <div class="tab-content">
                        <div class="tab-pane fade {if $ssr_prefer}active in{/if}" id="all_ssr"> {$pre_user = URL::cloneUser($user)}
                          <nav class="tab-nav margin-top-no">
                            <ul class="nav nav-list">
                              <li class="active"> <a class="waves-attach" data-toggle="tab" href="#all_ssr_windows"><i class="fab fa-windows fa-lg"></i>&nbsp;Windows</a> </li>
                              <li> <a class="waves-attach" data-toggle="tab" href="#all_ssr_mac"><i class="fas fa-laptop fa-lg"></i>&nbsp;MacOS</a> </li>
                              <li> <a class="waves-attach" data-toggle="tab" href="#all_ssr_linux"><i class="fab fa-linux fa-lg"></i>&nbsp;Linux</a> </li>
                              <li> <a class="waves-attach" data-toggle="tab" href="#all_ssr_ios"><i class="fab fa-app-store-ios fa-lg"></i>&nbsp;iOS</a> </li>
                              <li> <a class="waves-attach" data-toggle="tab" href="#all_ssr_android"><i class="fab fa-android fa-lg"></i>&nbsp;Android</a> </li>
                              <li> <a class="waves-attach" data-toggle="tab" href="#all_ssr_router"><i class="icon icon-lg">router</i>&nbsp;路由器</a> </li>
                              <li> <a class="waves-attach" data-toggle="tab" href="#all_ssr_game"><i class="fas fa-gamepad fa-lg">&nbsp;遊戲端</a> </li>
                              <li> <a class="waves-attach" data-toggle="tab" href="#all_ssr_info"><i class="fas fa-link fa-lg">info_outline</i>&nbsp;連接信息</a> </li>
                            </ul>
                          </nav>
                          <div class="tab-pane fade active in" id="all_ssr_windows"> {$user = URL::getSSRConnectInfo($pre_user)} {$ssr_url_all = URL::getAllUrl($pre_user, 0, 0)} {$ssr_url_all_mu = URL::getAllUrl($pre_user, 1, 0)} <span class="icon icon-lg text-white">looks_1</span><button href="/ssr-download/ssr-win.7z"> 下载</button>
                            <p><span class="icon icon-lg text-white">looks_2</span> 解壓至任意硬盤；</p>
                            <p><span class="icon icon-lg text-white">looks_3</span> 運行程序；</p>
                            <!--<code>(1)</code>下载<a href="/user/getpcconf?is_mu=0&is_ss=0">普通端口</a>或者<a href="/user/getpcconf?is_mu=1&is_ss=0">这个（单端口多用户）</a>，右键小飞机 服务器 -- 从配置文件导入服务器，选择这个文件<br>
															<code>(2)(推荐)</code>点击<a class="copy-text" data-clipboard-text="{$ssr_url_all}"> 这里（普通端口）</a>或者<a class="copy-text" data-clipboard-text="{$ssr_url_all}"> 这个(单端口多用户）</a>，然后右键小飞机 -- 从剪贴板复制地址<br> -->
                            <p> <span class="icon icon-lg text-white">looks_4</span> 右鍵右下角任務欄中<i class="fas fa-paper-plane fa-flip-horizontal"></i>圖標--選擇服務器訂閱--SSR服務器訂閱設置，將訂閱鏈接設置在下面的地址，最後確定再更新 SSR 服務器訂閱；</p>
                            <p> <span class="icon icon-lg text-white">looks_5</span> 然後在服務器選項中--選擇想用的線路--系統代理模式選擇為“PAC模式--”代理規則為“繞過局域網和大陸”，即可上網。</p>
                            <p>要是還不了解可以查閱<button href="/user/help">Windows圖片教程</button> </div>
                          <div class="tab-pane fade" id="all_ssr_mac">
                            <p><span class="icon icon-lg text-white">looks_one</span><a href="/ssr-download/ssr-mac.dmg"> 下載</a></p>
                            <p><span class="icon icon-lg text-white">looks_two</span> 將文件拖入到Finder的應用程序列表(Applications)；</p>
                            <p><span class="icon icon-lg text-white">looks_3</span> 打開Launchapad裡的ShadowsocksX；</p>
                            <p><span class="icon icon-lg text-white">looks_4</span> 菜單欄的<i class="fas fa-paper-plane fa-flip-horizontal"></i>圖標--服務器--服務器訂閱填入以下訂閱地址--最後更新一下；</p>
                            <p><span class="icon icon-lg text-white">looks_5</span> 菜單欄中的圖標--打開shadowsocks。</p>
                            <!-- ，然后下载<a href="/user/getpcconf?is_mu=0&is_ss=0">普通端口</a>或者<a  href="/user/getpcconf?is_mu=1&is_ss=0">这个（单端口多用户）</a>，运行程序，小飞机上右键 服务器列表 子菜单 的 “导入服务器配置文件...” 导入这个文件，然后选择一个合适的服务器，更新一下PAC，然后开启系统代理即可上网。</p>	-->
                            <p>要是還不了解可以查閱<button href="/user/help">MacOS圖片教程</button> </div>
                          <div class="tab-pane fade" id="all_ssr_linux">
                            <p>要是還不了解可以查閱<button href="/user/help">Linux圖片教程</button> </div>
                          <div class="tab-pane fade" id="all_ssr_ios">
                            <p><span class="icon icon-lg text-white">looks_one</span> 在<code>App Store</code>里切換賬號-ID:<code>shz7348@icloud.com</code> 密碼<code>Qq#123456</code>注意區分特殊符號與大小寫,如果提示需要賬號被鎖，請聯繫管理員（請勿在iCloud中登錄本賬號）；</p>
                            <p><span class="icon icon-lg text-white">looks_two</span> 已內購列表中搜索<code>Shadowrocket</code>并安裝；</p>
                            <p><span class="icon icon-lg text-white">looks_3</span> 安裝完畢后請在App Store註銷賬號。</p>
                            <!--  <p>两种方式导入所有节点</p>
                                                        <p>1、在 Safari 中点击 <a href="{$ssr_url_all}">这个（普通端口）</a>或者<a href="{$ssr_url_all_mu}">这个（单端口多用户）</a>，然后点击确定，就可以批量添加节点。</p> -->
                            <p><span class="icon icon-lg text-white">looks_3</span> 打開軟件，點擊右上角<i class="fas fa-plus"></i>，選擇添加類型為<code>Subscribe</code>，URL填寫以下地址即可自動獲取線路信息</p>
                            <p><span class="icon icon-lg text-white">looks_4</span> 在主界面選擇任意線路，并點擊連接按鈕即可使用。</p>
                            <p><span class="icon icon-lg text-white">looks_5</span> 注意：第一次連接可能不能用，後台關閉軟件后，重新開啟軟件即可！</p>
                            <!--	单端口多用户端口订阅地址：<code>{$baseUrl}/link/{$ssr_sub_token}?mu=1</code>   -->
                            <p>要是還不了解可以查閱<button href="/user/help">iOS圖片教程</button> </div>
                          <div class="tab-pane fade" id="all_ssr_android">
                            <p><span class="icon icon-lg text-white">filter_1</span><a href="/ssr-download/ssr-android.apk"> 下載</a></p>
                            <p><span class="icon icon-lg text-white">filter_2</span> 打開軟件，點擊右下角<i class="fas fa-plus"></i>；</p>
                            <p><span class="icon icon-lg text-white">filter_3</span> 添加/升級 SSR訂閱；</p>
                            <p><span class="icon icon-lg text-white">filter_4</span> 添加訂閱地址，輸入以下訂閱地址并確定；</p>
                            <p><span class="icon icon-lg text-white">filter_5</span> 訂閱會出現系統自帶的訂閱，請把系統自帶的無效訂閱<code>左滑刪除</code>（自帶影響訂閱刷新速度）；</p>
                            <p><span class="icon icon-lg text-white">filter_6</span> 點擊確定并更新；</p>
                            <p><span class="icon icon-lg text-white">filter_7</span> 選擇任意線路；</p>
                            <p><span class="icon icon-lg text-white">filter_8</span> 路由選擇：繞過局域網以及中國大陸；</p>
                            <p><span class="icon icon-lg text-white">filter_9</span> 點擊右上角的点击右上角<i class="fas fa-paper-plane fa-flip-horizontal"></i>，即可連接。</p>
                            <!--       <p>两种方式导入所有节点</p>
                                                         <p>1、在手机上默认浏览器中点击<a href="{$ssr_url_all}">这个链接（普通端口）</a>或者<a href="{$ssr_url_all_mu}">这个链接（单端口多用户）</a>，然后点击确定，批量添加完节点，然后路由选择<code>绕过局域网和大陆</code>，右上角开启就可以上网了。同时提供一个 ACL (看您的需要)地址，<a href="/link/{$acl_token}">长按复制地址</a>到客户端里应用即可。</p>
                                                         <p>手机上默认浏览器中点击<a href="{$ssr_url_all}">这个链接（普通端口）</a>，同时提供一个 ACL (看您的需要)地址，<a href="/link/{$acl_token}">长按复制地址</a>到客户端里路由设置后更新即可。</p>-->
                            <!--	单端口多用户端口订阅地址：<code>{$baseUrl}/link/{$ssr_sub_token}?mu=1</code>  -->
                            <p>要是還不了解可以查閱<button href="/user/help">Android圖片教程</button> </div>
                          <div class="tab-pane fade" id="all_ssr_router">
                            <p>路由器刷入<a href="http://www.right.com.cn/forum/thread-161324-1-1.html">此固件</a>，然後SSH登入路由器然，執行以下命令<br> <code>wget -O- {$baseUrl}/link/{$router_token_without_mu}?is_ss=0 | bash && echo -e "\n0 */3 * * * wget -O- {$baseUrl}/link/{$router_token_without_mu}?is_ss=0 | bash\n">> /etc/storage/cron/crontabs/admin && killall crond && crond </code><br>                              執行完畢以後，就可以到路由器的設置面板里選擇 Shadowsocks 服務進行連接了。</p>
                          </div>
                          <div class="tab-pane fade" id="all_ssr_game">
                            <p><span class="icon icon-lg text-white">looks_one</span><a href="/ssr-download/SSTap.7z">下载</a></p>
                            <p><span class="icon icon-lg text-white">looks_two</span> 安裝期間，會提示安裝虛擬網卡，請點擊允許或確認</p>
                            <p><span class="icon icon-lg text-white">looks_3</span> 在桌面打開SSTap</p>
                            <p><span class="icon icon-lg text-white">looks_4</span> 界面上點擊<i class="fas fa-cog"></i>--SSR訂閱-SSR訂閱管理--添加以下訂閱鏈接即可</p>
                            <p><span class="icon icon-lg text-white">looks_5</span> 更新后選擇線路，點擊<i class="fas fa-bolt"></i>測試 - 測試UDP轉發...通過!（UDP通過即可連接并開始遊戲；如測試不通過，點擊如测试不通过<i class="fas fa-cog"></i>--設置--修改DNS，推薦谷歌DNS</p>
                            <p>要是還不了解可以查閱<button href="/user/help">遊戲客戶端圖片教程</button> </div>
                          <div class="tab-pane fade" id="all_ssr_info">
													{$user = URL::getSSRConnectInfo($pre_user)}
													{$ssr_url_all = URL::getAllUrl($pre_user, 0, 0)}
													{$ssr_url_all_mu = URL::getAllUrl($pre_user, 1, 0)}
													{if URL::SSRCanConnect($user)}
                            <dl class="dl-horizontal">
                              <p><dt>端口</dt>
                                <dd>{$user->port}</dd></p>
                              <p><dt>密碼</dt>
                                <dd>{$user->passwd}</dd></p>
                              <p><dt>加密</dt>
                                <dd>{$user->method}</dd></p>
                              <p><dt>協議</dt>
                                <dd>{$user->protocol}</dd></p>
                              <p><dt>混淆</dt>
                                  <dd>{$user->obfs}</dd></p>
                            </dl>
														{else}
                            	<p>你好，你目前的加密方式，混淆，或者協議設置在 ShadowsocksR 客戶端下無法使用。請選擇 Shadowsocks 客戶單來連接，或者在 資料編輯頁面修改此處。</p>
                            	<p>同時, ShadowsocksR 單端口多用戶的連接不受您的影響，您可以在此使用相應的客戶端進行連接~</p>
                            	<p>請注意，在當前狀態下您的 SSR 訂閱鏈接已經失效，您需要手動設置線路。</p>
														{/if}
													</div>
                        </div>
                      </div>
                    </div>
                    <div class="card-action">
                      <div class="card-action-btn pull-left">
                        <p><a class="btn btn-brand btn-flat waves-attach" href="/user/url_reset"><span class="icon">autorenew</span>&nbsp;重置我的订阅链接</a></p>
                      </div>
                    </div>
              </div> <i class="fas fa-bolt fa-lg"></i> 訂閱地址：
							<input type="text" class="input form-control form-control-monospace" name="input1" readonly value="{$baseUrl}/link/{$ssr_sub_token}?mu=1" readonly="true">
							<button class="copy-text btn btn-subscription" type="button" data-clipboard-text="{$baseUrl}/link/{$ssr_sub_token}?mu=1">点击拷贝订阅地址</button><br>
						</div>
          </div>
        </div>
        <div class="col-lg-6 col-md-6">
          <div class="card">
            <div class="card-main">
              <div class="card-inner margin-bottom-no">
                <p class="card-heading"><i class="fas fa-user-circle fa-2x"></i>&nbsp;賬號信息</p>
                <dl class="dl-horizontal">
                  <p><strong>帐号等级：</strong> {if $user->class!=0}
                    <dd><i class="icon icon-md t4-text">stars</i>&nbsp;<code>VIP{$user->class}<code></dd>
                  {else}
                    <dd><i class="icon icon-md t4-text">stars</i>&nbsp;免費</dd>
                  {/if}
									<p><strong>服務到期：</strong>
                	{if $user->class_expire!="1989-06-04 00:05:00"}
											<dd><i class="icon icon-md">event</i>&nbsp;{$user->class_expire}</dd>
                  {else}
                    <dd><i class="icon icon-md">event</i>&nbsp;不过期</dd>
                  {/if}
									<p><strong>帐号到期：</strong>
											<dd><i class="icon icon-md">event</i>&nbsp;{$user->expire_in}</dd>
											<p><dt>速度上限</dt>
											{if $user->node_speedlimit!=0}
												<dd><i class="icon icon-md">settings_input_component</i>&nbsp;{$user->node_speedlimit}兆</dd>
											{else}
												<dd><i class="icon icon-md">settings_input_component</i>&nbsp;不限速</dd>
											{/if}
											<p><dt>設備上限</dt>
												<dd><i class="icon icon-md">phonelink</i>&nbsp;{$user->online_ip_count()} / {$user->node_connector}</dd>
											<p><dt>賬號餘額</dt>
												<dd><i class="icon icon-md">monetization_on</i>&nbsp;{$user->money} 元</dd>
											<p><dt>最近使用</dt>
                      {if $user->lastSsTime()!="从未使用喵"}
                        <dd><i class="icon icon-md">event</i>&nbsp;{$user->lastSsTime()}</dd>
                      {else}
                        <dd><i class="icon icon-md">event</i>&nbsp;無記錄</dd>
                      {/if}</p>
<!--											<dt>上次签到时间：</dt>
												<dd><i class="icon icon-md">event</i>&nbsp;{$user->lastCheckInTime()}</dd>
-->
											<p id="checkin-msg"></p>
											{if $geetest_html != null}
												<div id="popup-captcha"></div>
											{/if}
<!--
									<div class="card-action">
										<div class="card-action-btn pull-left">
											{if $user->isAbleToCheckin() }
												<p id="checkin-btn">
													<button id="checkin" class="btn btn-brand btn-flat waves-attach"><span class="icon">check</span>&nbsp;点我签到&nbsp;<span class="icon">screen_rotation</span>&nbsp;或者摇动手机签到</button>
												</p>
											{else}
												<p><a class="btn btn-brand disabled btn-flat waves-attach" href="#"><span class="icon">check</span>&nbsp;今日已签到</a></p>
											{/if}
										</div>
									</div>
-->
										</dl>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<div id="traffic_chart" style="height: 300px; width: 100%;"></div>
										<script src="assets/materialize/js/canvasjs.min.js"> </script>
										<script type="text/javascript">
                    var salesDoughnutChartUS = new CanvasJS.Chart("traffic_chart", {
                        animationEnabled: true,
                        backgroundColor: "transparent",
                        title: {
                          fontColor: "#848484",
                          fontSize: 70,
                          horizontalAlign: "center",
                          text: "{($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100}%",
                          verticalAlign: "center"
                        },
                        toolTip: {
                          backgroundColor: "#ffffff",
                          borderThickness: 0,
                          cornerRadius: 0,
                          fontColor: "#424242"
                        },
                        data: [
                          {
                            explodeOnClick: false,
                            innerRadius: "96%",
                            radius: "90%",
                            startAngle: 270,
                            type: "doughnut",
                            dataPoints: [
                              {if $user->transfer_enable != 0}
								{y: {$user->last_day_t/$user->transfer_enable*100}，color: "#c70000"}，
								{y: {($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100},color: "#424242"}
                              {/if}
                            ]
                          }
                        ]
                      })；
											chart.render();
										</script>
									</div>
								</div>
							</div>
						</div>
					</div>
						{if $enable_duoshuo=='true'}
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">討論區</p>
											<div class="ds-thread" data-thread-key="0" data-title="index" data-url="{$baseUrl}/user/"></div>
											<script type="text/javascript">
											var duoshuoQuery = {short_name:"{$duoshuo_shortname}"};
												(function() {
													var ds = document.createElement('script');
													ds.type = 'text/javascript';ds.async = true;
													ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
													ds.charset = 'UTF-8';
													(document.getElementsByTagName('head')[0]
													 || document.getElementsByTagName('body')[0]).appendChild(ds);
												})();
											</script>
									</div>
								</div>
							</div>
						{/if}
						{include file='dialog.tpl'}
					</div>
			</section>
	</main>
<script src="/theme/material/js/shake.js"></script>
<script>

  $(function() {
    new Clipboard('.copy-text');
  });

$(".copy-text").click(function() {
  $("#result").modal();
  $("#msg").html("複製成功！");
});

{
  if $geetest_html == null
}


window.onload = function() {
  var myShakeEvent = new Shake({
    threshold: 15
  });

  myShakeEvent.start();

  window.addEventListener('shake', shakeEventDidOccur, false);

  function shakeEventDidOccur() {
    if ("vibrate" in navigator) {
      navigator.vibrate(500);
    }

    $.ajax({
      type: "POST",
      url: "/user/checkin",
      dataType: "json",
      success: function(data) {
        $("#checkin-msg").html(data.msg);
        $("#checkin-btn").hide();
        $("#result").modal();
        $("#msg").html(data.msg);
      },
      error: function(jqXHR) {
        $("#result").modal();
        $("#msg").html("錯誤：" + jqXHR.status);
      }
    });
  }
};


$(document).ready(function() {
  $("#checkin").click(function() {
    $.ajax({
      type: "POST",
      url: "/user/checkin",
      dataType: "json",
      success: function(data) {
        $("#checkin-msg").html(data.msg);
        $("#checkin-btn").hide();
        $("#result").modal();
        $("#msg").html(data.msg);
      },
      error: function(jqXHR) {
        $("#result").modal();
        $("#msg").html("錯誤：" + jqXHR.status);
      }
    })
  })
})

{else}

window.onload = function() {
  var myShakeEvent = new Shake({
    threshold: 15
  });

  myShakeEvent.start();

  window.addEventListener('shake', shakeEventDidOccur, false);

  function shakeEventDidOccur() {
    if ("vibrate" in navigator) {
      navigator.vibrate(500);
    }

    c.show();
  }
};

var handlerPopup = function(captchaObj) {
  c = captchaObj;
  captchaObj.onSuccess(function() {
    var validate = captchaObj.getValidate();
    $.ajax({
      url: "/user/checkin", // 进行二次验证
      type: "post",
      dataType: "json",
      data: {
        // 二次验证所需的三个值
        geetest_challenge: validate.geetest_challenge,
        geetest_validate: validate.geetest_validate,
        geetest_seccode: validate.geetest_seccode
      },
      success: function(data) {
        $("#checkin-msg").html(data.msg);
        $("#checkin-btn").hide();
        $("#result").modal();
        $("#msg").html(data.msg);
      },
      error: function(jqXHR) {
        $("#result").modal();
        $("#msg").html("錯誤：" + jqXHR.status);
      }
    });
  });
  // 弹出式需要绑定触发验证码弹出按钮
  captchaObj.bindOn("#checkin");
  // 将验证码加到id为captcha的元素里
  captchaObj.appendTo("#popup-captcha");
  // 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
};

initGeetest({
      gt: "{$geetest_html->gt}",
      challenge: "{$geetest_html->challenge}",
      product: "popup", // 产品形式，包括：float，embed，popup。注意只对PC版验证码有效
      offline: {if $geetest_html -> success}
      0
			{else}
      1
			{/if} / / 表示用户后台检测极验服务器是否宕机， 与SDK配合， 用户一般不需要关注
		},
      handlerPopup);
    {/if}
		</script>

{include file='user/footer.tpl'}
