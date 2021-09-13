package com.tstecon.ocp.compet.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;

import com.tstecon.ocp.compet.dao.CompetDAO;
import com.tstecon.ocp.compet.vo.CompetQnaVO;
import com.tstecon.ocp.compet.vo.CompetVO;

public class CompetServiceImpl implements CompetService{
	@Autowired
	private CompetDAO competDAO;

//	대회안내
	@Override
	public Map<String, List<CompetVO>> CompetInfo(String compet_id) throws DataAccessException {
		Map<String,List<CompetVO>> CompetMap=new HashMap<String,List<CompetVO>>();
		List<CompetVO> competList=competDAO.selectCompetPoster("poster");
		CompetMap.put("Poster",competList);
		competList=competDAO.selectCompetInfo("info");
		CompetMap.put("info",competList);

		return CompetMap;
	}
//문의 게시판
	@Override
	public List<CompetQnaVO> qnalistArticles() throws Exception {
		List<CompetQnaVO> qnaList = competDAO.selectAllQnaList();
		return qnaList;
	}

}
