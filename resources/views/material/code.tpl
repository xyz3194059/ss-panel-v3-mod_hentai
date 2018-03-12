{include file='header_n.tpl'}
<div id="wrapper">
    <!--首页开始-->
    <div class="content">
        <div class="inner">
            <h1>邀请码管理</h1></div>
    </div>
    <p>{$config["appName"]} 邀请码(点击或复制邀请码直接注册)</p>
    <div class="table-wrapper">
        <table>
            <thead>
            <tr>
                <th>邀请码</th>
                <th>状态</th>
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
    <!--底页按钮-->
    <nav>
        <ul><a href="/" class="button">返回首页</a></ul>
    </nav>
{include file='footer_n.tpl'}