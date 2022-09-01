package net.koreate.greatescape.board.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.board.dao.BoardDAO;
import net.koreate.greatescape.board.vo.CommentVO;
import net.koreate.greatescape.board.vo.FAQBoardVO;
import net.koreate.greatescape.board.vo.NoticeBoardVO;
import net.koreate.greatescape.board.vo.QNABoardVO;
import net.koreate.greatescape.utils.PageMaker;
import net.koreate.greatescape.utils.SearchCriteria;
import net.koreate.greatescape.utils.SearchPageMaker;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {

	private final BoardDAO bdao;
	
	
	
	/****************************** FAQ ************************************/
	
	@Override
	public PageMaker getPageMaker(SearchCriteria cri) throws Exception {
		int totalCount= bdao.getCount(cri);
		PageMaker pm= new SearchPageMaker();
		pm.setDisplayPageNum(5);
		pm.setCri(cri);
		pm.setTotalCount(totalCount);
		return pm;
	}
	
	@Override
	public PageMaker getCategoryPageMaker(SearchCriteria cri, String category) throws Exception {
		int totalCount= bdao.getCategoryCount(cri, category);
		PageMaker categoryPM= new SearchPageMaker();
		categoryPM.setDisplayPageNum(5);
		categoryPM.setCri(cri);
		categoryPM.setTotalCount(totalCount);
		return categoryPM;
	}

	@Override
	public List<FAQBoardVO> faqList(SearchCriteria cri) throws Exception {
		List<FAQBoardVO> list= null;
		list= bdao.getFAQList(cri);
		
		return list;
	}


	@Override
	public void writeFAQ(FAQBoardVO fvo) throws Exception {
		bdao.writeFAQ(fvo);
	}

	@Override
	public void deleteFAQ(int faq_num) throws Exception {
		bdao.deleteFAQ(faq_num);
	}
	
	@Override
	public List<FAQBoardVO> categoryList(SearchCriteria cri, String faq_category) throws Exception {
		return bdao.getCategoryList(cri, faq_category);
	}
	
	
	/****************************** QNA ************************************/
	
	//qna게시글
	@Override
	public List<QNABoardVO> getQnaList(SearchCriteria cri) throws Exception {
		List<QNABoardVO> list= null;
		list= bdao.getQNAList(cri);
		
		return list;
	}
	
	//상단에 띄워줄 공지사항 
	@Override
	public List<NoticeBoardVO> qnaNoticeList() {
		return bdao.getQnaNoticeList();
	}
	
	//qna 페이지메이커
	@Override
	public PageMaker getQnaPageMaker(SearchCriteria cri) throws Exception {
		int totalCount= bdao.getQnaCount(cri);
		PageMaker pm= new SearchPageMaker();
		pm.setDisplayPageNum(5);
		cri.setPerPageNum(7);
		pm.setCri(cri);
		pm.setTotalCount(totalCount);
		return pm;
	}
	//게시글 작성
	@Override
	public void writeQNA(QNABoardVO qvo) throws Exception {
		bdao.writeQNA(qvo);
	}
	//상세보기
	@Override
	public QNABoardVO readQNA(int qna_num) throws Exception {
		QNABoardVO vo= bdao.readQNA(qna_num);
		
		return vo;
	}
	//댓글작성
	@Override
	public void addComment(CommentVO vo) throws Exception{
		bdao.addComment(vo);
	}
	//댓글리스트
	public List<CommentVO> getCommentList(int qna_num) throws Exception{
		return bdao.getCommentList(qna_num);
	}
	//댓글 달리면 업데이트
	@Override
	public void updateQNAanswer(CommentVO vo) throws Exception {
		bdao.updateQNAanswer(vo);
	}
	
	//내가쓴글
	@Override
	public List<QNABoardVO> myQnaList(SearchCriteria cri, int member_num) {
		
		return bdao.myQNAList(cri, member_num);
	}

	
	@Override
	public List<QNABoardVO> getCheckingList(SearchCriteria cri) throws Exception {
		return bdao.getCheckingList(cri);
	}

	@Override
	public List<QNABoardVO> getCheckedList(SearchCriteria cri) throws Exception {
		return bdao.getChekedList(cri);
	}
	
	
	
	@Override
	public String modifyQNA(QNABoardVO qvo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteQNA(int QNA_num) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
	/***************************** Notice **********************************/
	@Override
	public List<NoticeBoardVO> noticeList(SearchCriteria cri) throws Exception {
		List<NoticeBoardVO> list= bdao.getNoticeList(cri);
		
		return list;
	}

	@Override
	public void writeNotice(NoticeBoardVO nvo) throws Exception {
		bdao.noticeWrite(nvo);
	}

	@Override
	public String modifyNotice(NoticeBoardVO nvo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteNotice(int notice_num) throws Exception {
		// TODO Auto-generated method stub
		
	}


	@Override
	public NoticeBoardVO readNotice(int notice_num) throws Exception {
		NoticeBoardVO vo= bdao.readNotice(notice_num);
		return vo;
	}

	@Override
	public PageMaker getNoticePageMaker(SearchCriteria cri) throws Exception {
		int totalCount= bdao.getNoticeCount(cri);
		PageMaker pm= new SearchPageMaker();
		pm.setDisplayPageNum(5);
		pm.setCri(cri);
		pm.setTotalCount(totalCount);
		return pm;
	}

	@Override
	public PageMaker getNoticeCategoryPageMaker(SearchCriteria cri, String category) throws Exception {
		int totalCount= bdao.getNoticeCategoryCount(cri, category);
		PageMaker categoryPM= new SearchPageMaker();
		categoryPM.setDisplayPageNum(5);
		categoryPM.setCri(cri);
		categoryPM.setTotalCount(totalCount);
		return categoryPM;
	}

	@Override
	public List<NoticeBoardVO> noticeCategoryList(SearchCriteria cri, String notice_category) {
		return bdao.getNoticeCategoryList(cri, notice_category);
	}

	

	
	

	
}
