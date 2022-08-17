package net.koreate.greatescape.board.dao;

import org.apache.ibatis.annotations.SelectProvider;

import net.koreate.greatescape.utils.SearchCriteria;

public interface BoardDAO {

	//게시글개수
	@SelectProvider(type=BoardQueryProvider.class, method="")
	int getCount(SearchCriteria cri)throws Exception;
	
	/****************************** FAQ ************************************/
	
	//글 목록-동적쿼리
	void getFAQList() throws Exception;
	
	//글 쓰기
	
	//글 수정
	
	//글 삭제
	
	
	/****************************** QNA ************************************/
	
	//글 목록

	//글 쓰기
	
	//글 수정
	
	//글 삭제
	
	/***************************** Notice **********************************/
	
	//글 목록
	
	//글 쓰기
	
	//글 수정
	
	//글 삭제
		
}
