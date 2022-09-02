package net.koreate.greatescape.board.service;

import java.util.List;

import net.koreate.greatescape.board.vo.CommentVO;
import net.koreate.greatescape.board.vo.FAQBoardVO;
import net.koreate.greatescape.board.vo.NoticeBoardVO;
import net.koreate.greatescape.board.vo.QNABoardVO;
import net.koreate.greatescape.utils.PageMaker;
import net.koreate.greatescape.utils.SearchCriteria;

public interface BoardService {

	/****************************** FAQ ************************************/
	
	//페이징처리
	PageMaker getPageMaker(SearchCriteria cri) throws Exception;
	//카테고리별 리스트
	PageMaker getCategoryPageMaker(SearchCriteria cri, String category) throws Exception;
	
	//질문리스트-페이징처리
	List<FAQBoardVO> faqList(SearchCriteria cri) throws Exception;
		
	//카테고리별 리스트
	List<FAQBoardVO> categoryList(SearchCriteria cri, String faq_category) throws Exception;
	
	//해외여행 faq, pm
	List<FAQBoardVO> getTripList(SearchCriteria cri) throws Exception;
	PageMaker getTripPageMaker(SearchCriteria cri) throws Exception;
	//항공 faq,pm
	List<FAQBoardVO> getAirlineList(SearchCriteria cri) throws Exception;
	PageMaker getAirlinePageMaker(SearchCriteria cri) throws Exception;

	//여권비자 faq,pm
	List<FAQBoardVO> getPassList(SearchCriteria cri) throws Exception;
	PageMaker getPassPageMaker(SearchCriteria cri) throws Exception;
	
	//예약결제faq,pm
	List<FAQBoardVO> getReservList(SearchCriteria cri) throws Exception;
	PageMaker getReservPageMaker(SearchCriteria cri) throws Exception;
	
	//홈페이지기타 faq, pm
	List<FAQBoardVO> getOtherList(SearchCriteria cri) throws Exception;
	PageMaker getOtherPageMaker(SearchCriteria cri) throws Exception;
	
	//새글작성
	void writeFAQ(FAQBoardVO fvo) throws Exception;
	
	
	//글삭제
	void deleteFAQ(int faq_num) throws Exception;
	
	
	
	/****************************** QNA ************************************/
	
	//질문리스트-페이징처리
	List<QNABoardVO> getQnaList(SearchCriteria cri) throws Exception;
		
	//qna페이지메이커
	PageMaker getQnaPageMaker(SearchCriteria cri) throws Exception;
	
	//새글작성
	void writeQNA(QNABoardVO qvo) throws Exception;
	
	//qna상세보기
	QNABoardVO readQNA(int QNA_num) throws Exception;
	
	//글 수정
	String modifyQNA(QNABoardVO qvo) throws Exception;
	
	//글삭제
	void deleteQNA(int QNA_num) throws Exception;
	
	//문답게시판 들어갈 공지
	List<NoticeBoardVO> qnaNoticeList();
	
	//댓글쓰기
	void addComment(CommentVO vo) throws Exception;
	
	//댓글리스트
	List<CommentVO> getCommentList(int qna_num) throws Exception;
	
	//댓글 쓰면 qna테이블 업데이트
	void updateQNAanswer(CommentVO vo) throws Exception;
	
	//내가 쓴 qna
	List<QNABoardVO> myQnaList(SearchCriteria cri, int member_num);
	
	//확인중인 qna
	List<QNABoardVO> getCheckingList(SearchCriteria cri) throws Exception;
	//답변 완료된 qna
	List<QNABoardVO> getCheckedList(SearchCriteria cri) throws Exception;
	
	/******************************Notice************************************/
	
	//질문리스트-페이징처리
	List<NoticeBoardVO> noticeList(SearchCriteria cri) throws Exception;
		
	//새글작성
	void writeNotice(NoticeBoardVO nvo) throws Exception;
	
	//상세보기
	NoticeBoardVO readNotice(int notice_num) throws Exception;
	
	//글 수정
	String modifyNotice(NoticeBoardVO nvo) throws Exception;
	
	//글삭제
	void deleteNotice(int notice_num) throws Exception;
	
	//공지페이지메이커
	PageMaker getNoticePageMaker(SearchCriteria cri) throws Exception;
	
	//공지게시판 카테고리별
	PageMaker getNoticeCategoryPageMaker(SearchCriteria cri, String category) throws Exception;
	
	//구분별 공지리스트
	List<NoticeBoardVO> noticeCategoryList(SearchCriteria cri, String notice_category);
	
	List<NoticeBoardVO> informList(SearchCriteria cri) throws Exception;
	PageMaker getInformPageMaker(SearchCriteria cri) throws Exception;
	List<NoticeBoardVO> mofaList(SearchCriteria cri) throws Exception;
	PageMaker mofaPageMaker(SearchCriteria cri) throws Exception;
	
	
	
	
	

	
	
}
