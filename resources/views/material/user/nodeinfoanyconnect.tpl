{include file='user/header_info.tpl'}
	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">節點信息</h1>
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
										<p class="card-heading">注意！</p>
										<p>下面爲您的 Anyconnect 配置。</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12 col-sm-12">
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">配置信息</p>
										<p>{$json_show}</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12 col-sm-12">
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">客戶端下載</p>
										<p>由于版權問題，此處不提供下載。</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12 col-sm-12">
								<div class="card">
									<div class="card-main">
										<div class="card-inner margin-bottom-no">
											<p class="card-heading">配置方法</p>
											<p>Windows：下載客戶端安裝後打開，再打開的窗口中點擊左下角的設施（齒輪）按鈕，取消勾選Block connections to untrusted servers，之後在框中輸入服務器地址，點擊connect，如果出現提示框點擊connext anyway即可，並在隨後彈出的認證框中填寫用戶名密碼連接就好。</p>
	                    <p>Mac OS X：下載客戶端安裝後打開，再打開的窗口中點擊左下角的設施（齒輪）按鈕，取消勾選Block connections to untrusted servers，之後在框中輸入服務器地址，點擊connect，如果出現提示框點擊connext anyway即可，並在隨後彈出的認證框中填寫用戶名密碼連接就好。</p>
	                    <p>android：下載客戶端安裝後打開。點擊連接-添加新的VPN連接，並在其中輸入服務器地址（如配置信息所示）後點擊完成並在上一頁中選擇新建的連接，之後返回第一頁，在anyconnect VPN一行中有個開關，點擊開關將其打開，如出現安全警告，點擊繼續即可，之後在彈出的認證框中輸入用戶名密碼，連接即可。</p>
	                    <p>iOS：從app store中下載客戶端安裝後打開。點擊連接-添加新的VPN連接，並在其中輸入服務器地址（如配置信息所示）後點擊完成並在上一頁中選擇新建的連接，之後返回第一頁，在anyconnect VPN一行中有個開關，點擊開關將其打開，如出現安全警告，點擊繼續即可，之後在彈出的認證框中輸入用戶名密碼，連接即可。</p>
	                    <p>windows Phone：在應用商店中下載客戶端安裝後打開設置-網絡-VPN-添加VPN連接，VPN提供商一欄選擇anyconnect，連接名稱任意，服務器名稱或地址中填寫如配置信息所示的地址，之後點擊保存即可，連接時點擊對應的新建的VPN，點擊連接，之後會提示輸入用戶名與密碼，分別輸入後即可。</p>
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
