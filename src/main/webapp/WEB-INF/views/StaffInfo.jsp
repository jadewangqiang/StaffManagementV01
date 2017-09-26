<%@ page language="java" contentType="text/html; charset=UTF-8 " import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.jade.pojo.*" %>
<%@ page import="java.util.regex.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <!--
    <base href="<%=basePath%>" >
    -->
    
    <title>staffInfo</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="${pageContext.request.contextPath}/resource/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resource/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resource/css/data_styles.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resource/css/staffinfo_styles.css" type="text/css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/resource/scripts/jquery-1.7.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/axQuery.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/globals.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axutils.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/annotation.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/axQuery.std.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/doc.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/document.js"></script>
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
    <script src="${pageContext.request.contextPath}/resource/scripts/staffInfo/data.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/legacy.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/viewer.js"></script>
    <script src="${pageContext.request.contextPath}/resource/scripts/axure/math.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resource/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resource/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resource/reload.html'; };
    </script>
   <style type="text/css">
	body {
    	/*background: url(resource/images/staffinfo/h1.jpg);
    	background-size:100% 100%;
    	background-repeat:repeat-y;*/
    	background-color: #FBFBFB
	}
</style>

  </head>
  
  <body > 
   <div id="base" class=""  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;table-layout:fixed;" >

      <!-- 职位匹配框 (矩形) -
      <div id="u1133" class="ax_default box_1" data-label="职位匹配框">
        <div id="u1133_div" class=""></div>
        <!-- Unnamed () 
        <div id="u1134" class="text" style="visibility: visible;">
          <p><span>职位匹配</span></p>
        </div>
      </div>

      <!-- 基本信息框 (矩形) 
      <div id="u1135" class="ax_default box_1" data-label="基本信息框">
        <div id="u1135_div" class=""></div>
        <!-- Unnamed () 
        <div id="u1136" class="text" style="visibility: visible;">
          <p><span>基本信息</span></p>
        </div>
      </div>

      <!-- 滚动锚 (热区) -->
      <div id="u1137" class="ax_default" data-label="滚动锚">
      </div>

      <!-- 显性菜单 (组合) -->
      <div id="u1138" class="ax_default" data-label="显性菜单">

        <!-- 基本信息标签 (矩形) -->
        <div id="u1139" class="ax_default box_1" data-label="基本信息标签">
          <div id="u1139_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u1140" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
            <p><span>&nbsp;&nbsp;&nbsp; 基本信息</span></p>
          </div>
        </div>

        <!-- 基础能力标签 (矩形) -->
        <div id="u1141" class="ax_default box_1" data-label="基础能力标签">
          <div id="u1141_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u1142" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
            <p><span>&nbsp;&nbsp;&nbsp; 基础能力</span></p>
          </div>
        </div>

        <!-- 高级能力标签 (矩形) -->
        <div id="u1143" class="ax_default box_1" data-label="高级能力标签">
          <div id="u1143_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u1144" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
            <p><span>&nbsp;&nbsp;&nbsp; 高级能力</span></p>
          </div>
        </div>

        <!-- IT技能标签 (矩形) -->
        <div id="u1145" class="ax_default box_1" data-label="IT技能标签">
          <div id="u1145_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u1146" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
            <p><span>&nbsp;&nbsp;&nbsp; IT技能</span></p>
          </div>
        </div>

        <!-- 系统技能标签 (矩形) -->
        <div id="u1147" class="ax_default box_1" data-label="系统技能标签">
          <div id="u1147_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u1148" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
            <p><span>&nbsp;&nbsp;&nbsp; 系统技能</span></p>
          </div>
        </div>

        <!-- 业务能力标签 (矩形) -->
        <div id="u1149" class="ax_default box_1" data-label="业务能力标签">
          <div id="u1149_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u1150" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
            <p><span>&nbsp;&nbsp;&nbsp; 业务能力</span></p>
          </div>
        </div>

        <!-- 成长轨迹标签 (矩形) -->
        <div id="u1151" class="ax_default box_1" data-label="成长轨迹标签">
          <div id="u1151_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u1152" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
            <p><span>&nbsp;&nbsp;&nbsp; 成长轨迹</span></p>
          </div>
        </div>

        <!-- 发展计划标签 (矩形) -->
        <div id="u1153" class="ax_default box_1" data-label="发展计划标签">
          <div id="u1153_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u1154" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
            <p><span>&nbsp;&nbsp;&nbsp; 发展计划</span></p>
          </div>
        </div>

        <!-- 职位匹配标签 (矩形) -->
        <div id="u1155" class="ax_default box_1" data-label="职位匹配标签">
          <div id="u1155_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u1156" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
            <p><span>&nbsp;&nbsp;&nbsp; 职位匹配</span></p>
          </div>
        </div>

        <!-- Unnamed (形状) -->
        <div id="u1157" class="ax_default icon">
          <img id="u1157_img" class="img " src="resource/images/staffinfo/u1157.png"/>
          <!-- Unnamed () -->
          <div id="u1158" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>
        <!-- Unnamed (形状) -->
        <div id="u1159" class="ax_default icon">
          <img id="u1159_img" class="img " src="resource/images/staffinfo/u1159.png"/>
          <!-- Unnamed () -->
          <div id="u1160" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>

        <!-- Unnamed (形状) -->
        <div id="u1161" class="ax_default icon">
          <img id="u1161_img" class="img " src="resource/images/staffinfo/u1161.png"/>
          <!-- Unnamed () -->
          <div id="u1162" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>

        <!-- Unnamed (形状) -->
        <div id="u1163" class="ax_default icon">
          <img id="u1163_img" class="img " src="resource/images/staffinfo/u1163.png"/>
          <!-- Unnamed () -->
          <div id="u1164" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>

        <!-- Unnamed (形状) -->
        <div id="u1165" class="ax_default icon">
          <img id="u1165_img" class="img " src="resource/images/staffinfo/u1165.png"/>
          <!-- Unnamed () -->
          <div id="u1166" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>

        <!-- Unnamed (形状) -->
        <div id="u1167" class="ax_default icon">
          <img id="u1167_img" class="img " src="resource/images/staffinfo/u1167.png"/>
          <!-- Unnamed () -->
          <div id="u1168" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>

        <!-- Unnamed (形状) -->
        <div id="u1169" class="ax_default icon">
          <img id="u1169_img" class="img " src="resource/images/staffinfo/u1169.png"/>
          <!-- Unnamed () -->
          <div id="u1170" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>

        <!-- Unnamed (形状) -->
        <div id="u1171" class="ax_default icon">
          <img id="u1171_img" class="img " src="resource/images/staffinfo/u1171.png"/>
          <!-- Unnamed () -->
          <div id="u1172" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>

        <!-- Unnamed (形状) -->
        <div id="u1173" class="ax_default icon">
          <img id="u1173_img" class="img " src="resource/images/staffinfo/u1173.png"/>
          <!-- Unnamed () -->
          <div id="u1174" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>
      </div>

      <!-- 固定锚 (动态面板) -->
      <div id="u1175" class="ax_default" data-label="固定锚">
        <div id="u1175_state0" class="panel_state" data-label="State1">
          <div id="u1175_state0_content" class="panel_state_content">

            <!-- Unnamed (矩形) -->
            <div id="u1176" class="ax_default box_1">
              <div id="u1176_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u1177" class="text" style="display: none; visibility: hidden">
                <p><span></span></p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- 基本信息点 (椭圆形) -->
      <div id="u1178" class="ax_default ellipse ax_default_hidden" data-label="基本信息点" style="display: none; visibility: hidden">
        <img id="u1178_img" class="img " src="resource/images/staffinfo/u1178.png"/>
        <!-- Unnamed () -->
        <div id="u1179" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 基础能力点 (椭圆形) -->
      <div id="u1180" class="ax_default ellipse ax_default_hidden" data-label="基础能力点" style="display: none; visibility: hidden">
        <img id="u1180_img" class="img " src="resource/images/staffinfo/u1178.png"/>
        <!-- Unnamed () -->
        <div id="u1181" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 高级能力点 (椭圆形) -->
      <div id="u1182" class="ax_default ellipse ax_default_hidden" data-label="高级能力点" style="display: none; visibility: hidden">
        <img id="u1182_img" class="img " src="resource/images/staffinfo/u1178.png"/>
        <!-- Unnamed () -->
        <div id="u1183" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- IT技能点 (椭圆形) -->
      <div id="u1184" class="ax_default ellipse ax_default_hidden" data-label="IT技能点" style="display: none; visibility: hidden">
        <img id="u1184_img" class="img " src="resource/images/staffinfo/u1178.png"/>
        <!-- Unnamed () -->
        <div id="u1185" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 系统技能点 (椭圆形) -->
      <div id="u1186" class="ax_default ellipse ax_default_hidden" data-label="系统技能点" style="display: none; visibility: hidden">
        <img id="u1186_img" class="img " src="resource/images/staffinfo/u1178.png"/>
        <!-- Unnamed () -->
        <div id="u1187" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 业务能力点 (椭圆形) -->
      <div id="u1188" class="ax_default ellipse ax_default_hidden" data-label="业务能力点" style="display: none; visibility: hidden">
        <img id="u1188_img" class="img " src="resource/images/staffinfo/u1178.png"/>
        <!-- Unnamed () -->
        <div id="u1189" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 成长轨迹点 (椭圆形) -->
      <div id="u1190" class="ax_default ellipse ax_default_hidden" data-label="成长轨迹点" style="display: none; visibility: hidden">
        <img id="u1190_img" class="img " src="resource/images/staffinfo/u1178.png"/>
        <!-- Unnamed () -->
        <div id="u1191" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 发展计划点 (椭圆形) -->
      <div id="u1192" class="ax_default ellipse ax_default_hidden" data-label="发展计划点" style="display: none; visibility: hidden">
        <img id="u1192_img" class="img " src="resource/images/staffinfo/u1178.png"/>
        <!-- Unnamed () -->
        <div id="u1193" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- 职位匹配点 (椭圆形) -->
      <div id="u1194" class="ax_default ellipse ax_default_hidden" data-label="职位匹配点" style="display: none; visibility: hidden">
        <img id="u1194_img" class="img " src="resource/images/staffinfo/u1178.png"/>
        <!-- Unnamed () -->
        <div id="u1195" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>
      
