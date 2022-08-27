package net.koreate.greatescape.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;

import net.koreate.greatescape.board.vo.FAQBoardVO;
import net.koreate.greatescape.board.vo.NoticeBoardVO;
import net.koreate.greatescape.utils.SearchCriteria;

public interface BoardDAO {

	//게시글개수
	@SelectProvider(type=BoardQueryProvider.class, method="searchSelectCount")
	int getCount(SearchCriteria cri)throws Exception;
	
	
	@Select("SELECT count(*) FROM tbl_faq WHERE faq_category=#{category} limit #{cri.startRow}, #{cri.perPageNum}")
	int getCategoryCount(@Param("cri")SearchCriteria cri, @Param("category")String category) throws Exception;
	/****************************** FAQ ************************************/
	
	//글 목록-동적쿼리
	@SelectProvider(type=BoardQueryProvider.class, method="getSearchFAQList")
	List<FAQBoardVO> getFAQList(SearchCriteria cri) throws Exception;
	
	//@SelectProvider(type=BoardQueryProvider.class, method="getCategoryList")
	
	@Select("select * from tbl_faq where faq_category = #{category} order by faq_num desc limit #{cri.startRow}, #{cri.perPageNum}")
	List<FAQBoardVO> getCategoryList(@Param("cri") SearchCriteria cri, @Param("category")String faq_category );
	
	
	//글 쓰기
	@Insert("INSERT INTO tbl_faq VALUES(null, #{faq_category}, #{faq_title}, #{faq_content})")
	void writeFAQ(FAQBoardVO fvo) throws Exception;

	
	//글 수정
	@Update("UPDATE tbl_faq SET faq_category=#{faq_category}, faq_title= #{faq_title}, faq_content= #{faq_content} "
			+ "WHERE faq_num= #{faq_num}")
	void modifyFAQ(FAQBoardVO fvo);
	
	//글 삭제
	@Delete("DELETE FROM tbl_faq WHERE faq_num=#{faq_num}")
	void deleteFAQ(int faq_num) throws Exception;


	/****************************** QNA ************************************/
	
	//글 목록

	//글 쓰기
	
	//상세보기
	
	//글 수정
	
	//글 삭제
	
	/***************************** Notice **********************************/
	@SelectProvider(type=BoardQueryProvider.class, method="getNoticeCount")
	int getNoticeCount(SearchCriteria cri)throws Exception;
	//글 목록
	@SelectProvider(type=BoardQueryProvider.class, method="getNoticeList")
	List<NoticeBoardVO> getNoticeList(SearchCriteria cri);
	
	//글 쓰기
	
	//상세보기
	
	//글 수정
	
	//글 삭제
		
}
