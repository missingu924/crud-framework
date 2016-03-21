<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<html>
	<head>
		<%
			String contextPathNivo = request.getContextPath();
		%>
		<title>Nivo Slider Demo</title>
		<link rel="stylesheet"
			href="<%=contextPathNivo%>/nivo-slider/themes/default/default.css"
			type="text/css" media="screen" />
		<link rel="stylesheet"
			href="<%=contextPathNivo%>/nivo-slider/themes/light/light.css"
			type="text/css" media="screen" />
		<link rel="stylesheet"
			href="<%=contextPathNivo%>/nivo-slider/themes/dark/dark.css"
			type="text/css" media="screen" />
		<link rel="stylesheet"
			href="<%=contextPathNivo%>/nivo-slider/themes/bar/bar.css"
			type="text/css" media="screen" />
		<!-- <link rel="stylesheet" href="<%=contextPathNivo%>/nivo-slider/demo/style.css" type="text/css" media="screen" />-->
		<link rel="stylesheet"
			href="<%=contextPathNivo%>/nivo-slider/nivo-slider.css"
			type="text/css" media="screen" />
	</head>
	<body>
		<div id="wrapper">
			<div class="slider-wrapper theme-default">
				<div id="slider" class="nivoSlider">
					<img
							src="<%=contextPathNivo%>/nivo-slider/demo/images/1.jpg"
							data-thumb="<%=contextPathNivo%>/nivo-slider/demo/images/1.jpg"
							alt=""  title=""/>
					<img src="<%=contextPathNivo%>/nivo-slider/demo/images/2.jpg"
						data-thumb="<%=contextPathNivo%>/demo/nivo-slider/images/2.jpg"
						alt="" title=""/>
					<img src="<%=contextPathNivo%>/nivo-slider/demo/images/4.jpg"
						data-thumb="<%=contextPathNivo%>/demo/nivo-slider/images/4.jpg"
						alt="" title=""/>
				</div>

			</div>

		</div>
		<script type="text/javascript"
			src="<%=contextPathNivo%>/nivo-slider/demo/scripts/jquery-1.9.0.min.js"></script>
		<script type="text/javascript"
			src="<%=contextPathNivo%>/nivo-slider/jquery.nivo.slider.js"></script>
		<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider({ pauseTime: 6000} );
    });
    </script>
	</body>
</html>