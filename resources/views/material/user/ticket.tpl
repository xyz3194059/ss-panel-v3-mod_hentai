{include file='user/main.tpl'}
	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">工單</h1>
			</div>
		</div>
		<div class="container">
			<div class="col-lg-12 col-sm-12">
				<section class="content-inner margin-top-no">

					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<p>有任何問題請直接右下角的+號提交新問題</p>
							</div>
						</div>
					</div>

					<div class="table-responsive">
						{$tickets->render()}
                        <table class="table">
                            <tr>

                              <!--  <th>ID</th>   -->
                                <th>發起日期</th>
                                <th>工單標題</th>
								<th>工單狀態</th>
                               <th>操作</th>
                            </tr>
                            {foreach $tickets as $ticket}
                                <tr>

                                 <!--   <td>#{$ticket->id}</td>  -->
                                    <td>{$ticket->datetime()}</td>
                                    <td>{$ticket->title}</td>
									{if $ticket->status==1}
									<td>工單服務中</td>
									{else}
									<td>工單已結束</td>
									{/if}
                                     <td>
										<a class="btn btn-brand" href="/user/ticket/{$ticket->id}/view">查看</a>
									</td>
                                </tr>
                            {/foreach}
                        </table>
                        {$tickets->render()}
					</div>
					<div class="fbtn-container">
						<div class="fbtn-inner">
							<a class="fbtn fbtn-lg fbtn-brand-accent waves-attach waves-circle waves-light" href="/user/ticket/create">+</a>
						</div>
					</div>
			</div>
		</div>
	</main>
{include file='user/footer.tpl'}
