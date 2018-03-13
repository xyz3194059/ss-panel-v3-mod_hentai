{include file='user/main.tpl'}

<main class="content">
    <div class="content-header ui-content-header">
        <div class="container">
            <h1 class="content-heading">充值記錄</h1>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-12 col-sm-12">
            <section class="content-inner margin-top-no">

                <div class="card">
                    <div class="card-main">
                        <div class="card-inner">
                            <p>系統中您的充值記錄。</p>
                        </div>
                    </div>
                </div>

                <div class="table-responsive">
                    {$orderList->render()}
                    <table class="table ">
                        <tr>
                            <th>ID</th>
                            <th>訂單號</th>
                            <th>金額</th>
                            <th>充值時間</th>
                            <th>狀態</th>
                        </tr>
                        {if sizeof($orderList) > 0}
                            {foreach $orderList as $order}
                                <tr>
                                    <td>#{$order->id}</td>
                                    <td>{$order->yft_order}</td>
                                    <td>{$order->price} 元</td>
                                    <td>{$order->create_time}</td>
                                    {if ($order->state == 1)}<td>已支付</td>{else}<td>未支付</td>{/if}
                                </tr>
                            {/foreach}
                        {else}
                            <tr>
                                <td colspan="5">暫無充值記錄！</td>
                            </tr>
                        {/if}
                    </table>
                </div>
                <span>總共{$countPage}頁</span>
                <input type="hidden" id="countPage" value="{$countPage}">
                <span>當前第{$currentPage}頁</span>
                <input type="hidden" id="currentPage" value="{$currentPage}">
                <a class="btn btn-brand" href="/user/yftOrder">首頁</a>
                <a class="btn btn-brand" href="javascript:void(0)" id="pre" onclick="goto('pre')">上一頁</a>
                <a class="btn btn-brand" href="javascript:void(0)" id="nxt" onclick="goto('next')">下一頁</a>
                <a class="btn btn-brand" href="javascript:void(0)" id="end" onclick="goto('end')">尾頁</a>
                {$orderList->render()}
        </div>
    </div>
</main>
{include file='user/footer.tpl'}
<script>
    function goto(type) {
        var countPage = $("#countPage").val();
        var currentPage = $("#currentPage").val();
        if ("pre" == type){
            if (currentPage == 1 || currentPage == ""){
                $("#pre").removeAttr('onclick');
            }else {
                window.location.href = "/user/yftOrder?page=" + currentPage - 1;
            }
        }else if ("next" == type){
            if (currentPage == countPage){
                $("#pre").removeAttr('onclick');
            }else {
                window.location.href = "/user/yftOrder?page=" + currentPage + 1;
            }
        }else if ("end" == type){
            if (countPage == currentPage){
                $("#end").removeAttr('onclick');
            }else {
                window.location.href = "/user/yftOrder?page=" + countPage;
            }
        }
    }
</script>
