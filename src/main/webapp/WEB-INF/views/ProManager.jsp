<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.jade.pojo.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>proManager</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="${pageContext.request.contextPath}/resource/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resource/css/promanager/data_styles.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resource/css/promanager/styles.css" type="text/css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/resource/scripts/jquery-1.7.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/axQuery.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/globals.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axutils.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/annotation.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/axQuery.std.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/doc.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/promanager/document.js"></script>
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
    <script src="${pageContext.request.contextPath}/resource/scripts/promanager/data.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/legacy.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/viewer.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/math.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return '${pageContext.request.contextPath}/resource/resource/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return '${pageContext.request.contextPath}/resource/Other.html'; };
      $axure.utils.getReloadPath = function() { return '${pageContext.request.contextPath}/resource/reload.html'; };
    </script>
  </head>
  <body>
    <div id="base" class="">

      <!-- 背景 (矩形) -->
      <div id="u0" class="ax_default box_1" data-label="背景">
        <div id="u0_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u1" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 员工技能描述组合 (组合) -->
      <div id="u2" class="ax_default" data-label="员工技能描述组合">

        <!-- 员工技能描述 (组合) -->
        <div id="u3" class="ax_default" data-label="员工技能描述">

          <!-- Unnamed (矩形) -->
          <div id="u4" class="ax_default box_1">
            <div id="u4_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u5" class="text" style="display: none; visibility: hidden">
              <p><span></span></p>
            </div>
          </div>

          <!-- Unnamed (内联框架) -->
          <div id="u6" class="ax_default">
            <iframe id="u6_input" scrolling="auto" frameborder="1"></iframe>
          </div>

          <!-- Unnamed (图片) -->
          <div id="u7" class="ax_default image">
            <img id="u7_img" class="img " src="resource/images/promanager/u7.png"/>
            <!-- Unnamed () -->
            <div id="u8" class="text" style="display: none; visibility: hidden">
              <p><span></span></p>
            </div>
          </div>
        </div>
      </div>

      <!-- 人员视图 (矩形) -->
      <div id="u9" class="ax_default box_1" data-label="人员视图">
        <div id="u9_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u10" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (表格) -->
      <div id="u11" class="ax_default">
	
		<!--------------------------------------------------------------------------------  插入员工信息列表   ------------------------------------------------------------------------------------------------ -->
		<table   bgcolor="#FFFFFF"   bordercolor="#000000"  cellspacing="0" >
			<tr height="43px"  bgcolor="000000">
				<th style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#FFFFFF;border: solid 1px #B4B4B4;">
					工号
				</th>
				<th style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#FFFFFF;border: solid 1px #B4B4B4;">
					员工姓名
				</th>
				<th style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#FFFFFF;border: solid 1px #B4B4B4;">
					员工类型
				</th>
				<th style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#FFFFFF;border: solid 1px #B4B4B4;">
					BAND
				</th>
				<th style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#FFFFFF;border: solid 1px #B4B4B4;">
					归属部门
				</th>
				<th style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#FFFFFF;border: solid 1px #B4B4B4;">
					职能
				</th>
			</tr>
			
			<% List<StaffInfo> staffList=(List)request.getAttribute("staffList");%>
			<% for(int i=0;i<staffList.size();i++) {%>
			
			<tr height="43px"  >
				<td width="111px" align="center" style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:18px;color:#000000;border: solid 1px #B4B4B4;">
				<a href="StaffInfo?staff_id=<%=staffList.get(i).getStaffId()%>"><%= staffList.get(i).getStaffId()%></a>
				</td>
				
				<td width="111px"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:18px;color:#000000;border: solid 1px #B4B4B4;">
				<%= staffList.get(i).getStaffName()%>
				</td>
				
				<td width="111px"  align="center"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:18px;color:#000000;border: solid 1px #B4B4B4;">
				<%= staffList.get(i).getStaffType()%>
				</td>
				
				<td width="111px"  align="center"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:18px;color:#000000;border: solid 1px #B4B4B4;">
				<%=staffList.get(i).getBand()%>
				</td>
				
				<td width="111px"  align="center"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:18px;color:#000000;border: solid 1px #B4B4B4;">
				<%= staffList.get(i).getDepartment()%>
				</td>
				
				<td width="111px"  align="center"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:18px;color:#000000;border: solid 1px #B4B4B4;">
				<%= staffList.get(i).getFunction()%>
				</td>
			</tr>
			<%}%>
		</table>

      </div>

      <!-- Unnamed (矩形) -->
      <div id="u144" class="ax_default box_1">
        <div id="u144_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u145" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 箭头1 (形状) -->
      <div id="u146" class="ax_default icon" data-label="箭头1">
        <img id="u146_img" class="img " src="resource/images/promanager/箭头1_u146.png"/>
        <!-- Unnamed () -->
        <div id="u147" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 箭头2 (形状) -->
      <div id="u148" class="ax_default icon ax_default_hidden" data-label="箭头2" style="display: none; visibility: hidden">
        <img id="u148_img" class="img " src="resource/images/promanager/箭头2_u148.png"/>
        <!-- Unnamed () -->
        <div id="u149" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 功能说明动态面板 (动态面板) -->
      <div id="u150" class="ax_default ax_default_hidden" data-label="功能说明动态面板" style="display: none; visibility: hidden">
        <div id="u150_state0" class="panel_state" data-label="State1">
          <div id="u150_state0_content" class="panel_state_content">

            <!-- Unnamed (矩形) -->
            <div id="u151" class="ax_default box_1 ax_default_hidden" style="display: none; visibility: hidden">
              <div id="u151_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u152" class="text" style="visibility: visible;">
                <p><span>&#149; </span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u153" class="ax_default box_1">
              <div id="u153_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u154" class="text" style="visibility: visible;">
                <p><span>&#149; 部门能力需求管理&nbsp; &nbsp; </span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u155" class="ax_default box_1">
              <div id="u155_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u156" class="text" style="visibility: visible;">
                <p><span>&#149; 部门人员管理&nbsp; &nbsp; </span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u157" class="ax_default box_1">
              <div id="u157_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u158" class="text" style="visibility: visible;">
                <p><span>&#149; 员工技能升级审核&nbsp; &nbsp; </span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u159" class="ax_default box_1">
              <div id="u159_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u160" class="text" style="visibility: visible;">
                <p><span>&#149; 部门配置管理&nbsp; &nbsp; </span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u161" class="ax_default box_1">
              <div id="u161_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u162" class="text" style="visibility: visible;">
                <p><span>&#149; 帮助手册&nbsp; &nbsp; </span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u163" class="ax_default box_1">
              <div id="u163_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u164" class="text" style="visibility: visible;">
                <p><span>&#149; 能力搜索&nbsp; &nbsp; </span></p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (形状) -->
      <div id="u165" class="ax_default icon">
        <img id="u165_img" class="img " src="resource/images/promanager/u165.png"/>
        <!-- Unnamed () -->
        <div id="u166" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (形状) -->
      <div id="u167" class="ax_default icon">
        <img id="u167_img" class="img " src="resource/images/promanager/u167.png"/>
        <!-- Unnamed () -->
        <div id="u168" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 技能升级审核链接 (形状) -->
      <div id="u169" class="ax_default icon" data-label="技能升级审核链接">
        <img id="u169_img" class="img " src="resource/images/promanager/技能升级审核链接_u169.png"/>
        <!-- Unnamed () -->
        <div id="u170" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 部门管理按钮 (矩形) -->
      <div id="u171" class="ax_default box_1" data-label="部门管理按钮">
        <div id="u171_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u172" class="text" style="visibility: visible;">
          <p><span>&nbsp;&nbsp; &nbsp; 部门管理</span></p>
        </div>
      </div>

      <!-- 未展开地图小图标 (形状) -->
      <div id="u173" class="ax_default icon" data-label="未展开地图小图标">
        <img id="u173_img" class="img " src="resource/images/promanager/未展开地图小图标_u173.png"/>
        <!-- Unnamed () -->
        <div id="u174" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 展开后地图小图标 (组合) -->
      <div id="u175" class="ax_default ax_default_hidden" data-label="展开后地图小图标" style="display: none; visibility: hidden">

        <!-- Unnamed (图片) -->
        <div id="u176" class="ax_default image">
          <img id="u176_img" class="img " src="resource/images/promanager/u176.png"/>
          <!-- Unnamed () -->
          <div id="u177" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>

        <!-- Unnamed (图片) -->
        <div id="u178" class="ax_default image">
          <img id="u178_img" class="img " src="resource/images/promanager/u176.png"/>
          <!-- Unnamed () -->
          <div id="u179" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>

        <!-- Unnamed (图片) -->
        <div id="u180" class="ax_default image">
          <img id="u180_img" class="img " src="resource/images/promanager/u176.png"/>
          <!-- Unnamed () -->
          <div id="u181" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>
      </div>

      <!-- 部门管理表格 (表格) -->
      <div id="u182" class="ax_default ax_default_hidden" data-label="部门管理表格" style="display: none; visibility: hidden">
		<table   bgcolor="#FFFFFF"   bordercolor="#000000"  cellspacing="0" >
			<tr height="43px"  bgcolor="#000000">
				<th width="111px"   style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#FFFFFF;border: solid 1px #B4B4B4;">
					部门
				</th>
				<th width="111px"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#FFFFFF;border: solid 1px #B4B4B4;">
					职能
				</th>
				<th width="111px"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#FFFFFF;border: solid 1px #B4B4B4;">
					规划人数
				</th>
				<th width="111px"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#FFFFFF;border: solid 1px #B4B4B4;">
					现有人数
				</th>
				<th width="111px"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#FFFFFF;border: solid 1px #B4B4B4;">
					缺口
				</th>
			</tr>
			<% List<DeptPlan> deptPlan=(List)request.getAttribute("deptPlan");
					String provInfo =(String)request.getAttribute("provInfo");  %>
			<% for(int i=0;i<deptPlan.size();i++) {%>
			
			<tr height="43px"  >
				<td width="111px" align="center" style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:18px;color:#000000;border: solid 1px #B4B4B4;">
				<%= deptPlan.get(i).getDepartmentName() %>
				</td>
				
				<td width="111px" align="center"   style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:18px;color:#000000;border: solid 1px #B4B4B4;">
				<%= deptPlan.get(i).getFunctionId() %>
				</td>
				
				<td width="111px"  align="center"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:18px;color:#000000;border: solid 1px #B4B4B4;">
				<%= deptPlan.get(i).getPlanNum() %>
				</td>
				
				<td width="111px"  align="center"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:18px;color:#000000;border: solid 1px #B4B4B4;">
				<%= deptPlan.get(i).getRealNum() %>
				</td>
				
				<td width="111px"  align="center"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:18px;color:#000000;border: solid 1px #B4B4B4;">
				<a href="Recommendation?Prov_id=<%=provInfo %>&Dept_id= <%=deptPlan.get(i).getDepartmentId() %>&Fun_id=<%= deptPlan.get(i).getFunctionId() %> "><%= deptPlan.get(i).getUndermanned() %></a>
				</td>
				
			</tr>
				
			<%} %>
		</table>
      </div>

      <!-- 部门管理说明框 (矩形) -->
      <div id="u243" class="ax_default box_1 ax_default_hidden" data-label="部门管理说明框" style="display: none; visibility: hidden">
        <div id="u243_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u244" class="text" style="visibility: visible;">
          <p><span>点击相应的规划人数进入部门规划管理，点击缺口进行相应职位推荐</span></p>
        </div>
      </div>

      <!-- Unnamed (形状) -->
      <div id="u245" class="ax_default icon">
        <img id="u245_img" class="img " src="resource/images/promanager/u245.png"/>
        <!-- Unnamed () -->
        <div id="u246" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (形状) -->
      <div id="u247" class="ax_default icon">
        <img id="u247_img" class="img " src="resource/images/promanager/u247.png"/>
        <!-- Unnamed () -->
        <div id="u248" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (形状) -->
      <div id="u249" class="ax_default icon">
        <img id="u249_img" class="img " src="resource/images/promanager/u249.png"/>
        <!-- Unnamed () -->
        <div id="u250" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (形状) -->
      <div id="u251" class="ax_default icon">
        <img id="u251_img" class="img " src="resource/images/promanager/u251.png"/>
        <!-- Unnamed () -->
        <div id="u252" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>
    </div>
  </body>
</html>