<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Optional"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link href="css/AccountFix.css" rel="stylesheet" type="text/css">
    
<title>管理者画面</title>
</head>
<%
Optional<List<String[]>> optList = Optional.ofNullable((List<String[]>) request.getAttribute("list"));
List<String[]> list = new ArrayList<>();
if (optList.isPresent()) {
	list = optList.get();
}
%>
	
<body>
<div class="container mt-5 pt-5">
    <div class="title">
		
        <a href="" class="btn btn--white">管理者画面</a><!-- 依頼管理画面へ遷移させる -->
		
			
        <h2 class="text-center border-bottom border-dark">アカウント修正画面</h2>
            
        </div>
        <form action="" method="get">
        <div>   
            <table class="table table-bordered ">
                <tbody>
                    <tr>
                        <th>
                            アカウント名
                        </th>
                        <th>
                            メールアドレス
                        </th>
                        <th class="center">
                            管理者
                        </th>
                        <th class="center">
                            削除
                        </th>
                      </tr>                    
                    <%	for (String[] s : list) { %> 
						
					<tr>
	          			<td>
                            <span><%=s[0] %><!-- ここにアカウント名を取得して表示させる --></span>
                        </td>
                        <td>
                            <span><%=s[1] %><!-- ここにメールドレスを取得して表示させる --></span>
                        </td>
                        
                
                        <% if (s[2] == "1" ){ %>
                          	<td class="big">
                            	<input type="checkbox">
                        	</td>
                        <% } else { %>
                        	<td class="big">             
                            	<input type="checkbox" checked>                        	
                        	</td>
                        <% } %>
                        
                        <td class="center">
                        	<a href="" class="btn btn--white">削除<!-- 修正画面へ遷移させる --></a>
                        </td> 
                     </tr>                 
                <%
				}
				%> 
            </table>
        </div> 
             <h3 style="text-align: center;">  
                <a href="" class="btn btn--blue">変更内容を保存<!-- 管理者画面へ遷移させる--></a>
        </h3>                    
            </tbody>            
		</form>
	</div>
	</body>
</html>