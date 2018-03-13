{$load=$point_node->getNodeLoad()}
<div id="load{$id}_chart" style="height: 300px; width: 100%;"></div>
	<div id="up{$id}_chart" style="height: 300px; width: 100%;"></div>
	<div id="alive{$id}_chart" style="height: 300px; width: 100%;"></div>
	<div id="speedtest{$id}_chart" style="height: 300px; width: 100%;"></div>
	<div id="speedtest{$id}_ping_chart" style="height: 300px; width: 100%;"></div>
	<script type="text/javascript">
		$().ready(function(){
			chart{$id} = new CanvasJS.Chart("load{$id}_chart",
			{
				title:{
					text: "節點負載情況 {$prefix}"
				},
				data: [
				{
					type: "line",
					dataPoints: [
						{$i=0}
						{foreach $load as $single_load}
							{if $i==0}
								{literal}
								{
								{/literal}
									x: new Date({$single_load->log_time*1000}), y:{$single_load->getNodeLoad()}
								{literal}
								}
								{/literal}
								{$i=1}
							{else}
								{literal}
								,{
								{/literal}
									x: new Date({$single_load->log_time*1000}), y:{$single_load->getNodeLoad()}
								{literal}
								}
								{/literal}
							{/if}
						{/foreach}

					]
				}
				]
			});
			up_chart{$id} = new CanvasJS.Chart("up{$id}_chart",
			{
				title:{
					text: "最近一天節點在線情況 {$prefix} - 在線 {$point_node->getNodeUptime()}"
				},
				data: [
					{
						//startAngle: 45,
						indexLabelFontSize: 20,
						indexLabelFontFamily: "Garamond",
						indexLabelFontColor: "darkgrey",
						indexLabelLineColor: "darkgrey",
                        yValueFormatString: "##0.00\"%\"",
						indexLabelPlacement: "outside",
						type: "doughnut",
						showInLegend: true,
						dataPoints: [
							{
								y: {$point_node->getNodeUpRate()*100}, label: "在線率",legendText:"在線率 {number_format($point_node->getNodeUpRate()*100,2)}%", indexLabel: "在線率 {number_format($point_node->getNodeUpRate()*100,2)}%"
							},
							{
								y: {(1-$point_node->getNodeUpRate())*100}, label: "離線率",legendText:"離線率 {number_format((1-$point_node->getNodeUpRate())*100,2)}%", indexLabel: "離線率 {number_format((1-$point_node->getNodeUpRate())*100,2)}%"
							}
						]
					}
					]
			});

			{$load=$point_node->getNodeAlive()}
			alive_chart{$id} = new CanvasJS.Chart("alive{$id}_chart",
			{
				title:{
					text: "最近一天節點在線人數情況 {$prefix}"
				},
				data: [
				{
					type: "line",
                  yValueFormatString: "##0\"人\"",
					dataPoints: [
						{$i=0}
						{foreach $load as $single_load}
							{if $i==0}
								{literal}
								{
								{/literal}
									x: new Date({$single_load->log_time*1000}), y:{$single_load->online_user},label: "同時在線人數"
								{literal}
								}
								{/literal}
								{$i=1}
							{else}
								{literal}
								,{
								{/literal}
									x: new Date({$single_load->log_time*1000}), y:{$single_load->online_user},label: "同時在線人數"
								{literal}
								}
								{/literal}
							{/if}
						{/foreach}

					]
				}
				]
			});
			{$speedtests=$point_node->getSpeedtestResult()}
			speedtest_chart{$id} = new CanvasJS.Chart("speedtest{$id}_chart",
			{
				title:{
					text: "最近節點測速延時情況報告 {$prefix}"
				},
				axisY: {
					suffix: " ms"
				},
				data: [
				{
					type: "line",
					showInLegend: true,
					legendText: "電信延時",
                    yValueFormatString: "##0\"ms\"",
					dataPoints: [
						{$i=0}
						{foreach $speedtests as $single_speedtest}
							{if $i==0}
								{literal}
								{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getTelecomPing()},label: "電信延時"
								{literal}
								}
								{/literal}
								{$i=1}
							{else}
								{literal}
								,{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getTelecomPing()},label: "電信延時"
								{literal}
								}
								{/literal}
							{/if}
						{/foreach}

					]
				},
				{
					type: "line",
					showInLegend: true,
					legendText: "聯通延時",
                  yValueFormatString: "##0\"ms\"",
					dataPoints: [
						{$i=0}
						{foreach $speedtests as $single_speedtest}
							{if $i==0}
								{literal}
								{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getUnicomPing()},label: "聯通延時"
								{literal}
								}
								{/literal}
								{$i=1}
							{else}
								{literal}
								,{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getUnicomPing()},label: "聯通延時"
								{literal}
								}
								{/literal}
							{/if}
						{/foreach}

					]
				},
				{
					type: "line",
					showInLegend: true,
					legendText:"移動延時",
                  yValueFormatString: "##0\"ms\"",
					dataPoints: [
						{$i=0}
						{foreach $speedtests as $single_speedtest}
							{if $i==0}
								{literal}
								{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getCmccPing()},label: "移動延時"
								{literal}
								}
								{/literal}
								{$i=1}
							{else}
								{literal}
								,{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getCmccPing()},label: "移動延時"
								{literal}
								}
								{/literal}
							{/if}
						{/foreach}

					]
				}
				]
			});

			speedtest_ping_chart{$id} = new CanvasJS.Chart("speedtest{$id}_ping_chart",
			{
				title:{
					text: "最近節點測速速度情況報告 {$prefix}"
				},
				axisY: {
					includeZero: false,
					suffix: " Mbps"
					},
              	toolTip:{
	     			shared: true
	                   },
				data: [
				{
					type: "line",
					showInLegend: true,
					legendText: "電信下載速度",
                  	name: "電信下載",
                  yValueFormatString: "##0.00\"Mb\"",
					dataPoints: [
						{$i=0}
						{foreach $speedtests as $single_speedtest}
							{if $i==0}
								{literal}
								{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getTelecomUpload()},label: "電信下載"
								{literal}
								}
								{/literal}
								{$i=1}
							{else}
								{literal}
								,{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getTelecomUpload()},label: "電信下載"
								{literal}
								}
								{/literal}
							{/if}
						{/foreach}

					]
				},
				{
					type: "line",
					showInLegend: true,
					legendText: "電信上傳速度",
                  name: "電信上傳",
                  yValueFormatString: "##0.00\"Mb\"",
					dataPoints: [
						{$i=0}
						{foreach $speedtests as $single_speedtest}
							{if $i==0}
								{literal}
								{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getTelecomDownload()},label: "電信上傳"
								{literal}
								}
								{/literal}
								{$i=1}
							{else}
								{literal}
								,{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getTelecomDownload()},label: "電信上傳"
								{literal}
								}
								{/literal}
							{/if}
						{/foreach}

					]
				},
				{
					type: "line",
					showInLegend: true,
					legendText: "聯通下載速度",
                  name: "聯通下載",
                  yValueFormatString: "##0.00\"Mb\"",
					dataPoints: [
						{$i=0}
						{foreach $speedtests as $single_speedtest}
							{if $i==0}
								{literal}
								{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getUnicomUpload()},label: "聯通下載"
								{literal}
								}
								{/literal}
								{$i=1}
							{else}
								{literal}
								,{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getUnicomUpload()},label: "聯通下載"
								{literal}
								}
								{/literal}
							{/if}
						{/foreach}

					]
				},
				{
					type: "line",
					showInLegend: true,
					legendText: "聯通上傳速度",
                  name: "聯通上傳",
                  yValueFormatString: "##0.00\"Mb\"",
					dataPoints: [
						{$i=0}
						{foreach $speedtests as $single_speedtest}
							{if $i==0}
								{literal}
								{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getUnicomDownload()},label: "聯通上傳"
								{literal}
								}
								{/literal}
								{$i=1}
							{else}
								{literal}
								,{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getUnicomDownload()},label: "聯通上傳"
								{literal}
								}
								{/literal}
							{/if}
						{/foreach}

					]
				},
				{
					type: "line",
					showInLegend: true,
					legendText:"移動上傳速度",
                  name: "移動上傳",
                  yValueFormatString: "##0.00\"Mb\"",
					dataPoints: [
						{$i=0}
						{foreach $speedtests as $single_speedtest}
							{if $i==0}
								{literal}
								{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getCmccDownload()},label: "移動上傳"
								{literal}
								}
								{/literal}
								{$i=1}
							{else}
								{literal}
								,{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getCmccDownload()},label: "移動上傳"
								{literal}
								}
								{/literal}
							{/if}
						{/foreach}

					]
				},
				{
					type: "line",
					showInLegend: true,
					legendText:"移動下載速度",
                  name: "移動下載",
                  yValueFormatString: "##0.00\"Mb\"",
					dataPoints: [
						{$i=0}
						{foreach $speedtests as $single_speedtest}
							{if $i==0}
								{literal}
								{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getCmccUpload()},label: "移動下載"
								{literal}
								}
								{/literal}
								{$i=1}
							{else}
								{literal}
								,{
								{/literal}
									x: new Date({$single_speedtest->datetime*1000}), y:{$single_speedtest->getCmccUpload()},label: "移動下載"
								{literal}
								}
								{/literal}
							{/if}
						{/foreach}

					]
				}
				]
			});
			chart{$id}.render();
			up_chart{$id}.render();
			alive_chart{$id}.render();
			speedtest_chart{$id}.render();
			speedtest_ping_chart{$id}.render();
		});
	</script>
