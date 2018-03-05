	<footer class="ui-footer">
		<div class="container">
			<marquee>&copy; {$config["appName"]}歡迎使用 {$config["appName"]} 本服務建立於美國,遵守美國法律法規<marquee> {if $config["enable_analytics_code"] == 'true'}{include file='analytics.tpl'}{/if}
		</div>
	</footer>

	<!-- js -->
	<script src="//cdn.staticfile.org/jquery/2.2.1/jquery.min.js"></script>
	<script src="//cdn.staticfile.org/jquery-validate/1.15.0/jquery.validate.min.js"></script>
	<script src="//static.geetest.com/static/tools/gt.js"></script>
	
	<script src="/theme/material/js/base.min.js"></script>
	<script src="/theme/material/js/project.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/clipboard.js/1.5.16/clipboard.min.js"></script>
	
</body>
</html>