﻿<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../baselist.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>

<body>
<form name="icform" method="post">

    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>
                        <li id="view"><a href="#"
                                         onclick="formSubmit('teachertoview.action','_self');this.blur();">查看</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="textbox-header">
        <div class="textbox-inner-header">

            <div class="textbox-title">
                请输入教师名<input type="text" name="namelikes" id="namelikes">
                <a href="#" onclick="formSubmit('list.action?state=3','_self');">查询</a>
            </div>
        </div>
    </div>


    <div class="textbox" id="centerTextbox">
        <div class="textbox-header">
            <div class="textbox-inner-header">
                <div class="textbox-title">教师列表</div>
            </div>
        </div>

        <div>

            <div class="eXtremeTable">
                <table id="ec_table" class="tableRegion" width="98%">
                    <thead>
                    <tr>
                        <td class="tableHeader">
                        </td>
                        <td class="tableHeader">序号</td>
                        <td class="tableHeader">姓名</td>
                        <td class="tableHeader">性别</td>

                        <td class="tableHeader">区域</td>

                        <td class="tableHeader">电话</td>
                        <td class="tableHeader">邮箱</td>
                        <td class="tableHeader">微信</td>

                        <td class="tableHeader">地址</td>
                        <td class="tableHeader">爱好</td>

                        <td class="tableHeader">课程账户</td>
                        <td class="tableHeader">现金账户</td>

                        <td class="tableHeader">操作</td>

                    </tr>
                    </thead>
                    <tbody class="tableBody">

                    <c:forEach items="${dataList}" var="o" varStatus="status">

                        <c:if test="${o.state!=0&&o.state!=1}">
                            <tr class="odd" onmouseover="this.className='highlight'"
                                onmouseout="this.className='odd'">
                                <td><input type="checkbox" name="id"
                                           value="${o.userOpenid}"/>
                                </td>
                                <td>${status.index+1}</td>
                                <td>${o.userName}</td>

                                <td><c:if test="${o.sex==1}">
                                    女
                                </c:if> <c:if test="${o.sex==0}">男
                                </c:if></td>

                                <td>${o.areaName}</td>
                                <td>${o.phoneNumber}</td>
                                <td>${o.email}</td>
                                <td>${o.weiXin}</td>
                                <td>${o.adress}</td>
                                <td>${o.likes}</td>

                                <td>${o.availableAssets}</td>
                                <td>${o.xianjin}</td>
                                <td>

                                    <c:if test="${o.state==2}">待总部审核<a href="shenhe.action?id=${o.userOpenid}&state=3"><font color="green">总部审核通过</font></a>
                                    </c:if>
                                    <c:if test="${o.state==3}">总部审核通过
                                        <a href="toaddCourse.action?teacherId=${o.id}"><font
                                                color="green">[添加课程]</font></a>
                                    </c:if></td>


                            </tr>
                        </c:if>
                    </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

</form>
</body>
</html>