<!-- ******************************************人员信息主体************************************************ -->    

      <!-- Unnamed (矩形) -->
      <div id="u1196" class="ax_default _一级标题">
        <div id="u1196_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u1197" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000;">
          <p><span>${staffdetails.getStaffInfo().getStaffName()}&nbsp;&nbsp; </span></p>
        </div>
      </div>
      
      <!-- Unnamed (水平线) -->
      <div id="u1212" class="ax_default line">
        <img id="u1212_img" class="img " src="resource/images/staffinfo/u1212.png"/>
        <!-- Unnamed () -->
        <div id="u1213" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u1198" class="ax_default _一级标题">
        <div id="u1198_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u1199" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000;">
          <p><span>${staffdetails.getStaffInfo().getStaffId()}</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u1200" class="ax_default _二级标题">
        <div id="u1200_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u1201" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
          <p><span>BAND:&nbsp; ${staffdetails.getStaffInfo().getBand()}</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u1202" class="ax_default _二级标题">
        <div id="u1202_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u1203" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
          <p><span>性别：${staffdetails.getGenderValue()}</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u1204" class="ax_default _二级标题">
        <div id="u1204_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u1205" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
          <p><span>类型：${staffdetails.getSTValue()}</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u1206" class="ax_default _二级标题">
        <div id="u1206_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u1207" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
          <p><span>编制地：${staffdetails.getProvNote()}</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u1208" class="ax_default _二级标题">
        <div id="u1208_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u1209" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
          <p><span>部门：${staffdetails.getDept()}</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u1210" class="ax_default _二级标题">
        <div id="u1210_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u1211" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
          <p><span>职能：${staffdetails.getFun()}</span></p>
        </div>
      </div>

      
      
      
      <!-- Unnamed (水平线) -->
      <div id="long_line"  style="top:275px;"  class="ax_default line">
        <img id="line_img"  class="img " src="resource/images/staffinfo/u1607.png"/>
        <!-- Unnamed () -->
        <div id="nothing" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>
      
<!-- ******************************************分界线，以下为能力信息,数据准备阶段**************************************************** -->

	<%  List<SubSkill>  AB0List=(List)request.getAttribute("AB0");
			List<SubSkill>  AB1List=(List)request.getAttribute("AB1");
			List<SubSkill>  DI0List=(List)request.getAttribute("DI0");
			List<SubSkill>  DI1List=(List)request.getAttribute("DI1");
			List<SubSkill>  SK0List=(List)request.getAttribute("SK0");
			StaffDetails staffdetails=(StaffDetails)request.getAttribute("staffdetails");
			List<SubSkillList> pab0=new ArrayList<SubSkillList>();
			List<SubSkillList> pab1=new ArrayList<SubSkillList>();
			List<SubSkillList> pdi0=new ArrayList<SubSkillList>();
			List<SubSkillList> pdi1=new ArrayList<SubSkillList>();
			List<SubSkillList> psk0=new ArrayList<SubSkillList>();
	%>			
	
	
