package net.koreate.greatescape.board.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.board.dao.BoardDAO;
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

	
	/****************************** FAQ ************************************/
	
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
	public String modifyFAQ(FAQBoardVO fvo) throws Exception {
		bdao.modifyFAQ(fvo);
		return "redirect:board/faq/modify";
	}

	@Override
	public void deleteFAQ(int faq_num) throws Exception {
		bdao.deleteFAQ(faq_num);
	}
	
	@Override
	public List<FAQBoardVO> categoryList(SearchCriteria cri, String faq_category) throws Exception {
		/*
		 * List<FAQBoardVO> list= null;
		 * 
		 * list= bdao.getCategoryList(cri, category);
		 */
		return bdao.getCategoryList(cri, faq_category);
	}
	
	/****************************** QNA ************************************/
	
	@Override
	public List<QNABoardVO> qnaList(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String writeQNA(QNABoardVO qvo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public QNABoardVO readQNA(int QNA_num) throws Exception {
		// TODO Auto-generated method stub
		return null;
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String writeNotice(NoticeBoardVO nvo) throws Exception {
		// TODO Auto-generated method stub
		return null;
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
		// TODO Auto-generated method stub
		return null;
	}

	
}
