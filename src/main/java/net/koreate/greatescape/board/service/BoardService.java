package net.koreate.greatescape.board.service;

import java.util.List;

import net.koreate.greatescape.board.vo.FAQBoardVO;
import net.koreate.greatescape.board.vo.NoticeBoardVO;
import net.koreate.greatescape.board.vo.QNABoardVO;
import net.koreate.greatescape.utils.PageMaker;
import net.koreate.greatescape.utils.SearchCriteria;

public interface BoardService {

	//페이징처리
	PageMaker getPageMaker(SearchCriteria cri) throws Exception;
	
	
	/****************************** FAQ ************************************/
	
	//질문리스트-페이징처리
	List<FAQBoardVO> faqList(SearchCriteria cri) throws Exception;
		
	//새글작성
	FAQBoardVO writeFAQ(FAQBoardVO fvo) throws Exception;
	
	//글 수정
	String modifyFAQ(FAQBoardVO fvo) throws Exception;
	
	//글삭제
	void deleteFAQ(int faq_num) throws Exception;
	
	/****************************** QNA ************************************/
	
	//질문리스트-페이징처리
	List<QNABoardVO> qnaList(SearchCriteria cri) throws Exception;
		
	//새글작성
	String writeQNA(QNABoardVO qvo) throws Exception;
	
	//qna상세보기
	QNABoardVO readQNA(int QNA_num) throws Exception;
	
	//글 수정
	String modifyQNA(QNABoardVO qvo) throws Exception;
	
	//글삭제
	void deleteQNA(int QNA_num) throws Exception;
	
	
	/******************************Notice************************************/
	
	//질문리스트-페이징처리
	List<NoticeBoardVO> noticeList(SearchCriteria cri) throws Exception;
		
	//새글작성
	String writeNotice(NoticeBoardVO nvo) throws Exception;
	
	//qna상세보기
	NoticeBoardVO readNotice(int notice_num) throws Exception;
	
	//글 수정
	String modifyNotice(NoticeBoardVO nvo) throws Exception;
	
	//글삭제
	void deleteNotice(int notice_num) throws Exception;
	
	
	
}