<%  		
			for(int i=0 ; i<DI0List.size() ; i++){
				Pattern pn=Pattern.compile(DI0List.get(i).getSkillId()+"\\w+");
				SubSkillList tempDI0=new SubSkillList();
				tempDI0.setSubSkillID(DI0List.get(i).getSkillId());
				tempDI0.setSubSkillName(DI0List.get(i).getSkillName());
				tempDI0.setSkillList(new ArrayList<MatchSkillResult>());
				for(int j=0;j<staffdetails.getMatchSkillResult().size();j++){
					Matcher m=pn.matcher(staffdetails.getMatchSkillResult().get(j).getSkillId());
					if(m.matches()==true){
						tempDI0.getSkillList().add(staffdetails.getMatchSkillResult().get(j));
					}
				}
				if(tempDI0.getSkillList().size()>0){    //插入时顺便排序，方便拆分三列表格时判断行数
					if(pdi0.size()==0){
						pdi0.add(tempDI0);//无元素时直接插
					}
					else{//有元素时排序插
						for (int k=0;k<pdi0.size();k++){
							if(tempDI0.getSkillList().size()>=pdi0.get(k).getSkillList().size()){
								pdi0.add(k, tempDI0);
								break;
							}
							else{
								if(k<pdi0.size()-1)
									continue;
								else
									pdi0.add(tempDI0);
							}
						}
					}
				}
			}

			for(int i=0;i<DI1List.size();i++){
				Pattern pn=Pattern.compile(DI1List.get(i).getSkillId()+"\\w+");  //模糊匹配正则式
				SubSkillList tempDI1=new SubSkillList();
				tempDI1.setSubSkillID(DI1List.get(i).getSkillId());
				tempDI1.setSubSkillName(DI1List.get(i).getSkillName());
				tempDI1.setSkillList(new ArrayList<MatchSkillResult>());
				for(int j=0;j<staffdetails.getMatchSkillResult().size();j++){
					Matcher m=pn.matcher(staffdetails.getMatchSkillResult().get(j).getSkillId());
					if(m.matches()==true){
						tempDI1.getSkillList().add(staffdetails.getMatchSkillResult().get(j));
					}
				}
				if(tempDI1.getSkillList().size()>0){    //插入时顺便排序，方便拆分三列表格时判断行数
					if(pdi1.size()==0){
						pdi1.add(tempDI1);//无元素时直接插
					}else{//有元素时排序插
						for (int k=0;k<pdi1.size();k++){
							if(tempDI1.getSkillList().size()>=pdi1.get(k).getSkillList().size()){
								pdi1.add(k, tempDI1);
								break;
							}
							else{
								if(k<pdi1.size()-1)
									continue;
								else
									pdi1.add(tempDI1);
									break;
							}
						}
					}
				}
			}

			for(int i=0;i<SK0List.size();i++){
				Pattern pn=Pattern.compile(SK0List.get(i).getSkillId()+"\\w+");  //模糊匹配正则式
				SubSkillList tempSK0=new SubSkillList();
				tempSK0.setSubSkillID(SK0List.get(i).getSkillId());
				tempSK0.setSubSkillName(SK0List.get(i).getSkillName());
				tempSK0.setSkillList(new ArrayList<MatchSkillResult>());
				for(int j=0;j<staffdetails.getMatchSkillResult().size();j++){
					Matcher m=pn.matcher(staffdetails.getMatchSkillResult().get(j).getSkillId());
					if(m.matches()==true){
						tempSK0.getSkillList().add(staffdetails.getMatchSkillResult().get(j));
					}
				}
				if(tempSK0.getSkillList().size()>0){    //插入时顺便排序，方便拆分三列表格时判断行数
					if(psk0.size()==0){
						psk0.add(tempSK0);//无元素时直接插
					}else{//有元素时排序插
						for (int k=0;k<psk0.size();k++){
							if(tempSK0.getSkillList().size()>=psk0.get(k).getSkillList().size()){
								psk0.add(k, tempSK0);
								break;
							}
							else{
								if(k<psk0.size()-1)
									continue;
								else
									psk0.add(tempSK0);
									break;
							}
						}
					}
				}
			}


			for(int i=0;i<AB0List.size();i++){
				Pattern pn=Pattern.compile(AB0List.get(i).getSkillId()+"\\w+");  //模糊匹配正则式
				SubSkillList tempAB0=new SubSkillList();
				tempAB0.setSubSkillID(AB0List.get(i).getSkillId());
				tempAB0.setSubSkillName(AB0List.get(i).getSkillName());
				tempAB0.setSkillList(new ArrayList<MatchSkillResult>());
				for(int j=0;j<staffdetails.getMatchSkillResult().size();j++){
					Matcher m=pn.matcher(staffdetails.getMatchSkillResult().get(j).getSkillId());
					if(m.matches()==true){
						tempAB0.getSkillList().add(staffdetails.getMatchSkillResult().get(j));
					}
				}
				if(tempAB0.getSkillList().size()>0){    //插入时顺便排序，方便拆分三列表格时判断行数
					if(pab0.size()==0){
						pab0.add(tempAB0);//无元素时直接插
					}
					else{//有元素时排序插
						for (int k=0;k<pab0.size();k++){
							if(tempAB0.getSkillList().size()>=pab0.get(k).getSkillList().size()){
								pab0.add(k, tempAB0);
								break;
							}
							else{
								if(k<pab0.size()-1)
									continue;
								else
									pab0.add(tempAB0);
									break;
							}
						}
					}
				}
			}
			
			
			
			for(int i=0;i<AB1List.size();i++){
				Pattern pn=Pattern.compile(AB1List.get(i).getSkillId()+"\\w+");  //模糊匹配正则式
				SubSkillList tempAB1=new SubSkillList();
				tempAB1.setSubSkillID(AB1List.get(i).getSkillId());
				tempAB1.setSubSkillName(AB1List.get(i).getSkillName());
				tempAB1.setSkillList(new ArrayList<MatchSkillResult>());
				for(int j=0;j<staffdetails.getMatchSkillResult().size();j++){
					Matcher m=pn.matcher(staffdetails.getMatchSkillResult().get(j).getSkillId());
					if(m.matches()==true){
						tempAB1.getSkillList().add(staffdetails.getMatchSkillResult().get(j));
					}
				}
				if(tempAB1.getSkillList().size()>0){    //插入时顺便排序，方便拆分三列表格时判断行数
					if(pab1.size()==0){
						pab1.add(tempAB1);//无元素时直接插
					}else{//有元素时排序插
						for (int k=0;k<pab1.size();k++){
							if(tempAB1.getSkillList().size()>=pab1.get(k).getSkillList().size()){
								pab1.add(k, tempAB1);
								break;
							}
							else{
								if(k<pab1.size()-1)
									continue;
								else
									pab1.add(tempAB1);
									break;
							}
						}
					}
				}
			}

 	%>
 	
 <!-- *****************************************************************开始编辑基础能力框 *********************************************************************************-->
 <% 
    int generalTop=290;//起始位置 top 270
    int step=30; //行间距步长
    int wordHeight=30; //行内字符高度
    
    int di0Height=0;//DI0 总高度
	if (pdi0.size()>0){
		int tLen=0;
		int pgSize=pdi0.size()/3;
		int mod=pdi0.size()%3;
		if (mod>0)
			tLen=pgSize+1;
		else
			tLen=pgSize;
		di0Height=(tLen+1)*wordHeight;
		for(int t=0;t<tLen;t++){
			di0Height=di0Height+pdi0.get(t*3).getSkillList().size()*wordHeight;
		}
	}
%>
  
  <div id="u1214"  style="top:<%=generalTop%>px;height:<%=di0Height %>px;"  class="ax_default box_1" data-label="基础能力框">
    <div id="u1214_div"  class="">


<table bgcolor=""  border="0" width="1200px"  height="100px"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;table-layout:fixed;" >
<% 
		if(pdi0.size()>0){
			int pageSize=pdi0.size()/3;
			int modSize=pdi0.size()%3;
			int tableLen=0;
			if (modSize>0)
				tableLen=pageSize+1;
			else
				tableLen=pageSize;
			
			for(int t=0;t<tableLen;t++){
				int bigger=0;
				if (t==tableLen-1&&modSize!=0)
					bigger=modSize;
				else
					bigger=3;
			%>
				<tr  height="2px"  ><% 
					for (int th=0;th<bigger;th++){
						%><th align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#000000" ><%= pdi0.get(t*3+th).getSubSkillName()%></th><% 
					}
					%>
				</tr>
				<tr  height="2px"  ><% 
					for (int th=0;th<bigger;th++){
						%><td align="left"  ><img id="underLine" class="img " src="resource/images/staffinfo/u1226.png"/></td><% 
					}
					%>
				</tr>
			<%
					for (int tr=0;tr<pdi0.get(t*3).getSkillList().size();tr++){
						%>
							<tr>
								<% for (int td=0;td<bigger;td++) {
									if(pdi0.get(t*3+td).getSkillList().size()>tr){
										
										String colours=null;
										if(pdi0.get(t*3+td).getSkillList().get(tr).getMatchResult()==0)
												colours="#434343";
										else if(pdi0.get(t*3+td).getSkillList().get(tr).getMatchResult()>0)
												colours="#00FF00";
										else
												colours="#FF0000";
										
									%><td align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:19px; color:<%=colours %>"><%=pdi0.get(t*3+td).getSkillList().get(tr).getSkillName()%>:<%=pdi0.get(t*3+td).getSkillList().get(tr).getSkillLevel()  %></td><%
									}else{
									%><td align="left"   style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:19px"><%=""%></td><%
									}
								}%>
							</tr>
						<%
					}
			}
		}
%>
</table>       
	
 
        </div>
        <!-- Unnamed () -->
        <div id="u1215" style="top:<%=generalTop%>px;height:<%=di0Height %>px;"  class="text" style="visibility: visible;">
          <p><span>基础能力</span></p>
        </div>
      </div>
      
