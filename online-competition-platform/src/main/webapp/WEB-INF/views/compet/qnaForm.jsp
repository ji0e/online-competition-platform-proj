<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link href="${contextPath}/resources/plugins/tables/css/datatable/dataTables.bootstrap4.min.css" rel="stylesheet" />
<link href="${contextPath}/resources/css/style.css" rel="stylesheet" />
<c:set var="compet_id" value="${competInfo.compet_id[0].compet_id}" />
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
  function backToList(obj){
    obj.action="${contextPath}/compet/qna.do";
    obj.submit();
  }
  
  
</script>
<body>
<h1 style="text-align:center; font-weight: bold;">문의 게시판</h1>
    <div class=qna_box style="width: 100%;  padding: 0%; ">
        <form 
          name="articleForm" 
          method="post"   
          action="${contextPath}/compet/addNewArticle.do"  
          enctype="multipart/form-data"
          action="#" 
          style="width: 50%; position: relative; left: 23%; margin: 40px;"
          
          >

            <div class="form-group" >
                <input type="text" class="form-control bg-transparent" name="mem_id" value="20210907" readonly placeholder=" 작성자">
            </div>
            <div class="form-group" >
                <input type="text" class="form-control bg-transparent" name="title" placeholder=" 글제목">
            </div>
            <div class="form-group">
                <textarea class="textarea_editor form-control bg-light" rows="15" name="content" placeholder="글내용"></textarea>
            </div>
            <button type="submit" class="btn btn-outline-secondary">글쓰기</button>
            <button type="button" class="btn btn-outline-secondary" onClick="backToList(this.form)">목록보기</button>
        </form>
        
    </div> 
</body>
</html>