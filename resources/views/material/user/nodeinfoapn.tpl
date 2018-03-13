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
										<p>下面爲您的 APN 下載信息。</p>
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
										<p>本方法僅限iOS用戶在 移動/聯通/電信 3G或4G網絡下使用</p>
                    <p>1 根據你的運營商在safari中輸入與你運營商對應的地址</p>
                    <p>2 訪問這個地址後會跳轉到設置中自動彈出安裝描述文件彈窗</p>
                    <p>3 之後點擊安裝，如有密碼會提示你輸入密碼，請正確輸入設備密碼</p>
                    <p>4 如果出現警告，忽略並點擊安裝，經再次確認安裝後就已經安裝完成配置文件了，點擊右上角完成結束配置</p>
                    <p>5 該方法如果需要使用請切換到3/4G網絡下，打開網頁時會提示你輸入用戶名與密碼，請按照配置信息中內容輸入</p>
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