<!-- *****************************************************************结束编辑基础能力框 *********************************************************************************-->	      
       <% generalTop=generalTop+di0Height+step;%>
            <!-- Unnamed (水平线) -->
      <div id="long_line" class="ax_default line">
        <img id="line_img"  style="top:<%=generalTop%>px;" class="img " src="resource/images/staffinfo/u1607.png"/>
        <!-- Unnamed () -->
        <div id="nothing" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

<!-- *****************************************************************开始编辑高级能力框 *********************************************************************************-->	

<% 
	generalTop=generalTop+step;
	int di1Height=0;//DI0 总高度
		if (pdi1.size()>0){
			int tLen=0;
			int pgSize=pdi1.size()/3;
			int mod=pdi1.size()%3;
			if (mod>0)
				tLen=pgSize+1;
			else
				tLen=pgSize;
			di1Height=(tLen+1)*wordHeight;
			for(int t=0;t<tLen;t++){
				di1Height=di1Height+pdi1.get(t*3).getSkillList().size()*wordHeight;
			}
		}
	%>
	 
	 <!-- IT技能框 (矩形) -->
	 <div id="u1250"  style="top:<%=generalTop%>px;height:<%=di1Height %>px;"  class="ax_default box_1" data-label="高级能力框">
	   <div id="u1250_div" class="">
	
	
	<table bgcolor=""  border="0" width="1200px"  height="100px"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;table-layout:fixed;" >
	<% 
	if(pdi1.size()>0){
		int pageSize=pdi1.size()/3;
		int modSize=pdi1.size()%3;
		int tableLen=0;
		if (modSize>0)
			tableLen=pageSize+1;
		else
			tableLen=pageSize;
		
		for(int t=0;t<tableLen;t++){
			int bigger=0;
			if (t==tableLen-1&&modSize!=0)
				bigger=modSize;
			else
				bigger=3;
		%>
			<tr  height="2px"  ><% 
				for (int th=0;th<bigger;th++){
					%><th align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#000000;" ><%= pdi1.get(t*3+th).getSubSkillName()%></th><% 
				}
				%>
			</tr>
			<tr  height="2px"  ><% 
				for (int th=0;th<bigger;th++){
					%><td align="left"  ><img id="underLine" class="img " src="resource/images/staffinfo/u1226.png"/></td><% 
				}
				%>
			</tr>
		<%
				for (int tr=0;tr<pdi1.get(t*3).getSkillList().size();tr++){
					%>
						<tr>
							<% for (int td=0;td<bigger;td++) {
								if(pdi1.get(t*3+td).getSkillList().size()>tr){
									
									String colours=null;
									if(pdi1.get(t*3+td).getSkillList().get(tr).getMatchResult()==0)
											colours="#434343";
									else if(pdi1.get(t*3+td).getSkillList().get(tr).getMatchResult()>0)
											colours="#00FF00";
									else
											colours="#FF0000";
									
								%><td align="left"   style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:19px;color:<%=colours %>"><%=pdi1.get(t*3+td).getSkillList().get(tr).getSkillName()%>:<%=pdi1.get(t*3+td).getSkillList().get(tr).getSkillLevel()  %></td><%
								}else{
								%><td align="left"   style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:19px"><%=""%></td><%
								}
							}%>
						</tr>
					<%
				}
		}
	}
	%>
	</table> 
        
        
        </div>
        <!-- Unnamed () -->
        <div id="u1251" class="text" style="visibility: visible;">
          <p><span>高级能力</span></p>
        </div>
      </div>
<!-- *****************************************************************结束编辑基础能力框 *********************************************************************************-->	
  
  	<% generalTop=generalTop+di1Height+step;%>
            <!-- Unnamed (水平线) -->
      <div id="long_line" class="ax_default line">
        <img id="line_img"  style="top:<%=generalTop%>px;" class="img " src="resource/images/staffinfo/u1607.png"/>
        <!-- Unnamed () -->
        <div id="nothing" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

<!-- *****************************************************************开始编辑IT技能框 *********************************************************************************-->
<% 
		generalTop=generalTop+step;
		int sk0Height=0;
		if (psk0.size()>0){
			int tLen=0;
			int pgSize=psk0.size()/3;
			int mod=psk0.size()%3;
			if (mod>0)
				tLen=pgSize+1;
			else
				tLen=pgSize;
			sk0Height=(tLen+1)*wordHeight;
			for(int t=0;t<tLen;t++){
				sk0Height=sk0Height+psk0.get(t*3).getSkillList().size()*wordHeight;
			}
		}
%>
          
      <!-- IT技能框 (矩形) -->
      <div id="u1290"  style="top:<%=generalTop%>px;height:<%=sk0Height %>px;"  class="ax_default box_1" data-label="IT技能框">
        <div id="u1290_div" class="">
  
	
	<table bgcolor=""  border="0" width="1200px"  height="100px"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;table-layout:fixed;" >
	<% 
	if(psk0.size()>0){
		int pageSize=psk0.size()/3;
		int modSize=psk0.size()%3;
		int tableLen=0;
		if (modSize>0)
			tableLen=pageSize+1;
		else
			tableLen=pageSize;
		
		for(int t=0;t<tableLen;t++){
			int bigger=0;
			if (t==tableLen-1&&modSize!=0)
				bigger=modSize;
			else
				bigger=3;
		%>
			<tr  height="2px"  ><% 
				for (int th=0;th<bigger;th++){
					%><th align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#000000" ><%= psk0.get(t*3+th).getSubSkillName()%></th><% 
				}
				%>
			</tr>
			<tr  height="2px"  ><% 
				for (int th=0;th<bigger;th++){
					%><td align="left"  ><img id="underLine" class="img " src="resource/images/staffinfo/u1226.png"/></td><% 
				}
				%>
			</tr>
		<%
				for (int tr=0;tr<psk0.get(t*3).getSkillList().size();tr++){
					%>
						<tr>
							<% for (int td=0;td<bigger;td++) {
								if(psk0.get(t*3+td).getSkillList().size()>tr){
									
									String colours=null;
									if(psk0.get(t*3+td).getSkillList().get(tr).getMatchResult()==0)
											colours="#434343";
									else if(psk0.get(t*3+td).getSkillList().get(tr).getMatchResult()>0)
											colours="#00FF00";
									else
											colours="#FF0000";
									
								%><td align="left"  weight=“400px”   style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:19px;color:<%=colours %>"><%=psk0.get(t*3+td).getSkillList().get(tr).getSkillName()%>:<%=psk0.get(t*3+td).getSkillList().get(tr).getSkillLevel()  %></td><%
								}else{
								%><td align="left"  weight=“400px”   style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:19px"><%=""%></td><%
								}
							}%>
						</tr>
					<%
				}
		}
	}
%>
</table>       
        
        
        
        </div>
        <!-- Unnamed () -->
        <div id="u1291" style="top:<%=generalTop%>px;height:<%=sk0Height %>px;" class="text" style="visibility: visible;">
          <p><span>IT技能</span></p>
        </div>
      </div>


 <!-- *****************************************************************结束编辑IT技能框 *********************************************************************************-->     

<% generalTop=generalTop+sk0Height+step;%>
            <!-- Unnamed (水平线) -->
      <div id="long_line" class="ax_default line">
        <img id="line_img"  style="top:<%=generalTop%>px;" class="img " src="resource/images/staffinfo/u1607.png"/>
        <!-- Unnamed () -->
        <div id="nothing" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>
      
      
