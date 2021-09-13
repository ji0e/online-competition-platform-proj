package com.tstecon.ocp.compet.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;

import com.tstecon.ocp.compet.vo.CompetQnaVO;
import com.tstecon.ocp.compet.vo.CompetVO;

public class CompetDAOImpl implements CompetDAO{

	@Autowired
	private SqlSession sqlSession;
	
//	대회안내 포스터
	@Override
	public List<CompetVO> selectCompetPoster(String compet_id) throws DataAccessException {
		List<CompetVO> competList = (ArrayList)sqlSession.selectList("mapper.compet.selectCompetPoster",compet_id);
		return competList;
	}
//	대회안내 내용
	@Override
	public List<CompetVO> selectCompetInfo(String compet_id) throws DataAccessException {
		List<CompetVO> competList = (ArrayList)sqlSession.selectOne("mapper.compet.selectCompetInfo",compet_id);
		return null;
	}
//문의 게시판 내용	
	@Override
	public List selectAllQnaList() throws DataAccessException {
		List<CompetQnaVO> qnaList = sqlSession.selectList("mapper.compet.selectAllQnaList");
		return qnaList;
	}
	
	

}
