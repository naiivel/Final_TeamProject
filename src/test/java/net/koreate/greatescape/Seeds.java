package net.koreate.greatescape;

import java.util.Date;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import net.koreate.greatescape.common.dao.TempDAO;
import net.koreate.greatescape.product.vo.ProductDetailVO;
import net.koreate.greatescape.product.vo.ProductVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:context/root-context.xml" })
public class Seeds {

	@Inject
	TempDAO dao;

	private String[] continent = { "아시아", "유럽", "아메리카", "오세아니아" };

	private String[][] country = { { "일본", "베트남", "필리핀" }, { "이탈리아", "프랑스", "영국" }, { "미국", "캐나다", "칠레" },
			{ "오스트레일리아", "뉴질랜드" } };

	private String[][][] city = { { { "오사카", "도쿄" }, { "다낭", "호치민" }, { "보라카이", "마닐라" } },
			{ { "로마", "베네치아" }, { "파리", "리옹" }, { "런던", "에든버러" } },
			{ { "하와이", "플로리다" }, { "밴쿠버", "퀘백" }, { "산티아고", "비냐 델 마르" } }, { { "시드니", "골드코스트" }, { "남섬", "오클랜드" } }, };

	private String[] name1 = { "재미있는", "환상적인", "낭만적인", "신나는", "최악의", "가기 싫은", "부모님과 가기 좋은", "연인과 가기 좋은", "그저 그런" };

	private String[] name2 = { "관광여행", "문화여행", "독서여행", "온천여행", "도시탐방", "유적탐방", "힐링여행", "체험여행" };

	private String[] airplane = { "대한항공", "아시아나항공", "티웨이항공", "진에어", "에어서울", "에어부산", "제주항공", "이스타항공", "플라이강원",
			"에어로케이항공" };

	@Test
	public void seeds() throws Exception {
		dao.deleteSeed();
		for (int i = 0; i <= 150; i++) {
			ProductVO vo = new ProductVO();
			randomSet(vo);
			dao.productSeed(vo);
			ProductDetailVO productDetailVO = new ProductDetailVO();
			productDetailVO.setDetail_info("Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ipsa ad sapiente nisi dicta enim veritatis provident architecto dolorum quis, inventore temporibus velit, veniam obcaecati alias molestiae ducimus quidem unde. Ducimus.\r\n" + 
					"Natus iste, quasi quibusdam perspiciatis sed, consequatur libero repellendus placeat sunt distinctio quia dolore, ad quaerat officia ipsum sit blanditiis hic. Itaque assumenda magni aliquid impedit eligendi inventore minima nulla.\r\n" + 
					"Earum mollitia eveniet nulla quia, qui rerum enim cupiditate quaerat, iure excepturi dolor quas id magnam deserunt odio at ea. Iusto quo dolorem, provident possimus eaque maxime soluta suscipit id.");
			productDetailVO.setDetail_schedule("Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ipsa ad sapiente nisi dicta enim veritatis provident architecto dolorum quis, inventore temporibus velit, veniam obcaecati alias molestiae ducimus quidem unde. Ducimus.\r\n" + 
					"Natus iste, quasi quibusdam perspiciatis sed, consequatur libero repellendus placeat sunt distinctio quia dolore, ad quaerat officia ipsum sit blanditiis hic. Itaque assumenda magni aliquid impedit eligendi inventore minima nulla.\r\n" + 
					"Earum mollitia eveniet nulla quia, qui rerum enim cupiditate quaerat, iure excepturi dolor quas id magnam deserunt odio at ea. Iusto quo dolorem, provident possimus eaque maxime soluta suscipit id.");
			//productDetailVO.setDetail_title_image("https://source.unsplash.com/random");
			dao.detailSeed(productDetailVO);
		}
	}

	private void randomSet(ProductVO vo) {
		int continentNum = randomInt(continent);
		int countryNum = randomInt(country[continentNum]);
		vo.setProduct_continent(continent[continentNum]);
		vo.setProduct_country(country[continentNum][countryNum]);
		vo.setProduct_city(randomValue(city[continentNum][countryNum]));
		vo.setProduct_name(randomValue(name1) + " " + randomValue(name2));
		vo.setProduct_airplane(randomValue(airplane));
		vo.setProduct_departure(new Date());
		vo.setProduct_arrive(new Date());
		vo.setProduct_plan("1");
		vo.setProduct_adult((int) (Math.random() * 10000000) + 100000);
		vo.setProduct_minor((int) (Math.random() * 10000000) + 50000);
		vo.setProduct_seat((int) (Math.random() * 150));
	}

	private String randomValue(String[] array) {
		return array[randomInt(array)];
	}

	private int randomInt(String[] array) {
		return (int) (Math.random() * 1000) % array.length;
	}

}