<!-- *****************************************************************开始编辑系统技能框 *********************************************************************************-->     
<% 
		generalTop=generalTop+step;
		int ab0Height=0;
		if (pab0.size()>0){
			int tLen=0;
			int pgSize=pab0.size()/3;
			int mod=pab0.size()%3;
			if (mod>0)
				tLen=pgSize+1;
			else
				tLen=pgSize;
			ab0Height=(tLen+1)*wordHeight;
			for(int t=0;t<tLen;t++){
				ab0Height=ab0Height+pab0.get(t*3).getSkillList().size()*wordHeight;
			}
		}
		%>
		
		<!-- IT技能框 (矩形) -->
		<div id="u1428"  style="top:<%=generalTop%>px;height:<%=ab0Height %>px;"  class="ax_default box_1" data-label="系统技能框">
		<div id="u1428_div" class="">
		
		
		<table bgcolor=""  border="0" width="1200px"  height="100px"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;table-layout:fixed;" >
		<% 
		if(pab0.size()>0){
		int pageSize=pab0.size()/3;
		int modSize=pab0.size()%3;
		int tableLen=0;
		if (modSize>0)
			tableLen=pageSize+1;
		else
			tableLen=pageSize;
		
		for(int t=0;t<tableLen;t++){
			int bigger=0;
			if (t==tableLen-1&&modSize!=0)
				bigger=modSize;
			else
				bigger=3;
		%>
			<tr  height="2px"  ><% 
				for (int th=0;th<bigger;th++){
					%><th align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#000000" ><%= pab0.get(t*3+th).getSubSkillName()%></th><% 
				}
				%>
			</tr>
			<tr  height="2px"  ><% 
				for (int th=0;th<bigger;th++){
					%><td align="left"  ><img id="underLine" class="img " src="resource/images/staffinfo/u1226.png"/></td><% 
				}
				%>
			</tr>
		<%
				for (int tr=0;tr<pab0.get(t*3).getSkillList().size();tr++){
					%>
						<tr>
							<% for (int td=0;td<bigger;td++) {

								if(pab0.get(t*3+td).getSkillList().size()>tr){
									
									String colours=null;
									if(pab0.get(t*3+td).getSkillList().get(tr).getMatchResult()==0)
											colours="#434343";
									else if(pab0.get(t*3+td).getSkillList().get(tr).getMatchResult()>0)
											colours="#00FF00";
									else
											colours="#FF0000";
									
								%><td align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:19px; color:<%=colours %>"><%=pab0.get(t*3+td).getSkillList().get(tr).getSkillName()%>:<%=pab0.get(t*3+td).getSkillList().get(tr).getSkillLevel()  %></td><%
								}else{
								%><td align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:19px"><%=""%></td><%
								}
							}%>
						</tr>
					<%
				}
		}
		}
		%>
		</table>       
        
        
        </div>
        <!-- Unnamed () -->
        <div id="u1429" class="text" style="visibility: visible;">
          <p><span>系统技能</span></p>
        </div>
      </div>
<!-- *****************************************************************结束编辑系统技能框 *********************************************************************************-->    
<% generalTop=generalTop+ab0Height+step;%>
            <!-- Unnamed (水平线) -->
      <div id="long_line" class="ax_default line">
        <img id="line_img"  style="top:<%=generalTop%>px;" class="img " src="resource/images/staffinfo/u1607.png"/>
        <!-- Unnamed () -->
        <div id="nothing" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

<!-- *****************************************************************开始编辑业务能力框 *********************************************************************************-->   
     <% 
		generalTop=generalTop+step;
    	int ab1Height=0;
		if (pab1.size()>0){
			int tLen=0;
			int pgSize=pab1.size()/3;
			int mod=pab1.size()%3;
			if (mod>0)
				tLen=pgSize+1;
			else
				tLen=pgSize;
			ab1Height=(tLen+1)*wordHeight;
			for(int t=0;t<tLen;t++){
				ab1Height=ab1Height+pab1.get(t*3).getSkillList().size()*wordHeight;
			}
		}
		%>
		
		<!-- IT技能框 (矩形) -->
		<div id="u1472"  style="top:<%=generalTop%>px;height:<%=ab1Height %>px;"  class="ax_default box_1" data-label="业务能力框">
		<div id="u1472_div" class="">
		
		
		<table bgcolor=""  border="0" width="1190px"  height="100px"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;table-layout:fixed;" >
		<% 
		if(pab1.size()>0){
		int pageSize=pab1.size()/3;
		int modSize=pab1.size()%3;
		int tableLen=0;
		if (modSize>0)
			tableLen=pageSize+1;
		else
			tableLen=pageSize;
		
		for(int t=0;t<tableLen;t++){
			int bigger=0;
			if (t==tableLen-1&&modSize!=0)
				bigger=modSize;
			else
				bigger=3;
		%>
			<tr  height="2px"  ><% 
				for (int th=0;th<bigger;th++){
					%><th align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#000000" ><%= pab1.get(t*3+th).getSubSkillName()%></th><% 
				}
				%>
			</tr>
			<tr  height="2px"  ><% 
				for (int th=0;th<bigger;th++){
					%><td align="left"  ><img id="underLine" class="img " src="resource/images/staffinfo/u1226.png"/></td><% 
				}
				%>
			</tr>
		<%
				for (int tr=0;tr<pab1.get(t*3).getSkillList().size();tr++){
					%>
						<tr>
							<% for (int td=0;td<bigger;td++) {
								if(pab1.get(t*3+td).getSkillList().size()>tr){
									
									String colours=null;
									if(pab1.get(t*3+td).getSkillList().get(tr).getMatchResult()==0)
											colours="#434343";
									else if(pab1.get(t*3+td).getSkillList().get(tr).getMatchResult()>0)
											colours="#00FF00";
									else
											colours="#FF0000";
									
								%><td align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:19px; color:<%=colours %>"><%=pab1.get(t*3+td).getSkillList().get(tr).getSkillName()%>:<%=pab1.get(t*3+td).getSkillList().get(tr).getSkillLevel()  %></td><%
								}else{
								%><td align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:19px"><%=""%></td><%
								}
							}%>
						</tr>
					<%
				}
		}
		}
		%>
		</table>  
        </div>
        <!-- Unnamed () -->
        <div id="u1473" class="text" style="visibility: visible;">
          <p><span>业务能力</span></p>
        </div>
      </div>
<!-- *****************************************************************结束编辑业务能力框 *********************************************************************************-->   
<% generalTop=generalTop+ab1Height+step;%>
            <!-- Unnamed (水平线) -->
      <div id="long_line" class="ax_default line">
        <img id="line_img"  style="top:<%=generalTop%>px;" class="img " src="resource/images/staffinfo/u1607.png"/>
        <!-- Unnamed () -->
        <div id="nothing" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>
      
