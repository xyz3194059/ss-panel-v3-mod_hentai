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
										<p>下面爲您的 PAC 配置。</p>
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
										<p class="card-heading">配置方法</p>
										<p>Android：打開設置-WLAN-長按要使用的wifi-彈出窗口-點擊修改網絡-展開高級選項-代理框中選擇代理自動配置-PAC網址中填寫配置信息所給出的地址-保存。連接時會提示輸入用戶名密碼，按照配置信息輸入即可。</p>
                    <p>iOS：打開設置-無線局域網-點擊需要使用的wifi右側藍色修改按鈕-在新打開的頁面中-HTTP代理選擇自動-URL框中填寫配置信息所給出的地址-保存。連接時會提示輸入用戶名密碼，按照配置信息輸入即可。</p>
                    <p>Windows：打開控制面板-在查看方式中選擇小圖標或大圖標-打開Internet選項-在連接選項卡上單擊局域網設置-在自動配置中選擇使用自動腳本，並將配置信息中給出的地址填寫到地址一欄中-之後點擊確定-應用。連接時會提示輸入用戶名密碼，按照配置信息輸入即可。</p>
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
