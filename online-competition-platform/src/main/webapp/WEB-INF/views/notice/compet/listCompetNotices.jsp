<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%-- <c:set var="compet_id" value="${competInfo.compet_id[0].compet_id}" /> --%>
<c:set var="competSmallFileType" value="${competPoster.competSmallPoster[0].compet_file_type}" />
<c:set var="competSmallFileName" value="${competPoster.competSmallPoster[0].compet_file_name}" />
<%
request.setCharacterEncoding("UTF-8");
%>

<style>
    h3,
    h4 {
        font-weight: bold;
    }

    .categ {
        font-size: 30px;
        font-weight: bold;
        color: black;
    }

    .competName {
        font-size: 20px;
        font-weight: bold;
        color: black;
        text-align: center;
    }

    .competEdit {
        background: orange;
        height: 35px;
    }

    .categ_btn {}

    .container-fluid {}

    .endCompet {
        color: black;
        font-weight: bold;
    }

</style>

<compet-detail>
							<div class="row">
								<div class="col-sm-12">
								<div class="card-body">
								<h4 class="card-title">공지사항</h4>
									<table class="table table-striped table-bordered zero-configuration">
										<thead>
											<tr role="row">
												<th class="No">No.</th>
												<th class="categ_name">제목</th>
												<th class="compet_name" style="width: 105.656px;">작성자</th>
												<th class="compet_start" style="width: 95.7188px;">작성일</th>
												<th class="compet_end sorting"style="width: 79.8906px;">조회수</th>

											</tr>
										</thead>
										<tbody>

											<c:if test="${noticeCompetList !=null }">
												<c:forEach var="compet_Notice" items="${noticeCompetList}" varStatus="noticeNum">
													<tr align="center">
														<td width="5%">${compet_Notice.compet_notice_id}</td>
														<td width="25%">${compet_Notice.compet_notice_title }</td>
														<td width="5%">${compet_Notice.admin_id}</td>
														<td width="5%">${compet_Notice.compet_notice_date}</td>
														<td width="5%">${compet_Notice.compet_notice_view}</td>
													</tr>
												</c:forEach>
											</c:if>

										</tbody>
									</table>
								</div>
							</div>
							</div>
							<div class="row">
								<div class="col-sm-12 col-md-5">
									<div class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">Showing 1 to 10 of 57
										entries</div>
								</div>
								
							</div>
</compet-detail>