<!-- *****************************************************************开始编辑成长轨迹框 *********************************************************************************-->   
	<%
		  generalTop=generalTop+step; 
		  int PromHisHeight=0;
		  PromHisHeight=(staffdetails.getSkillPromHis().size()+2)* wordHeight;
	 %>
	<!-- 成长轨迹框 (矩形) -->
      <div id="u1536"  style="top:<%=generalTop%>px;height:<%=PromHisHeight %>px;"   class="ax_default box_1" data-label="成长轨迹框">
        <div id="u1536_div" class="">
        	<table bgcolor=""  border="0" width="1100px"  height="100px"  style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;table-layout:fixed;" >
        		<tr height="2px" >
        			<th align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#000000" >升级技能</th>
        			<th align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#000000" >升级前等级</th>
        			<th align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#000000" >升级后等级</th>
        			<th align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:22px;color:#000000" >升级日期</th>
        		</tr>
        		<tr>
        			<td align="left"  ><img id="underLine" class="img " src="resource/images/staffinfo/u1226.png"/></td>
        			<td align="left"  ><img id="underLine" class="img " src="resource/images/staffinfo/u1226.png"/></td>
        			<td align="left"  ><img id="underLine" class="img " src="resource/images/staffinfo/u1226.png"/></td>
        			<td align="left"  ><img id="underLine" class="img " src="resource/images/staffinfo/u1226.png"/></td>
        		</tr>
        	<%
        		for (int i=0;i<staffdetails.getSkillPromHis().size();i++){ 
        	%>
        	<tr>
        			<!--
        		        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd"); 
        		        String ctime = formatter.format(staffdetails.getSkillPromHis().get(i).getStatusDate()); 
        		        System.out.println(ctime);
        			  -->
        			<td align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:19px;color:#434343" ><%=staffdetails.getSkillPromHis().get(i).getSkillName() %></td>
        			<td align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:19px;color:#434343" ><%=staffdetails.getSkillPromHis().get(i).getOrigLevel() %></td>
        			<td align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:19px;color:#434343" ><%=staffdetails.getSkillPromHis().get(i).getTrgtLevel() %></td>
        			<td align="left"    style="font-family:'微软雅黑 Bold', '微软雅黑';font-weight:700;font-size:19px;color:#434343" ><%=staffdetails.getSkillPromHis().get(i).getStatusDateString()%></td>
        	</tr>
        	<%
        		}
        	%>
        	</table>
        </div>
        <!-- Unnamed () -->
        <div id="u1537" class="text" style="visibility: visible;">
          <p><span>成长轨迹</span></p>
        </div>
      </div>


