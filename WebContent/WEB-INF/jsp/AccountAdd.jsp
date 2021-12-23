<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Optional"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link href="../css/AccountAdd.css" rel="stylesheet" type="text/css">
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
		
        <a href="" class="btn btn--white">管理者画面</a><!-- 管理者画面へ遷移させる -->
		
			
        <h2 class="text-center border-bottom border-dark">アカウント追加画面</h2>
            
        </div>
        <form action="/AccountAdd2" method="post">
        <div>   
            <table class="table table-bordered ">
                <tbody>
                    <tr>
                        <th class="midashi">
                            アカウント名
                        </th>
                        <td>
                            <input type="text" size="50" name="account_name" value="account_name"><!--アカウント名を入力するテキストボックス-->
                        </td>
                        
                      </tr>                    
                      <tr>
                        <th class="midashi">
                            メールアドレス
                        </th>
                        <td>
                            <input type="text" size="50" name="email" value="email"><!--メールアドレスを入力するテキストボックス-->
                        </td>
                        
                      </tr>
                      <tr>
                        <th class="midashi">
                            管理者
                        </th>
                        <td>
                        	<input type="hidden" name="flg" value="0">
                            <input type="checkbox" class="big2" name="flg" value="1">
                        </td>
                        
                      </tr>
                        
                
            </table>
        </div>                         
                    <h3 style="text-align: center;">  
                        <a href="" class="btn btn--blue">新規作成<!-- アカウント追加画面へ遷移させる--></a>
                    </h3>
                    
                </tbody>
            
		</form>

</body>
</html>