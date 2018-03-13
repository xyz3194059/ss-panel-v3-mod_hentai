{include file='header_n.tpl'}
<div id="wrapper">
    <!--首頁開始-->
    <div class="content">
        <div class="inner">
            <h1>邀請碼管理</h1></div>
    </div>
    <p>{$config["appName"]} 邀請碼(點擊或複制邀請碼直接注冊)</p>
    <div class="table-wrapper">
        <table>
            <thead>
            <tr>
                <th>邀請碼</th>
                <th>狀態</th>
            </tr>
            </thead> {foreach $codes as $code}
            <tbody>
            <tr>
            <tr>
                <td><a href="/auth/register?code={$code->code}">{$code->code}</a></td>
                <td>可用</td>
            </tr> {/foreach} </tbody>
        </table>
    </div>
    <!--底頁按鈕-->
    <nav>
        <ul><a href="/" class="button">返回首頁</a></ul>
    </nav>
{include file='footer_n.tpl'}