<!-- *****************************************************************结束编辑成长轨迹框 *********************************************************************************-->   

      <!-- 发展计划框 (矩形) 
      <div id="u1559" class="ax_default box_1" data-label="发展计划框">
        <div id="u1559_div" class=""></div>
        <!-- Unnamed () 
        <div id="u1560" class="text" style="visibility: visible;">
          <p><span>发展计划</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) 
      <div id="u1561" class="ax_default _二级标题">
        <div id="u1561_div" class=""></div>
        <!-- Unnamed () 
        <div id="u1562" class="text" style="visibility: visible;">
          <p><span>发展计划</span></p>
        </div>
      </div>

      <!-- Unnamed (水平线) 
      <div id="u1563" class="ax_default line">
        <img id="u1563_img" class="img " src="resource/images/staffinfo/u1226.png"/>
        <!-- Unnamed () 
        <div id="u1564" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (表格) 
      <div id="u1565" class="ax_default">

        <!-- Unnamed (单元格) 
        <div id="u1566" class="ax_default table_cell">
          <img id="u1566_img" class="img " src="resource/images/staffinfo/u1566.png"/>
          <!-- Unnamed () 
          <div id="u1567" class="text" style="visibility: visible;">
            <p><span>发展计划</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1568" class="ax_default table_cell">
          <img id="u1568_img" class="img " src="resource/images/staffinfo/u1568.png"/>
          <!-- Unnamed () 
          <div id="u1569" class="text" style="visibility: visible;">
            <p><span>计划提出时间</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1570" class="ax_default table_cell">
          <img id="u1570_img" class="img " src="resource/images/staffinfo/u1570.png"/>
          <!-- Unnamed () 
          <div id="u1571" class="text" style="visibility: visible;">
            <p><span>计划提出人</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1572" class="ax_default table_cell">
          <img id="u1572_img" class="img " src="resource/images/staffinfo/u1566.png"/>
          <!-- Unnamed () 
          <div id="u1573" class="text" style="visibility: visible;">
            <p><span>学习CRM集团业务,接手CRM集团工作</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1574" class="ax_default table_cell">
          <img id="u1574_img" class="img " src="resource/images/staffinfo/u1568.png"/>
          <!-- Unnamed () 
          <div id="u1575" class="text" style="visibility: visible;">
            <p><span>2017-07-28</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1576" class="ax_default table_cell">
          <img id="u1576_img" class="img " src="resource/images/staffinfo/u1570.png"/>
          <!-- Unnamed () 
          <div id="u1577" class="text" style="visibility: visible;">
            <p><span>玉麒麟</span></p>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) 
      <div id="u1578" class="ax_default _二级标题">
        <div id="u1578_div" class=""></div>
        <!-- Unnamed () 
        <div id="u1579" class="text" style="visibility: visible;">
          <p><span>职位匹配</span></p>
        </div>
      </div>

      <!-- Unnamed (水平线) 
      <div id="u1580" class="ax_default line">
        <img id="u1580_img" class="img " src="resource/images/staffinfo/u1226.png"/>
        <!-- Unnamed () 
        <div id="u1581" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (表格) 
      <div id="u1582" class="ax_default">

        <!-- Unnamed (单元格) 
        <div id="u1583" class="ax_default table_cell">
          <img id="u1583_img" class="img " src="resource/images/staffinfo/u1583.png"/>
          <!-- Unnamed () 
          <div id="u1584" class="text" style="visibility: visible;">
            <p><span>当前部门</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1585" class="ax_default table_cell">
          <img id="u1585_img" class="img " src="resource/images/staffinfo/u1583.png"/>
          <!-- Unnamed () 
          <div id="u1586" class="text" style="visibility: visible;">
            <p><span>当前职能</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1587" class="ax_default table_cell">
          <img id="u1587_img" class="img " src="resource/images/staffinfo/u1587.png"/>
          <!-- Unnamed () 
          <div id="u1588" class="text" style="visibility: visible;">
            <p><span>当前职位匹配得分</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1589" class="ax_default table_cell">
          <img id="u1589_img" class="img " src="resource/images/staffinfo/u1583.png"/>
          <!-- Unnamed () 
          <div id="u1590" class="text" style="visibility: visible;">
            <p><span>集团业务</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1591" class="ax_default table_cell">
          <img id="u1591_img" class="img " src="resource/images/staffinfo/u1583.png"/>
          <!-- Unnamed () 
          <div id="u1592" class="text" style="visibility: visible;">
            <p><span>软件开发</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1593" class="ax_default table_cell">
          <img id="u1593_img" class="img " src="resource/images/staffinfo/u1587.png"/>
          <!-- Unnamed () 
          <div id="u1594" class="text" style="visibility: visible;">
            <p><span>-27</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1595" class="ax_default table_cell">
          <img id="u1595_img" class="img " src="resource/images/staffinfo/u1583.png"/>
          <!-- Unnamed () 
          <div id="u1596" class="text" style="visibility: visible;">
            <p><span>推荐部门</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1597" class="ax_default table_cell">
          <img id="u1597_img" class="img " src="resource/images/staffinfo/u1583.png"/>
          <!-- Unnamed () 
          <div id="u1598" class="text" style="visibility: visible;">
            <p><span>推荐职位</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1599" class="ax_default table_cell">
          <img id="u1599_img" class="img " src="resource/images/staffinfo/u1587.png"/>
          <!-- Unnamed () 
          <div id="u1600" class="text" style="visibility: visible;">
            <p><span>推荐职位匹配得分</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1601" class="ax_default table_cell">
          <img id="u1601_img" class="img " src="resource/images/staffinfo/u1583.png"/>
          <!-- Unnamed () 
          <div id="u1602" class="text" style="visibility: visible;">
            <p><span>计费</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1603" class="ax_default table_cell">
          <img id="u1603_img" class="img " src="resource/images/staffinfo/u1583.png"/>
          <!-- Unnamed () 
          <div id="u1604" class="text" style="visibility: visible;">
            <p><span>软件开发</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) 
        <div id="u1605" class="ax_default table_cell">
          <img id="u1605_img" class="img " src="resource/images/staffinfo/u1587.png"/>
          <!-- Unnamed () 
          <div id="u1606" class="text" style="visibility: visible;">
            <p><span>0</span></p>
          </div>
        </div>
      </div>
      
      
      
       <!-- 说明动态框 (矩形) -->
      <div id="u1348" class="ax_default box_1" data-label="说明动态框">
        <div id="u1348_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u1349" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
          <p><span>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 说明</span></p><p><span></span><span style="color:#434343;">灰色字体：能力分值与岗位要求一致</span></p><p><span style="color:#434343;"></span><span style="color:#00FF00;">绿色字体：能力分值高于岗位要求</span></p><p><span style="color:#00FF00;"></span><span style="color:#FF0000;">红色字体：能力分值低于岗位要求</span></p>
        </div>
      </div>
      
      
	<!--  

      <div id="u1607" class="ax_default line">
        <img id="u1607_img" class="img " src="resource/images/staffinfo/u1607.png"/>

        <div id="u1608" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>


      <div id="u1609" class="ax_default line">
        <img id="u1609_img" class="img " src="resource/images/staffinfo/u1607.png"/>

        <div id="u1610" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>


      <div id="u1611" class="ax_default line">
        <img id="u1611_img" class="img " src="resource/images/staffinfo/u1607.png"/>

        <div id="u1612" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>


      <div id="u1613" class="ax_default line">
        <img id="u1613_img" class="img " src="resource/images/staffinfo/u1607.png"/>

        <div id="u1614" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>


      <div id="u1615" class="ax_default line">
        <img id="u1615_img" class="img " src="resource/images/staffinfo/u1607.png"/>

        <div id="u1616" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>


      <div id="u1617" class="ax_default line">
        <img id="u1617_img" class="img " src="resource/images/staffinfo/u1607.png"/>

        <div id="u1618" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>


      <div id="u1619" class="ax_default line">
        <img id="u1619_img" class="img " src="resource/images/staffinfo/u1607.png"/>

        <div id="u1620" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>


      <div id="u1621" class="ax_default line">
        <img id="u1621_img" class="img " src="resource/images/staffinfo/u1607.png"/>

        <div id="u1622" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>
	  -->
      <!-- 固定菜单 (动态面板) -->
      <div id="u1623" class="ax_default ax_default_hidden"    style="display: none; visibility: hidden;font-family:'微软雅黑 Bold', '微软雅黑';"   data-label="固定菜单" >
        <div id="u1623_state0" class="panel_state" data-label="State1">
          <div id="u1623_state0_content" class="panel_state_content">

            <!-- 显性菜单 (组合) -->
            <div id="u1624" class="ax_default" data-label="显性菜单">

              <!-- 基本信息标签 (矩形) -->
              <div id="u1625" class="ax_default box_1" data-label="基本信息标签">
                <div id="u1625_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u1626" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';;color:#000000">
                  <p><span>&nbsp;&nbsp;&nbsp;基本信息</span></p>
                </div>
              </div>

              <!-- 基础能力标签 (矩形) -->
              <div id="u1627" class="ax_default box_1" data-label="基础能力标签">
                <div id="u1627_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u1628" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
                  <p><span>&nbsp;&nbsp;&nbsp;基础能力</span></p>
                </div>
              </div>

              <!-- 高级能力标签 (矩形) -->
              <div id="u1629" class="ax_default box_1" data-label="高级能力标签">
                <div id="u1629_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u1630" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
                  <p><span>&nbsp;&nbsp;&nbsp;高级能力</span></p>
                </div>
              </div>

              <!-- IT技能标签 (矩形) -->
              <div id="u1631" class="ax_default box_1" data-label="IT技能标签">
                <div id="u1631_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u1632" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
                  <p><span>&nbsp;&nbsp;&nbsp; IT技能</span></p>
                </div>
              </div>

              <!-- 系统技能标签 (矩形) -->
              <div id="u1633" class="ax_default box_1" data-label="系统技能标签">
                <div id="u1633_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u1634" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
                  <p><span>&nbsp;&nbsp;&nbsp;系统技能</span></p>
                </div>
              </div>

              <!-- 业务能力标签 (矩形) -->
              <div id="u1635" class="ax_default box_1" data-label="业务能力标签">
                <div id="u1635_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u1636" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
                  <p><span>&nbsp;&nbsp;&nbsp;业务能力</span></p>
                </div>
              </div>

              <!-- 成长轨迹标签 (矩形) -->
              <div id="u1637" class="ax_default box_1" data-label="成长轨迹标签">
                <div id="u1637_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u1638" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
                  <p><span>&nbsp;&nbsp;&nbsp; 成长轨迹</span></p>
                </div>
              </div>

              <!-- 发展计划标签 (矩形) -->
              <div id="u1639" class="ax_default box_1" data-label="发展计划标签">
                <div id="u1639_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u1640" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
                  <p><span>&nbsp;&nbsp;&nbsp;发展计划</span></p>
                </div>
              </div>

              <!-- 职位匹配标签 (矩形) -->
              <div id="u1641" class="ax_default box_1" data-label="职位匹配标签">
                <div id="u1641_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u1642" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
                  <p><span>&nbsp;&nbsp;&nbsp;职位匹配</span></p>
                </div>
              </div>

              <!-- Unnamed (形状) -->
              <div id="u1643" class="ax_default icon">
                <img id="u1643_img" class="img " src="resource/images/staffinfo/u1157.png"/>
                <!-- Unnamed () -->
                <div id="u1644" class="text" style="display: none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (形状) -->
              <div id="u1645" class="ax_default icon">
                <img id="u1645_img" class="img " src="resource/images/staffinfo/u1159.png"/>
                <!-- Unnamed () -->
                <div id="u1646" class="text" style="display: none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (形状) -->
              <div id="u1647" class="ax_default icon">
                <img id="u1647_img" class="img " src="resource/images/staffinfo/u1161.png"/>
                <!-- Unnamed () -->
                <div id="u1648" class="text" style="display: none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (形状) -->
              <div id="u1649" class="ax_default icon">
                <img id="u1649_img" class="img " src="resource/images/staffinfo/u1163.png"/>
                <!-- Unnamed () -->
                <div id="u1650" class="text" style="display: none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (形状) -->
              <div id="u1651" class="ax_default icon">
                <img id="u1651_img" class="img " src="resource/images/staffinfo/u1165.png"/>
                <!-- Unnamed () -->
                <div id="u1652" class="text" style="display: none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (形状) -->
              <div id="u1653" class="ax_default icon">
                <img id="u1653_img" class="img " src="resource/images/staffinfo/u1167.png"/>
                <!-- Unnamed () -->
                <div id="u1654" class="text" style="display: none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (形状) -->
              <div id="u1655" class="ax_default icon">
                <img id="u1655_img" class="img " src="resource/images/staffinfo/u1169.png"/>
                <!-- Unnamed () -->
                <div id="u1656" class="text" style="display: none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (形状) -->
              <div id="u1657" class="ax_default icon">
                <img id="u1657_img" class="img " src="resource/images/staffinfo/u1171.png"/>
                <!-- Unnamed () -->
                <div id="u1658" class="text" style="display: none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (形状) -->
              <div id="u1659" class="ax_default icon">
                <img id="u1659_img" class="img " src="resource/images/staffinfo/u1173.png"/>
                <!-- Unnamed () -->
                <div id="u1660" class="text" style="display: none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>

            <!-- 基本信息点 (椭圆形) -->
            <div id="u1661" class="ax_default ellipse ax_default_hidden" data-label="基本信息点" style="display: none; visibility: hidden">
              <img id="u1661_img" class="img " src="resource/images/staffinfo/u1178.png"/>
              <!-- Unnamed () -->
              <div id="u1662" class="text" style="display: none; visibility: hidden">
                <p><span></span></p>
              </div>
            </div>

            <!-- 基础能力点 (椭圆形) -->
            <div id="u1663" class="ax_default ellipse ax_default_hidden" data-label="基础能力点" style="display: none; visibility: hidden">
              <img id="u1663_img" class="img " src="resource/images/staffinfo/u1178.png"/>
              <!-- Unnamed () -->
              <div id="u1664" class="text" style="display: none; visibility: hidden">
                <p><span></span></p>
              </div>
            </div>

            <!-- 高级能力点 (椭圆形) -->
            <div id="u1665" class="ax_default ellipse ax_default_hidden" data-label="高级能力点" style="display: none; visibility: hidden">
              <img id="u1665_img" class="img " src="resource/images/staffinfo/u1178.png"/>
              <!-- Unnamed () -->
              <div id="u1666" class="text" style="display: none; visibility: hidden">
                <p><span></span></p>
              </div>
            </div>

            <!-- IT技能点 (椭圆形) -->
            <div id="u1667" class="ax_default ellipse ax_default_hidden" data-label="IT技能点" style="display: none; visibility: hidden">
              <img id="u1667_img" class="img " src="resource/images/staffinfo/u1178.png"/>
              <!-- Unnamed () -->
              <div id="u1668" class="text" style="display: none; visibility: hidden">
                <p><span></span></p>
              </div>
            </div>

            <!-- 系统技能点 (椭圆形) -->
            <div id="u1669" class="ax_default ellipse ax_default_hidden" data-label="系统技能点" style="display: none; visibility: hidden">
              <img id="u1669_img" class="img " src="resource/images/staffinfo/u1178.png"/>
              <!-- Unnamed () -->
              <div id="u1670" class="text" style="display: none; visibility: hidden">
                <p><span></span></p>
              </div>
            </div>

            <!-- 业务能力点 (椭圆形) -->
            <div id="u1671" class="ax_default ellipse ax_default_hidden" data-label="业务能力点" style="display: none; visibility: hidden">
              <img id="u1671_img" class="img " src="resource/images/staffinfo/u1178.png"/>
              <!-- Unnamed () -->
              <div id="u1672" class="text" style="display: none; visibility: hidden">
                <p><span></span></p>
              </div>
            </div>

            <!-- 成长轨迹点 (椭圆形) -->
            <div id="u1673" class="ax_default ellipse ax_default_hidden" data-label="成长轨迹点" style="display: none; visibility: hidden">
              <img id="u1673_img" class="img " src="resource/images/staffinfo/u1178.png"/>
              <!-- Unnamed () -->
              <div id="u1674" class="text" style="display: none; visibility: hidden">
                <p><span></span></p>
              </div>
            </div>

            <!-- 发展计划点 (椭圆形) -->
            <div id="u1675" class="ax_default ellipse ax_default_hidden" data-label="发展计划点" style="display: none; visibility: hidden">
              <img id="u1675_img" class="img " src="resource/images/staffinfo/u1178.png"/>
              <!-- Unnamed () -->
              <div id="u1676" class="text" style="display: none; visibility: hidden">
                <p><span></span></p>
              </div>
            </div>

            <!-- 职位匹配点 (椭圆形) -->
            <div id="u1677" class="ax_default ellipse ax_default_hidden" data-label="职位匹配点" style="display: none; visibility: hidden">
              <img id="u1677_img" class="img " src="resource/images/staffinfo/u1178.png"/>
              <!-- Unnamed () -->
              <div id="u1678" class="text" style="display: none; visibility: hidden">
                <p><span></span></p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- 说明固定框 (动态面板) -->
      <div id="u1679" class="ax_default ax_default_hidden" data-label="说明固定框" style="display: none; visibility: hidden">
        <div id="u1679_state0" class="panel_state" data-label="State1">
          <div id="u1679_state0_content" class="panel_state_content">

            <!-- Unnamed (矩形) -->
            <div id="u1680" class="ax_default box_1">
              <div id="u1680_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u1681" class="text" style="visibility: visible;font-family:'微软雅黑 Bold', '微软雅黑';color:#000000">
                <p><span>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 说明</span></p><p><span></span><span style="color:#434343;">灰色字体：能力分值与岗位要求一致</span></p><p><span style="color:434343;"></span><span style="color:#00FF00;">绿色字体：能力分值高于岗位要求</span></p><p><span style="color:#00FF00;"></span><span style="color:#FF0000;">红色字体：能力分值低于岗位要求</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- 新增基础能力 (组合) 
      <div id="u1682" class="ax_default" data-label="新增基础能力">

        <!-- Unnamed (矩形) 
        <div id="u1683" class="ax_default box_1">
          <div id="u1683_div" class=""></div>
          <!-- Unnamed () 
          <div id="u1684" class="text" style="visibility: visible;">
            <p><span>&nbsp; 新增</span></p>
          </div>
        </div>

        <!-- Unnamed (形状) 
        <div id="u1685" class="ax_default icon">
          <img id="u1685_img" class="img " src="resource/images/staffinfo/u1685.png"/>
          <!-- Unnamed () 
          <div id="u1686" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>
      </div>

      <!-- 新增高级能力 (组合) 
      <div id="u1687" class="ax_default" data-label="新增高级能力">

        <!-- Unnamed (矩形) 
        <div id="u1688" class="ax_default box_1">
          <div id="u1688_div" class=""></div>
          <!-- Unnamed () 
          <div id="u1689" class="text" style="visibility: visible;">
            <p><span>&nbsp; 新增</span></p>
          </div>
        </div>
        <!-- Unnamed (形状) 
        <div id="u1690" class="ax_default icon">
          <img id="u1690_img" class="img " src="resource/images/staffinfo/u1685.png"/>
          <!-- Unnamed () 
          <div id="u1691" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>
      </div>

      <!-- 新增IT技能 (组合)
      <div id="u1692" class="ax_default" data-label="新增IT技能">

        <!-- Unnamed (矩形) 
        <div id="u1693" class="ax_default box_1">
          <div id="u1693_div" class=""></div>
          <!-- Unnamed () 
          <div id="u1694" class="text" style="visibility: visible;">
            <p><span>&nbsp; 新增</span></p>
          </div>
        </div>

        <!-- Unnamed (形状) 
        <div id="u1695" class="ax_default icon">
          <img id="u1695_img" class="img " src="resource/images/staffinfo/u1685.png"/>
          <!-- Unnamed () 
          <div id="u1696" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>
      </div>

      <!-- 新增系统技能 (组合)
      <div id="u1697" class="ax_default" data-label="新增系统技能">

        <!-- Unnamed (矩形) 
        <div id="u1698" class="ax_default box_1">
          <div id="u1698_div" class=""></div>
          <!-- Unnamed () 
          <div id="u1699" class="text" style="visibility: visible;">
            <p><span>&nbsp; 新增</span></p>
          </div>
        </div>

        <!-- Unnamed (形状)
        <div id="u1700" class="ax_default icon">
          <img id="u1700_img" class="img " src="resource/images/staffinfo/u1685.png"/>
          <!-- Unnamed ()
          <div id="u1701" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>
      </div>

      <!-- 新增业务技能 (组合) 
      <div id="u1702" class="ax_default" data-label="新增业务技能">

        <!-- Unnamed (矩形) 
        <div id="u1703" class="ax_default box_1">
          <div id="u1703_div" class=""></div>
          <!-- Unnamed () 
          <div id="u1704" class="text" style="visibility: visible;">
            <p><span>&nbsp; 新增</span></p>
          </div>
        </div>

        <!-- Unnamed (形状)
        <div id="u1705" class="ax_default icon">
          <img id="u1705_img" class="img " src="resource/images/staffinfo/u1685.png"/>
          <!-- Unnamed () 
          <div id="u1706" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>
      </div>
     -->

    

  </body>
</html>
