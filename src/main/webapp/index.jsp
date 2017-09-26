<%@ page language="java" contentType="text/html; charset=UTF-8 " import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.jade.pojo.*" %>
<%@ page import="java.util.regex.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>index</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="${pageContext.request.contextPath}/resource/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resource/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resource/css/index/data_styles.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resource/css/index/styles.css" type="text/css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/resource/scripts/jquery-1.7.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/axQuery.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/globals.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axutils.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/annotation.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/axQuery.std.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/doc.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/index/document.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/messagecenter.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/events.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/recording.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/action.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/expr.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/geometry.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/flyout.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/ie.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/model.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/repeater.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/sto.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/utils.temp.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/variables.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/drag.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/move.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/visibility.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/style.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/adaptive.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/tree.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/init.temp.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/index/data.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/legacy.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/viewer.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/math.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return '${pageContext.request.contextPath}/resource/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return '${pageContext.request.contextPath}/resource/Other.html'; };
      $axure.utils.getReloadPath = function() { return '${pageContext.request.contextPath}/resource/reload.html'; };
    </script>
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (图片) -->
      <div id="u0" class="ax_default image">
        <img id="u0_img" class="img " src="resource/images/index/u0.jpg"/>
        <!-- Unnamed () -->
        <div id="u1" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u2" class="ax_default image">
        <img id="u2_img" class="img " src="resource/images/index/u2.jpg"/>
        <!-- Unnamed () -->
        <div id="u3" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 大登陆框 (矩形) -->
      <div id="u4" class="ax_default box_2" data-label="大登陆框">
        <div id="u4_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u5" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 用户名标签 (矩形) -->
      <div id="u6" class="ax_default _三级标题" data-label="用户名标签">
        <div id="u6_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u7" class="text" style="visibility: visible;">
          <p><span>工号：</span></p>
        </div>
      </div>

      <!-- 用户名标签 (矩形) -->
      <div id="u8" class="ax_default _三级标题" data-label="用户名标签">
        <div id="u8_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u9" class="text" style="visibility: visible;">
          <p><span>口令：</span></p>
        </div>
      </div>

	<form action="userLogin" method="post">
      <!-- Unnamed (矩形) 
      <div id="u10" class="ax_default button">
        <div id="u10_div" class=""></div>
        <div id="u11" class="text" style="visibility: visible;">
          <p><span>Login</span></p>
        </div>
      </div>-->

      <!-- Unnamed (文本框) -->
      <div id="u12" class="ax_default text_field">
        <input id="u12_input" type="text"  name="userId" />
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u13" class="ax_default text_field">
        <input id="u13_input" type="text"  name= "userPasswd" />
      </div>
      
      <div id="u10" class="ax_default button">
      		<input  id="u10_div"  type="submit"  value="login"/>
      </div>
      
      </form>
      
    </div>
  </body>
</html>
