<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${task != null}"><!--条件分岐をして、行ける場合とそうじゃない場合を実現するということ  -->
                <h2>id : ${task.id} のメモページ</h2>
                <table>
                    <tbody>
                        <tr>
                            <th>todo</th>
                            <td><c:out value="${task.title}" /></td>
                        </tr>
                        <tr>
                            <th>タスク</th>
                            <td><c:out value="${task.content}" /></td>
                        </tr>
                        <tr>
                            <th>作成日時</th>
                            <td><fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td><!-- パターンで鋳型を作るということをしている -->
                        </tr>
                        <tr>
                            <th>更新日時</th>
                            <td><fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                    </tbody>
                </table>
                <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
                <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">このタスクを編集する</a></p>
            </c:when>
            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした。</h2><!-- nullの分岐になったらこっちになるということ -->
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>