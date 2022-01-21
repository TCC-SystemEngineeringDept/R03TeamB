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
    <link href="css/Administrator.css" rel="stylesheet" type="text/css">
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
		
        <a href="" class="btn btn--white">依頼管理画面</a><!-- 依頼管理画面へ遷移させる -->
		
			
        <h2 class="text-center border-bottom border-dark">管理者画面</h2>
            
        </div>
        <div>   
            <table class="table table-bordered ">
                <tbody>
                    <tr>
                        <th>
                        	アカウントID
                        </th>
                        <th>
                            アカウント名
                        </th>
                        <th>
                            メールアドレス
                        </th>
                      </tr>                    
                    <%	for (String[] s : list) { %> 
				
					<tr>
	          			<td>
                            <%=s[0] %><!-- ここにアカウントIDを取得して表示させる -->
                        </td>
                        <td>
                            <%=s[1] %><!-- ここにアカウント名を取得して表示させる -->
                        <td>
                            <%=s[2] %><!-- ここにメールドレスを取得して表示させる -->
                        </td> 
                     </tr>
                        
                <%
				}
				%> 
            </table>
        </div> 
        
            	<div class="btn2">
            	
            		<form action="AccountAdd" method="get" > 
                		<button type="submit" value="account_name"class="btn btn--blue">新規作成<!-- アカウント追加画面へ遷移させる--></button>
                	</form>
                
                	<form action="AccountFix" method="get" >                 	
                		<button type="submit" formaction="AccountFix" class="btn btn--red">修正<!-- アカウント修正画面へ遷移させる--></button>
                	</form>
                
                </div>
                    

</body>
</html>