<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
<form method="post">

    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>
                        <li id="back"><a href="list.action">返回</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="textbox" id="centerTextbox">

        <div class="textbox-header">
            <div class="textbox-inner-header">
                <div class="textbox-title">浏览角色信息</div>
            </div>
        </div>
        <div>
            <div>
                <table>
                    <tr>
                        <td class="columnTitle">角色名称：</td>
                        <td class="tableContent">${obj.roleName}</td>
                        <td class="columnTitle">状态：</td>
                        <td class="tableContent"><c:if test="${obj.roleState==1}">
                            <font color="green">已启用</font>
                        </c:if> <c:if test="${obj.roleState==0}">
                            <font color="red">已停用</font>
                        </c:if>
                        </td>
                    </tr>
                    <tr>
                        <td class="columnTitle">备注：</td>
                        <td class="tableContent">
                            <pre>${obj.roleRemark}</pre>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</form>
</body>
</html>

