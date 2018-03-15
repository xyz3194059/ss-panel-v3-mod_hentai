{include file='user/main.tpl'}
{$ssr_prefer = URL::SSRCanConnect($user, 0)}


<main class="content">
    <div class="content-header ui-content-header">
        <div class="container">
            <h1 class="content-heading">用戶中心</h1>
        </div>
    </div>
    <div class="container">
        <section class="content-inner margin-top-no">
            <div class="ui-card-wrap">

                <div class="col-lg-6 col-md-6">

                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner margin-bottom-no">
                                <p class="card-heading"><i class="icon icon-md">notifications_active</i>公告欄</p>
                                {if $ann != null}
                                    <p>{$ann->content}</p>
                                {/if}
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner margin-bottom-no">
                                <p class="card-heading"><i class="icon icon-md">phonelink</i> 快速添加節點</p>
                                <nav class="tab-nav margin-top-no">
                                    <ul class="nav nav-list">
                                        <li {if $ssr_prefer}class="active"{/if}>
                                            <a class="waves-attach" data-toggle="tab" href="#all_ssr"><i class="icon icon-lg">airplanem ode_active</i>&nbsp;ShadowsocksR</a>
                                        </li>
                                    </ul>
                                </nav>
                                <div class="card-inner">
                                    <div class="tab-content">
                                        <div class="tab-pane fade {if $ssr_prefer}active in{/if}" id="all_ssr">
                                            {$pre_user = URL::cloneUser($user)}
                                            <nav class="tab-nav margin-top-no">
                                                <ul class="nav nav-list">
                                                    <li class="active">
                                                        <a class="waves-attach" data-toggle="tab" href="#all_ssr_windows"><i class="icon icon-lg">desktop_windows</i>&nbsp;Windows</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab" href="#all_ssr_mac"><i class="icon icon-lg">laptop_mac</i>&nbsp;MacOS</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab" href="#all_ssr_linux"><i class="icon icon-lg">dvr</i>&nbsp;Linux</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab" href="#all_ssr_ios"><i class="icon icon-lg">phone_iphone</i>&nbsp;iOS</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab" href="#all_ssr_android"><i class="icon icon-lg">android</i>&nbsp;Android</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab" href="#all_ssr_router"><i class="icon icon-lg">router</i>&nbsp;路由器</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab"
                                                           href="#all_ssr_game"><i
                                                                    class="icon icon-lg">videogame_asset</i>&nbsp;遊戲端</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab"
                                                           href="#all_ssr_info"><i class="icon icon-lg">info_outline</i>&nbsp;連接信息</a>
                                                    </li>
                                                </ul>
                                            </nav>

                                            <div class="tab-pane fade active in" id="all_ssr_windows">
                                                {$user = URL::getSSRConnectInfo($pre_user)}
                                                {$ssr_url_all = URL::getAllUrl($pre_user, 0, 0)}
                                                {$ssr_url_all_mu = URL::getAllUrl($pre_user, 1, 0)}
                                                <p><span class="icon icon-lg text-white">looks_one</span><a
                                                            href="/ssr-download/ssr-win.7z"> 點擊我下載</a></p>
                                                <p><span class="icon icon-lg text-white">looks_two</span> 解壓至任意磁盤</p>
                                                <p><span class="icon icon-lg text-white">looks_3</span> 運行程序</p>

                                                <p><span class="icon icon-lg text-white">looks_4</span>
                                                    任務欄右下角右鍵紙飛機圖標--服務器訂閱--SSR服務器訂閱設置，將訂閱鏈接設置爲下面的地址，確定之後再更新 SSR 服務器訂閱。
                                                </p>
                                                <p><span class="icon icon-lg text-white">looks_5</span>
                                                    然後選擇一個合適的服務器，代理規則選“繞過局域網和大陸”，然後即可上網。</p>
                                                <p><span class="icon icon-lg text-white">flash_auto</span> 訂閱地址：<input
                                                            type="text"
                                                            class="input form-control form-control-monospace"
                                                            name="input1" readonly
                                                            value="{$baseUrl}/link/{$ssr_sub_token}?mu=0"
                                                            readonly="true">
                                                    <button class="copy-text btn btn-subscription" type="button"
                                                            data-clipboard-text="{$baseUrl}/link/{$ssr_sub_token}?mu=0">
                                                        點擊拷貝訂閱地址
                                                    </button>
                                                    <br>
                                                    <!--	單端口多用戶端口訂閱地址：<code>{$baseUrl}/link/{$ssr_sub_token}?mu=1</code>  -->
                                                </p>
                                                <p><a href="/user/announcement">點擊這裏查看Windows傻瓜式教程</a></p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ssr_mac">
                                                <p><span class="icon icon-lg text-white">looks_one</span><a
                                                            href="/ssr-download/ssr-mac.dmg"> 點擊我下載</a></p>
                                                <p><span class="icon icon-lg text-white">looks_two</span> 打開下載的Dmg文件</p>
                                                <p><span class="icon icon-lg text-white">looks_3</span>
                                                    把ShadowsocksX拖入到Finder的應用程序列表(Applications)</p>
                                                <p><span class="icon icon-lg text-white">looks_4</span>
                                                    打開Launchapad裏的ShadowsocksX</p>
                                                <p><span class="icon icon-lg text-white">looks_5</span>
                                                    菜單欄的紙飛機圖標-服務器-服務器訂閱填入以下訂閱地址，更新後出現您的節點</p>
                                                <p><span class="icon icon-lg text-white">looks_6</span>
                                                    菜單欄的紙飛機圖標-打開shadowsocks</p>
                                                <p><span class="icon icon-lg text-white">flash_auto</span> 訂閱地址：<input
                                                            type="text"
                                                            class="input form-control form-control-monospace"
                                                            name="input1" readonly
                                                            value="{$baseUrl}/link/{$ssr_sub_token}?mu=0"
                                                            readonly="true">
                                                    <button class="copy-text btn btn-subscription" type="button"
                                                            data-clipboard-text="{$baseUrl}/link/{$ssr_sub_token}?mu=0">
                                                        點擊拷貝訂閱地址
                                                    </button>
                                                    <br>

                                                </p>
                                                <p><a href="/user/announcement">點擊這裏查看Mac傻瓜式教程</a></p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ssr_linux">
                                                <p><a href="/user/announcement">點擊這裏查看Linux傻瓜式教程</a></p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ssr_ios">
                                                <p><span class="icon icon-lg text-white">looks_one</span> 切換<code>App
                                                        Store</code>賬號-ID:<code>XXXXXXX@icloud.com</code> 密碼<code>XXXXXXXX</code>注意特殊符號與大小寫,如果顯示需要解鎖賬號，請提交工單或郵件。（千萬不要試圖登陸iCloud，會上傳您的照片與通訊錄到這個賬戶上）
                                                </p>
                                                <p><span class="icon icon-lg text-white">looks_two</span> 商店搜索<code>Shadowrocket</code>下載安裝
                                                </p>
                                                <p><span class="icon icon-lg text-white">looks_3</span>
                                                    安裝完成後切換回您自己的賬號。（請務必切換回您自己的賬戶）</p>
                                                <p><span class="icon icon-lg text-white">looks_3</span>
                                                    打開Shadowrocket軟件後，點擊右上角<span
                                                            class="icon icon-lg text-white">add</span>，添加類型爲<code>Subscribe</code>，URL填寫以下地址即可自動更新節點
                                                </p>
                                                <p><span class="icon icon-lg text-white">looks_4</span>
                                                    選擇任意節點點擊連接，然後點擊allow後解鎖指紋</p>
                                                <p><span class="icon icon-lg text-white">looks_5</span>
                                                    注意：第一次連接可能不能用，導入後程序退出並重新打開程序後連接即可！</p>
                                                <p><span class="icon icon-lg text-white">flash_auto</span>
                                                    訂閱地址：<input type="text" class="input form-control form-control-monospace" name="input1" readonly="true" value="{$baseUrl}/link/{$ssr_sub_token}?mu=0"></p>
                                                <button class="copy-text btn btn-subscription" type="button" data-clipboard-text="{$baseUrl}/link/{$ssr_sub_token}?mu=0">
                                                    點擊拷貝訂閱地址
                                                </button>
                                                <p><a href="/user/announcement">點擊這裏查看iOS傻瓜式教程</a></p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ssr_android">
                                                <p><span class="icon icon-lg text-white">filter_1</span><a
                                                            href="/ssr-download/ssr-android.apk"> 點擊我下載</a>並安裝</p>
                                                <p><span class="icon icon-lg text-white">filter_2</span>
                                                    打開App，點擊右下角的<span class="icon icon-lg text-white">add</span>號圖標</p>
                                                <p><span class="icon icon-lg text-white">filter_3</span> 添加/升級 SSR訂閱</p>
                                                <p><span class="icon icon-lg text-white">filter_4</span>
                                                    添加訂閱地址，輸入以下訂閱地址後確定</p>
                                                <p><span class="icon icon-lg text-white">filter_5</span>
                                                    訂閱出現系統自帶的與仟佰星雲，請把系統自帶的無效訂閱左滑刪除（自帶影響訂閱更新速度）</p>
                                                <p><span class="icon icon-lg text-white">filter_6</span> 點擊確定並升級</p>
                                                <p><span class="icon icon-lg text-white">filter_7</span> 選擇任意節點</p>
                                                <p><span class="icon icon-lg text-white">filter_8</span>
                                                    路由選擇：略過區域網路以及中國大陸</p>
                                                <p><span class="icon icon-lg text-white">filter_9</span> 點擊右上角的紙飛機圖標即可連接
                                                </p>
                                                <p><span class="icon icon-lg text-white">flash_auto</span> 訂閱地址：<input
                                                            type="text"
                                                            class="input form-control form-control-monospace"
                                                            name="input1" readonly
                                                            value="{$baseUrl}/link/{$ssr_sub_token}?mu=0"
                                                            readonly="true">
                                                    <button class="copy-text btn btn-subscription" type="button"
                                                            data-clipboard-text="{$baseUrl}/link/{$ssr_sub_token}?mu=0">
                                                        點擊拷貝訂閱地址
                                                    </button>
                                                </p>
                                                <p><a href="/user/announcement">點擊這裏查看Android傻瓜式教程</a></p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ssr_router">
                                                <p>路由器 刷入<a href="http://www.right.com.cn/forum/thread-161324-1-1.html">這個固件</a>，然後
                                                    SSH 登陸路由器，執行以下命令（導入普通端口）<br>
                                                    <code>wget -O- {$baseUrl}/link/{$router_token}?is_ss=0 | bash &&
                                                        echo -e "\n0 */3 * * * wget -O- {$baseUrl}/link/{$router_token}
                                                        ?is_ss=0 | bash\n">> /etc/storage/cron/crontabs/admin && killall
                                                        crond && crond </code><br>
                                                    這個單端口多用戶的<br>
                                                    <code>wget -O- {$baseUrl}/link/{$router_token_without_mu}?is_ss=0 |
                                                        bash && echo -e "\n0 */3 * * * wget -O- {$baseUrl}
                                                        /link/{$router_token_without_mu}?is_ss=0 | bash\n">>
                                                        /etc/storage/cron/crontabs/admin && killall crond &&
                                                        crond </code><br>
                                                    執行完畢以後就可以到路由器的設置面板裏隨意選擇 Shadowsocks 服務器進行連接了。</p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ssr_game">
                                                <p><span class="icon icon-lg text-white">looks_one</span><a
                                                            href="/ssr-download/SSTap.7z">點擊我下載</a></p>
                                                <p><span class="icon icon-lg text-white">looks_two</span>
                                                    安裝，期間會安裝虛擬網卡，請點擊允許或確認</p>
                                                <p><span class="icon icon-lg text-white">looks_3</span> 打開桌面程序SSTap</p>
                                                <p><span class="icon icon-lg text-white">looks_4</span>
                                                    齒輪圖標-SSR訂閱-SSR訂閱管理添加以下訂閱鏈接即可</p>
                                                <p><span class="icon icon-lg text-white">looks_5</span>
                                                    更新後選擇其中一個節點閃電圖標測試節點-測試UDP轉發...通過!（UDP通過即可連接並開始遊戲），如測試不通過，點擊齒輪圖標設置DNS，推薦谷歌DNS
                                                </p>
                                                <p><span class="icon icon-lg text-white">flash_auto</span> 訂閱地址：<input
                                                            type="text"
                                                            class="input form-control form-control-monospace"
                                                            name="input1" readonly
                                                            value="{$baseUrl}/link/{$ssr_sub_token}?mu=0"
                                                            readonly="true">
                                                    <button class="copy-text btn btn-subscription" type="button"
                                                            data-clipboard-text="{$baseUrl}/link/{$ssr_sub_token}?mu=0">
                                                        點擊拷貝訂閱地址
                                                    </button>
                                                    <br>
                                                </p>
                                                <p><a href="/user/announcement">點擊這裏查看遊戲客戶端傻瓜式教程</a></p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ssr_info">
                                                {$user = URL::getSSRConnectInfo($pre_user)}
                                                {$ssr_url_all = URL::getAllUrl($pre_user, 0, 0)}
                                                {$ssr_url_all_mu = URL::getAllUrl($pre_user, 1, 0)}
                                                {if URL::SSRCanConnect($user)}
                                                    <dl class="dl-horizontal">\
                                                        <dt><code>優點導入普通端口，如果普通端口無法使用再導入單端口</code></dt>
                                                        <dt>端口</dt>
                                                        <dd>{$user->port}</dd>
                                                        <dt>密碼</dt>
                                                        <dd>{$user->passwd}</dd>
                                                        <dt>自定義加密</dt>
                                                        <dd>{$user->method}</dd>
                                                        <dt>自定義協議</dt>
                                                        <dd>{$user->protocol}</dd>
                                                        <dt>自定義混淆</dt>
                                                        <dd>{$user->obfs}</dd>
                                                    </dl>
                                                {else}
                                                    <p>您好，您目前的 加密方式，混淆，或者協議設置在 ShadowsocksR 客戶端下無法連接。請您選用 Shadowsocks 客戶端來連接，或者到 資料編輯 頁面修改後再來查看此處。</p>
                                                    <p>同時, ShadowsocksR 單端口多用戶的連接不受您設置的影響,您可以在此使用相應的客戶端進行連接~</p>
                                                    <p>請注意，在當前狀態下您的 SSR 訂閱鏈接已經失效，您無法通過此種方式導入節點。</p>
                                                {/if}
                                            </div>
                                        </div>
                                        <div class="tab-pane fade {if !$ssr_prefer}active in{/if}" id="all_ss">
                                            <nav class="tab-nav margin-top-no">
                                                <ul class="nav nav-list">
                                                    <li class="active">
                                                        <a class="waves-attach" data-toggle="tab" href="#all_ss_info"><i class="icon icon-lg">info_outline</i>&nbsp;連接信息</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab" href="#all_ss_windows"><i class="icon icon-lg">desktop_windows</i>&nbsp;Windows</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab" href="#all_ss_mac"><i class="icon icon-lg">laptop_mac</i>&nbsp;MacOS</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab" href="#all_ss_ios"><i class="icon icon-lg">laptop_mac</i>&nbsp;iOS</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab" href="#all_ss_android"><i class="icon icon-lg">android</i>&nbsp;Android</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab" href="#all_ss_router"><i class="icon icon-lg">router</i>&nbsp;路由器</a>
                                                    </li>
                                                </ul>
                                            </nav>
                                            <div class="tab-pane fade active in" id="all_ss_info">
                                                {$user = URL::getSSConnectInfo($pre_user)}
                                                {$ss_url_all = URL::getAllUrl($pre_user, 0, 1)}
                                                {$ss_url_all_mu = URL::getAllUrl($pre_user, 1, 1)}
                                                {$ss_url_all_win = URL::getAllUrl($pre_user, 0, 2)}

                                                {if URL::SSCanConnect($user)}
                                                    <dl class="dl-horizontal">
                                                        <p>各個節點的地址請到節點列表查看！</p>
                                                        <dt>端口</dt>
                                                        <dd>{$user->port}</dd>
                                                        <dt>密碼</dt>
                                                        <dd>{$user->passwd}</dd>
                                                        <dt>自定義加密</dt>
                                                        <dd>{$user->method}</dd>
                                                        <dt>自定義混淆</dt>
                                                        <dd>{$user->obfs}</dd>
                                                    </dl>
                                                {else}
                                                    <p>您好，您目前的 加密方式，混淆，或者協議設置在 SS 客戶端下無法連接。請您選用 SSR 客戶端來連接，或者到 資料編輯
                                                        頁面修改後再來查看此處。</p>
                                                    <p>同時, Shadowsocks 單端口多用戶的連接不受您設置的影響,您可以在此使用相應的客戶端進行連接~</p>
                                                {/if}
                                            </div>
                                            <div class="tab-pane fade" id="all_ss_windows">
                                                <p><a href="/ssr-download/ss-win.zip">下載</a>，解壓，運行程序，然後您有兩種方式導入所有節點<br>
                                                    (1)下載<a href="/user/getpcconf?is_mu=0&is_ss=1">這個（普通端口）</a>，放到小飛機的目錄下，然後打開小飛機。<br>
                                                    (2)點擊<a class="copy-text" data-clipboard-text="{$ss_url_all_win}">這裏（普通端口）</a>,
                                                    然後右鍵小飛機 -- 從剪貼板導入 URL<br>
                                            </div>
                                            <div class="tab-pane fade" id="all_ss_mac">
                                                <p><a href="/ssr-download/ss-mac.zip">下載</a>，安裝，然後下載<a
                                                            href="/user/getpcconf?is_mu=0&is_ss=1">這個（普通端口）</a>或者<a
                                                            href="/user/getpcconf?is_mu=1&is_ss=1">這個（單端口多用戶）</a>，運行程序，小飛機上右鍵
                                                    服務器列表 子菜單 的 “導入服務器配置文件...” 導入這個文件，然後選擇一個合適的服務器，更新一下PAC，然後開啓系統代理即可上網。
                                                </p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ss_ios">
                                                <p>
                                                    推薦下載<a href="https://itunes.apple.com/cn/app/shadowrocket/id932747118?mt=8">Shadowrocket</a>，已購買此軟件的美國商店Apple ID:<code>shz7348@icloud.com</code> 密碼<code>Qq654321.</code>注意特殊符號與大小寫,自行切換商店賬號下載安裝，然後在
                                                    Safari 中點擊<a href="{$ss_url_all}">這個（普通端口）</a>或者<a href="{$ss_url_all_mu}">這個（單端口多用戶）</a>，然後點擊確定，就可以批量添加節點。</p>
                                                <p>iOS 下載<a href="/link/{$ios_token}?is_ss=1">這個（普通端口）</a>或者<a href="/link/{$ios_token}?is_ss=1&is_mu=1">這個（單端口多用戶）</a>，導入到
                                                    Surge 中，然後就可以隨意切換服務器上網了。</p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ss_android">
                                                <p><a href="/ssr-download/ss-android.apk">下載</a>，再<a href="/ssr-download/ss-android-obfs.apk">下載</a>，然後安裝，然後在手機上點擊
                                                    <a class="copy-text" data-clipboard-text="{$ss_url_all}"> 這個鏈接（普通端口）</a>或者<a class="copy-text" data-clipboard-text="{$ss_url_all_mu}">這個鏈接（單端口多用戶端口）</a>複制到剪貼板，打開
                                                    Shadowsocks 客戶端，選擇從剪貼板導入，然後選擇一個節點，設置一下路由爲繞過大陸，點擊飛機就可以上網了。</p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ss_router">
                                                <p>路由器 刷入<a href="http://www.right.com.cn/forum/thread-161324-1-1.html">這個固件</a>，然後
                                                    SSH 登陸路由器，執行以下命令（導入普通端口）<br>
                                                    <code>wget -O- {$baseUrl}/link/{$router_token}?is_ss=1 | bash &&
                                                        echo -e "\n0 */3 * * * wget -O- {$baseUrl}/link/{$router_token}
                                                        ?is_ss=1 | bash\n">> /etc/storage/cron/crontabs/admin && killall
                                                        crond && crond </code><br>
                                                    或者這個單端口多用戶的<br>
                                                    <code>wget -O- {$baseUrl}/link/{$router_token_without_mu}?is_ss=1 |
                                                        bash && echo -e "\n0 */3 * * * wget -O- {$baseUrl}
                                                        /link/{$router_token_without_mu}?is_ss=1 | bash\n">>
                                                        /etc/storage/cron/crontabs/admin && killall crond &&
                                                        crond </code><br>
                                                    執行完畢以後就可以到路由器的設置面板裏隨意選擇 Shadowsocks 服務器進行連接了。</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-action">
                                    <div class="card-action-btn pull-left">
                                        <p><a class="btn btn-brand btn-flat waves-attach" href="/user/url_reset"><span class="icon">autorenew</span>&nbsp;重置我的訂閱鏈接</a></p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner margin-bottom-no">
                                <p class="card-heading"><i class="icon icon-md">account_circle</i>賬號使用情況</p>
                                <dl class="dl-horizontal">
                                        <dt>帳號等級</dt>
                                        {if $user->class!=0}
                                    <dd><i class="icon icon-md t4-text">stars</i>&nbsp;<code>VIP{$user->class}</dd>
                                    {else}
                                    <dd><i class="icon icon-md t4-text">stars</i>&nbsp;免費</dd>
                                    {/if}
                                    {if $user->class!=0}
                                            <dt>Telegram(VIP可見)</dt>
                                        <dd><i class="icon icon-md t4-text">stars</i>&nbsp;<a href="請到index.tpl第299行修改"
                                                                                              target="view_window">點擊加入TG群</a>
                                        </dd>
                                    {else}

                                    {/if}
                                        <dt>等級過期時間</dt>
                                        {if $user->class_expire!="1989-06-04 00:05:00"}
                                    <dd><i class="icon icon-md">event</i>&nbsp;{$user->class_expire}</dd>
                                    {else}
                                    <dd><i class="icon icon-md">event</i>&nbsp;不過期</dd>
                                    {/if}
                                        <dt>帳號過期時間</dt>
                                    <dd><i class="icon icon-md">event</i>&nbsp;{$user->expire_in}</dd>
                                        <dt>速度限制</dt>
                                        {if $user->node_speedlimit!=0}
                                    <dd>
                                        <i class="icon icon-md">settings_input_component</i>&nbsp;{$user->node_speedlimit}
                                        Mbps
                                    </dd>
                                    {else}
                                    <dd><i class="icon icon-md">settings_input_component</i>&nbsp;不限速</dd>
                                    {/if}
                                        <dt>在線設備數</dt>
                                    <dd><i class="icon icon-md">phonelink</i>&nbsp;{$user->online_ip_count()}
                                        / {$user->node_connector}</dd>
                                        <dt>余額</dt>
                                    <dd><i class="icon icon-md">monetization_on</i>&nbsp;{$user->money} CNY</dd>
                                        <dt>上次使用</dt>
                                        {if $user->lastSsTime()!="從未使用喵"}
                                    <dd><i class="icon icon-md">event</i>&nbsp;{$user->lastSsTime()}</dd>
                                    {else}
                                    <dd><i class="icon icon-md">event</i>&nbsp;從未使用</dd>
                                    {/if}

                                        <dt>上次簽到時間：</dt>
                                    <dd><i class="icon icon-md">event</i>&nbsp;{$user->lastCheckInTime()}</dd>
                                    <p id="checkin-msg"></p>

                                    {if $geetest_html != null}
                                        <div id="popup-captcha"></div>
                                    {/if}
                                    <div class="card-action">
                                        <div class="card-action-btn pull-left">
                                            {if $user->isAbleToCheckin() }
                                                <p id="checkin-btn">
                                                    <button id="checkin" class="btn btn-brand btn-flat waves-attach">
                                                        <span class="icon">check</span>&nbsp;點我簽到&nbsp;<span
                                                                class="icon">screen_rotation</span>&nbsp;或者搖動手機簽到
                                                    </button>
                                                </p>
                                            {else}
                                                <p><a class="btn btn-brand disabled btn-flat waves-attach"
                                                      href="#"><span class="icon">check</span>&nbsp;今日已簽到</a></p>
                                            {/if}
                                        </div>
                                    </div>
                                </dl>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner margin-bottom-no">
                                <div id="traffic_chart" style="height: 300px; width: 100%;"></div>
                                <script src="/assets/materialize/js/canvasjs.min.js"></script>
            										<script type="text/javascript">
            											var chart = new CanvasJS.Chart("traffic_chart",{
            												title:{
            													text: "{($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100}%",
            													fontColor: "#848484",
                                                              	fontSize: 70,
                                                          		verticalAlign: "center",
                                                              	horizontalAlign: "center"
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
            														{
            															y: {$user->last_day_t/$user->transfer_enable*100},color: "#c70000"
            														},
            														{
            															y: {($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100},color: "#424242"
            														}
            														{/if}
            													]
            												}
            												]
            											});
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
                                var duoshuoQuery = {short_name: "{$duoshuo_shortname}"};
                                (function () {
                                    var ds = document.createElement('script');
                                    ds.type = 'text/javascript';
                                    ds.async = true;
                                    ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
                                    ds.charset = 'UTF-8';
                                    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ds);
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

{include file='user/footer.tpl'}

<script src="/theme/material/js/shake.js"></script>


<script>

    $(function () {
        new Clipboard('.copy-text');
    });

    $(".copy-text").click(function () {
        $("#result").modal();
        $("#msg").html("已複制到您的剪貼板，請您繼續接下來的操作。");
    });

    {if $geetest_html == null}


    window.onload = function () {
        var myShakeEvent = new Shake(threshold: 15});

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
                success: function (data) {
                    $("#checkin-msg").html(data.msg);
                    $("#checkin-btn").hide();
                    $("#result").modal();
                    $("#msg").html(data.msg);
                },
                error: function (jqXHR) {
                    $("#result").modal();
                    $("#msg").html("發生錯誤：" + jqXHR.status);
                }
            });
        }
    };


    $(document).ready(function () {
        $("#checkin").click(function () {
            $.ajax({
                type: "POST",
                url: "/user/checkin",
                dataType: "json",
                success: function (data) {
                    $("#checkin-msg").html(data.msg);
                    $("#checkin-btn").hide();
                    $("#result").modal();
                    $("#msg").html(data.msg);
                },
                error: function (jqXHR) {
                    $("#result").modal();
                    $("#msg").html("發生錯誤：" + jqXHR.status);
                }
            })
        })
    })


    {else}


    window.onload = function () {
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


    var handlerPopup = function (captchaObj) {
        c = captchaObj;
        captchaObj.onSuccess(function () {
            var validate = captchaObj.getValidate();
            $.ajax({
                url: "/user/checkin", // 進行二次驗證
                type: "post",
                dataType: "json",
                data: {
                    // 二次驗證所需的三個值
                    geetest_challenge: validate.geetest_challenge,
                    geetest_validate: validate.geetest_validate,
                    geetest_seccode: validate.geetest_seccode
                },
                success: function (data) {
                    $("#checkin-msg").html(data.msg);
                    $("#checkin-btn").hide();
                    $("#result").modal();
                    $("#msg").html(data.msg);
                },
                error: function (jqXHR) {
                    $("#result").modal();
                    $("#msg").html("發生錯誤：" + jqXHR.status);
                }
            });
        });
        // 彈出式需要綁定觸發驗證碼彈出按鈕
        captchaObj.bindOn("#checkin");
        // 將驗證碼加到id爲captcha的元素裏
        captchaObj.appendTo("#popup-captcha");
        // 更多接口參考：http://www.geetest.com/install/sections/idx-client-sdk.html
    };

    initGeetest({
        gt: "{$geetest_html->gt}",
        challenge: "{$geetest_html->challenge}",
        product: "popup", // 産品形式，包括：float，embed，popup。注意只對PC版驗證碼有效
        offline: {if $geetest_html->success}0{else}1{/if} // 表示用戶後台檢測極驗服務器是否宕機，與SDK配合，用戶一般不需要關注
    }, handlerPopup);



    {/if}


</script>
