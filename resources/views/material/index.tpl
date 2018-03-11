{include file='header_n.tpl'}
<div id="wrapper">
	<header id="header">
		<div class="logo"> <span class="fas fa-rocket"></span> </div> {if $user->isLogin}
		<div class="content">
			<div class="inner">
				<p>用戶：<code>{$user->user_name}</code> 等級： {if $user->class!=0} <code>VIP{$user->class}</code> {else} <code>免費</code> {/if} 過期時間： {if $user->class_expire!="1989-06-04 00:05:00"} <code>{$user->class_expire}</code> {else} <code>不過期</code> {/if} </p>
				<p>總流量：<code>{$user->enableTraffic()}</code> 已用流量：<code>{$user->usedTraffic()}</code> 剩餘流量：<code>{$user->unusedTraffic()}</code></p>
			</div>
		</div>
		<nav>
			<ul>
				<li><a href="#info">簡介</a></li>
				<li><a href="/user">用戶中心</a></li>
				<li><a href="#download">下載</a></li>
			</ul>
		</nav> {else}
		<div class="content">
			<div class="inner">
				<h1>{$config["appName"]}</h1>
				<p>帶你瀏覽無疆的海洋</p>
			</div>
		</div>
		<nav>
			<ul>
				<li><a href="#info">簡介</a></li>
				<li><a href="/auth/login">登錄</a></li>
				<li><a href="/auth/register">註冊</a></li>
				<li><a href="#contact">聯系</a></li>
				<li><a href="#download">下載</a></li>
			</ul>
		</nav> {/if} </header>
	<div id="main">
		<article id="info">
			<h2 class="major">簡介</h2>
			<p>穿越時空</p>
			<p>跨越阻礙</p>
		</article>
		<article id="contact">
			<h2 class="major">聯繫我們</h2>
			<ul class="icons">
				<p>請在下方選擇一個聯繫方式，聯繫我們</p>
				<li> <a target="_blank" href="https://t.me/joinchat/GUrO5g_Klk717hXJR-EzKA" class="fab fa-telegram-plane">
										<span class="label">Telegrame</span>
									</a> <a href="mailto:monkeyblacktech97@gmail.com" class="far fa-envelope">
						<span class="label">Email</span></a> </li>
			</ul>
		</article>
		<article id="download">
			<h2 class="major">软件下載</h2>
			<ul>
				<li><a href="/ssr-download/ssr-win.7z" class="fab fa-windows">&nbsp;Windows</a></li>
				<li><a href="/ssr-download/ssr-mac.dmg" class="fas fa-laptop">&nbsp;MacOS</a></li>
				<li><a href="/ssr-download/ssr-android.apk" class="fab fa-android">&nbsp;Android</a></li>
				<li><a href="#ios" class="fab fa-apple">&nbsp;iOS</a></li>
				<li><a href="/ssr-download/SSTap.7z" class="fas fa-gamepad">&nbsp;Win游戏专用</a></li>
			</ul>
		</article>
		<article id="login">
			<h2 class="major">登錄</h2>
			<form method="post" action="javascript:void(0);">
				<div class="field half first"> <label for="email2">郵箱</label> <input type="text" name="Email" id="email2" /> </div>
				<div class="field half"> <label for="passwd">密碼</label> <input type="password" name="Password" id="passwd" /> </div>
				<ul class="actions">
					<li><input id="login" type="submit" value="登錄" class="special" /></li>
					<li><input type="reset" value="清空" /></li>
				</ul>
			</form>
			<div class="field half"> <input value="week" id="remember_me" name="remember_me" type="checkbox" checked> <label for="remember_me">記住我</label> </div> <br>
			<div id="result" role="dialog">
				<p color class="h5 margin-top-sm text-black-hint" id="msg"></p>
			</div>
		</article>
	</div> {include file='footer_n.tpl'}