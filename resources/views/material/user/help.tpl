{include file='user/main.tpl'}
<main class="content">
	<div class="content-header ui-content-header">
		<div class="container">
			<h1 class="content-heading">使用教程</h1> </div>
	</div>
	<div class="container">
		<section class="content-inner margin-top-no">
			<div class="ui-card-wrap">
				<div class="col-lg-12 col-md-12">
					<div class="card">
						<div class="card-main">
							<div class="card-inner margin-bottom-no">
								<nav class="tab-nav margin-top-no">
									<ul class="nav nav-list">
										<li class="active"> <a class="waves-attach" data-toggle="tab" href="#all_ssr_windows"><i class="fab fa-windows fa-lg"></i>&nbsp;Windows</a> </li>
										<li> <a class="waves-attach" data-toggle="tab" href="#all_ssr_mac"><i class="fas fa-laptop fa-lg"></i>&nbsp;MacOS</a> </li>
										<li> <a class="waves-attach" data-toggle="tab" href="#all_ssr_linux"><i class="fab fa-linux fa-lg"></i>&nbsp;Linux</a> </li>
										<li> <a class="waves-attach" data-toggle="tab" href="#all_ssr_ios"><i class="fab fa-app-store-ios fa-lg"></i>&nbsp;iOS</a> </li>
										<li> <a class="waves-attach" data-toggle="tab" href="#all_ssr_android"><i class="fab fa-android fa-lg"></i>&nbsp;Android</a> </li>
										<li> <a class="waves-attach" data-toggle="tab" href="#all_ssr_router"><i class="icon icon-lg">router</i>&nbsp;路由器</a> </li>
										<li> <a class="waves-attach" data-toggle="tab" href="#all_ssr_game"><i class="fas fa-gamepad fa-lg">&nbsp;遊戲端</a> </li>
									</ul>
								</nav>
								<div class="tab-pane fade active in" id="all_ssr_windows">
									<p><code><font size="5">1：下載軟件</font></code></p>
									<p><img src="/images/c_win_1.jpg" height="400" width="500" /></p>
									<p><code><font size="5">2：導入節點（三種方式）</font></code></p>
									<p><img src="/images/c_win_2.jpg" height="400" width="500" /></p>
									<p><img src="/images/c_win_3.jpg" height="400" width="500" /></p>
									<p><img src="/images/c_win_4.jpg" height="400" width="500" /></p>
									<p><code><font size="5">3：選擇一個想用的節點，打開浏覽器輸入Google.com</font></code></p>
									<p><img src="/images/c_win_5.jpg" height="400" width="500" /></p>
								</div>
								<div class="tab-pane fade" id="all_ssr_mac">
									<p><code><font size="5">1：把下載的DMG包放入應用程序列表</font></code></p>
									<p><img src="/images/c_mac_1.png" height="200" width="400" /></p>
									<p><code><font size="5">2：打開程式</font></code></p>
									<p><img src="/images/c_mac_2.png" height="400" width="500" /></p>
									<p><code><font size="5">3：如提示不安全，請到系統偏好設置打開程式</font></code></p>
									<p><img src="/images/c_mac_3.png" height="400" width="500" /></p>
									<p><code><font size="5">4：服務器-編輯訂閱</font></code></p>
									<p><img src="/images/c_mac_4.png" height="400" width="500" /></p>
									<p><code><font size="5">5：點擊+號後填入訂閱鏈接後手動更新訂閱</font></code></p>
									<p><img src="/images/c_mac_5.png" height="400" width="500" /></p>
									<p><img src="/images/c_mac_4.png" height="400" width="500" /></p>
									<p><code><font size="5">6：選擇一個節點</font></code></p>
									<p><img src="/images/c_mac_6.png" height="300" width="550" /></p>
									<p><code><font size="5">7：打開谷歌測試一下吧</font></code></p>
									<p><img src="/images/c_mac_7.png" height="300" width="550" /></p>
								</div>
								<div class="tab-pane fade" id="all_ssr_linux">
									<h3>Ubuntu使用Shadowsocks-qt5科學上網</h3>
									<h4>說明：shadowsocks-qt5是ubuntu上一個可視化的版本</h4>
									<hr />
									<h5>安裝shadowsocks-qt5</h5> <pre>
																		<code>
																			1.$ sudo add-apt-repository ppa:hzwhuang/ss-qt5
																			2.$ sudo apt-get update
																			3.$ sudo apt-get install shadowsocks-qt5
																	</code>
																	</pre>
									<h5>如果安裝成功之後，按<code>win</code>鍵搜索應該能夠找到軟件，如下圖所示：</h5>
									<p><img src="/images/c-linux-1.png" height="150" width="400" /></p>
									<h5>配置shadowsocks-qt5</h5>
									<h6>填寫對應的服務器IP，端口，密碼，加密方式，紅色標注地方請與圖片一樣</h6>
									<p><img src="/images/c-linux-4.png" height="400" width="400" /></p>
									<h5>配置系統代理模式</h5>
									<p><img src="/images/c-linux-5.png" height="250" width="400" /></p>
									<h5>配置浏覽器代理模式（本次爲Ubuntu自帶FireFox浏覽器爲例）</h5>
									<p><img src="/images/c-linux-6.png" height="400" width="400" /></p>
									<h5>連接並開始上網</h5>
									<p><img src="/images/c-linux-7.png" height="400" width="400" /></p>
									<hr /> </div>
								<div class="tab-pane fade" id="all_ssr_ios">
									<p>1：前往用戶中心查看App Store賬號，國區App Store已下架)</p>
									<p><img src="/images/c_ios_1.jpg" height="600" width="600" /></p>
									<p>2：打開App Store 切換賬號，並下載App</p>
									<p><img src="/images/c_ios_2.jpg" height="2000" width="600" /></p>
									<p>3：打開Safari，登錄到 {$config["appName"]} 的用戶中心導入節點</p>
									<p><img src="/images/c_ios_3.jpg" height="2000" width="600" /></p>
									<p>附加：iOS快速連接</p>
									<p><img src="/images/c_ios_4.jpg" height="2000" width="600" /></p>
								</div>
								<div class="tab-pane fade" id="all_ssr_android">
									<p>1：下載app</p>
									<p><img src="/images/c_android_1.jpg" height="500" width="500" /></p>
									<p>2：添加訂閱並更新</p>
									<p><img src="/images/c_android_2.jpg" height="500" width="500" /></p>
									<p><img src="/images/c_android_3.jpg" height="500" width="500" /></p>
									<p><img src="/images/c_android_4.jpg" height="500" width="500" /></p>
									<p><img src="/images/c_android_5.jpg" height="500" width="500" /></p>
									<p>3：選擇一個節點並設置路由</p>
									<p><img src="/images/c_android_6.jpg" height="500" width="500" /></p>
									<p><img src="/images/c_android_7.jpg" height="500" width="500" /></p>
									<p>4：連接</p>
									<p><img src="/images/c_android_8.jpg" height="500" width="500" /></p>
									<p>注釋：國産安卓系統爲定制系統，如需要Youtube、Google套件等，需要安裝Google框架，具體機型如何安裝各不相同，請直接查找教程</p>
								</div>
								<div class="tab-pane fade" id="all_ssr_router">
									<h2 class="major">路由器</h2> </div>
								<div class="tab-pane fade" id="all_ssr_game">
									<h2 class="major">遊戲端</h2> </div>
							</div>
						</div>
					</div>
					{include file='dialog.tpl'}
				</div>
			</div>
		</section>
	</div>
</main> {include file='user/footer.tpl'}
