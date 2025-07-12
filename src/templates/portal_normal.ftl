<!DOCTYPE html>

<html lang="en">

<head>
	<title><#if themeDisplay??>${themeDisplay.getLayout().getName(themeDisplay.getLocale())}<#else>My Site</#if></title>
	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<@liferay_util["include"] page="/html/common/themes/top_head.jsp" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<@liferay_util["include"] page="/html/common/themes/body_top.jsp" />

<#if themeDisplay?? && themeDisplay.isShowControlPanelIcon()>
	<@liferay.control_menu />
</#if>

<div id="wrapper">
	<header id="banner" role="banner">
		<#include "navigation.ftl" />
	</header>

	<section id="content">
		<#-- Main content area -->
		<@liferay_util["include"] page="/html/common/themes/portlet_content_wrapper.jsp" />
	</section>

	<footer id="footer" role="contentinfo">
		<div class="container">
			<p class="text-center">
				<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
			</p>
		</div>
	</footer>
</div>

<@liferay_util["include"] page="/html/common/themes/body_bottom.jsp" />

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>