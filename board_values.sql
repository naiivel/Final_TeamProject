-- faq
SELECT * FROM tbl_faq;
TRUNCATE tbl_faq;

INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('해외여행', '여행 취소시 수수료는 어떻게 되나요?', '단품, 자유여행, 패키지여행 각 여행상품 및 취소 시점등에 따라서 취소수수료 면제부터 부과까지 취소수수료 부과율이 모두 상이합니다. 특히 단품, 출발임박, 특가의 경우 수수료 부과율이 높을 수 있으니, 여행예약시 취소 규정을 잘 살피고 예약 하시기를 권고드리며 자세한 사항은 담당자를 통해서 확인이 필요합니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('해외여행', '출국시 면세점 구매한도와 입국시 면세한도가 어떻게되나요?', '출국 시 내국인 구매한도가 2022.3.18부터 1인당 미화 $5,000에서 폐지되었습니다. 단, 입국장면세점 구매한도는 미화 $600이며, 입국 시에는 출·입국장 등 면세점 구입물품을 포함하여 해외에서 구입하여 가져오는 물품 총액이 1인당 미화 $600(2014.9.5 이후 입국고객 기준)을 초과하는 경우에는 세관에 신고 후 세금을 납부하셔야 합니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('해외여행', '패키지여행 중 개별 여행이 가능할까요?', '패키지여행은 출국부터 입국까지 지정된 일정에 따라서 단체로 진행되는 것이 여행의 특징입니다. 다른 일행과 함께 사전에 지정된 일정으로 이동하기 때문에, 일정중 포함된 자유시간이외 개별적으로 단체에서 이탈하는 것이 불가합니다. 개별일정희망, 친지 또는 지인방문등은 자유(개별)여행으로 진행하시는 것을 추천 드립니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('해외여행', '항공권 업그레이드 가능한가요?', '자유여행의 경우 항공권 예약시 항공등급(등급별 요금상이) 선택이 가능합니다. 패키지 여행의 경우 기본적으로 이코노미석으로 여행요금이 지정되어 있으며, 차액납부시 좌석 업그레이드가 가능합니다. 단, 성수기등 선호도가 높은날의 항공좌석의 매진으로 불가한 경우도 있으니 사전에 담당자를 통해서 확인 바랍니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('해외여행', '해외여행자보험을 반드시 가입해야되나요?', '해외여행시 현지에서 발생 될 수 있는 예기치 못했던 상황에 대비해서 가입하시는 것을 권장드립니다. 여행국가에 따라서 외국인 의료비용 부담이 무료-고액납부까지 상황에 따라서 상이하므로 최소한의 대비를 하시어 안전한 여행을 준비하시기를 권고드립니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('항공', '임산부인데 비행기 탈 수 있나요?', '입신부의 임신 기간에 따라 가능여부가 달라집니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('항공', '애완동물 데리고 탑승할 수 있나요?', '항공 예약 전 항공사 고객센터로 반입가능여부와 검역 규정을 확인하여 주시기 바랍니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('항공', '예약 시 여권 유효기간이 얼마나 남아 있어야 하나요?', '유효기간은 최소 6개월 이상 남아 있어야 합니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('항공', '기상 등의 이유로 결항 시 손해에 대한 보상은 어떻게 되나요?', '항공 결항 시 손해에 대한 보상은 여객운송약관과 소비자 피해보상규정을 근거로 처리되어지며');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('항공', '수하물 분실 시 배상 한도는 어떻게 되나요?', '수하물의 손상 지연 또는 분실 시 배상책임 한도액은 위탁수하물의 경우 1kg당 미화 20불(또는 그 상당액), 휴대수하물의 경우 여객 1인당 미화 400불입니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('예약/결제', '결제 취소 시 사용한 포인트는 어떻게 되나요?', '취소시점에 따라서 전액 또는 수수료 발생시 차감후 해당 ID로 환불 처리 됩니다. 포인트의 잔여 유효기간은 최초 적립 시와 동일하게 적용되며, 포인트 환불 절차는 영업일 기준 3~5일 정도 소요될 수  있습니다. ');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('예약/결제', '부모님(지인) 여행을 대신 예약 할 수 있나요?', '실제여행객을 대리하거나 또는 함께여행하는 경우, 여행객을 대표해서 예약이 가능합니다. 단, 예약시 실제 여행하시는 고객님들의 정보(영문명,생년월일,연락처,여권정보등)를 정확하게 여행사로 알려주셔야 항공권등 예약이 확정이 될 수 있습니다. ');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('예약/결제', '카드와 현금으로 복합결제가 가능한가요?', '네, 가능합니다. 실제여행자분 명의의 신용카드와 현금의 복합결제가 가능하며, 현금 결제부분은 현금영수증 발행 신청시 발급해드리고 있습니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('예약/결제', '동행자와 개별 결제 가능할까요?', '동행자와 개별결제가 가능하며, 각각의 본인 명의 카드 또는 은행 계좌를 이용하 실 수 있습니다. 자세한 사항은 여행 담당자를 통해서 문의 바랍니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('예약/결제', '여행박사 상품권 결제에 대해서 궁금합니다.', '여행박사 상품권은 일부 여행상품을 제외하고 결제시 사용가능합니다. 자세한 사항은 상품권 안내 페이지를 참조해주세요.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('여권/비자/환전', '차세대여권(남색)이 나왔는데 기존(녹색) 여권을 쓸수 있나요?', '네 가능합니다. 기존 여권(녹색)은 유효기간이 남아있는 동안 문제없이 사용이 가능합니다. ');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('여권/비자/환전', '여권발급시 미성년자의 나이 계산은 어떻게 하나요?', '여권법은 만 18세 미만인 경우 미성년자로서 법정대리인의 동의를 받도록 하고 있습니다. 따라서 만 18세가 되는 해의 생일이 지나지 않은 사람은 여권법상 미성년자에 해당합니다.  ');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('여권/비자/환전', '영아의 경우 성장으로 얼굴이 바뀌는데 신생아때 만든 여권을 사용하는데 문제가 없나요?', '여권 유효기간 만료 전까지는 여권 사용이 가능합니다. 간혹, 입출국 심사 시 영아의 빠른 성장으로 여권사진 교체를 언급하는 경우가 있으니, 희망 시에 교체된 사진으로 여권 재발급(비용 발생) 가능합니다. ');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('여권/비자/환전', '여권 분실시 어떻게 해야되나요?', '여권을 분실하였을 경우는 즉시 가까운 여권 발급기관(전국 249개 광역 및 기초 자치단체)에 신분증을 지참하여 여권명의인이 직접 여권 분실 사실을 신고하시기 바랍니다. 분실 신고를 하기 전에 \'경찰청 유실물 통합포털(www.lost112.go.kr)\'에 접속, [습득물 상세검색]서비스를 이용하여 여권 습득 여부를 먼저 확인하시기 바랍니다. 만 18세 이상 성인의 경우 반드시 본인이 직접 신고해야하며 대리로 분실신고가 가능한 사유는 다음과 같습니다. 1) 의전상 필요한 경우(대통령, 국회의장, 대법원장, 헌번재판소장, 국무총리만 해당) 2) 본인이 직접 신청할 수 없을 정도의 신체적?정신적 질병, 장애나 사고 등으로 인하여 대리인에 의한 신청이 특별히 필요한 경우(전문의의 진단서 또는 소견서 구비) 3) 18세 미만인 미성년자인 경우(해외여행 중 여권을 분실하였을 경우는 가까운 대사관 또는 총영사관에 여권 분실 신고를 하고 단수여권을 발급받으시기 바랍니다.) 단, 여권을 재발급 받은 경우 여행사로 변경된 여권 정보를 알려주시기 바랍니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('여권/비자/환전', '항공권을 급하게 예약해야되는데 관련기관에서 전화로 여권번호/영문명을 알려주나요?', '그렇지않습니다. 개인정보보호법 제17조, 59조, 71조에 의거하여 정보주체(여권소지인)의 동의가 없으면 여권정보 일체를 제3자에게 제공할 수 없도록 규정하고 있습니다. 전화만으로는 본인확인 확인이 어려우므로 개인 정보 보호를 위해서 여권 정보를 제공할 수 없도록 되어 있습니다. (참고사항) 이미 발급되어 교부 처리된 유효한 여권에 한해 본인 명의 공인인증서로 로그인하여 행정안전부의 정부24 (www.gov.kr) 또는 영사민원24(www.consul.mofa.go.kr)에서 여권번호, 로마자성명(영문이름), 여권유효기간에 관한 여권정보를 확인할 수 있음을 안내하기 바랍니다. (생활정보 서비스 이용에 동의가 되어있지 않은 경우 여권정보가 보이지 않음)');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('홈페이지/기타', '회원아이디가 휴면상태로 로그인이 안됩니다.', '[휴면고객안내] 1년간 미이용시 휴면상태로 전환됩니다. 휴면해제는 회원가입시 입력하신 이메일 또는 휴대전화로 인증후 사용이 가능합니다. 회원가입 정보를 잊으신 경우 고객센터 또는 질문과 답변게시판으로 문의 바랍니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('홈페이지/기타', '광고 수신 알림 설정을 변경하고 싶습니다.', '[PC/Mobile web&app]여행박사회원 로그인→마이페이지→정보수정→마케팅 정보 수신동의(이메일,문자) 동의 또는 동의안함 설정을 통해서 이용 가능합니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('홈페이지/기타', '여행종료후 회원가입했는데 마이페이지에서 여행이력이 조회가 안됩니다.', '여행 종료후 회원 가입을 하시는 경우, 이미 종료된 여행의 조회는 담당자를 통해서 회원아이디와 다녀오신 여행의 연동처리후 마이페이지에서 조회가 가능합니다. 단, 마이페이지 조회는 여행종료 1년까지 가능하며 추가 문의는 질문과 답변 게시판 또는 고객센터로 바랍니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('홈페이지/기타', '이메일과 연락처등 회원정보가 변경되었습니다.', '[PC/Mobile web&app]마이페이지→정보수정 메뉴를 통해서 이용 가능합니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('홈페이지/기타', '아이디/비밀번호를 잊어버렸어요', '내정보에 등록한 정보로 아이디/비밀번호 찾기가 가능합니다. (휴대폰 or 이메일 or 생년월일)');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('홈페이지/기타', '기존 아이디를 다른 아이디로 변경할 수 있나요?', '아이디는 변경이 불가능합니다.따라서 가입 시 아이디를 신중하게 선택해주시기 바랍니다.만약 아이디 변경을 원하시는 경우 기존의 아이디를 해지하고 새로 가입이 필요합니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('여권/비자/환전', '여행증명서는 무엇인가요?', '여행증명서는 여권을 갈음하는 증명서로, 유효기간은 1년 내(행정제재자의 편도 귀국용은 1개월 이내)로 부여하고 발행목적이 성취된 때 그 효력이 상실됩니다. ');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('여권/비자/환전', '여권에 낙서가 있는데 사용 가능한가요?', '훼손된 여권으로 출입국시 출입국 거부 및 구금등의 불이익이 발생될 수 있습니다. 특히 여권에 낙서, 메모를 하거나 기념스탬프 날인, 페이지를 임의로 뜯어내는 경우, 신원정보 면에 얼룩이 묻은 경우, 여권표지 손상 등은 모두 훼손된 여권으로 간주되며, 훼손된 여권은 유효하지 않은 신분증으로써 출입국 심사는 물론 항공권 발권과정에서도 불이익이 발생할 수 있습니다. 여권 훼손에 따른 출입국 거부 사례가 발생할 경우, 해당국 소재 대사관에 방문하여 단수여권을 재발급 받아야 하는 불편이 발생할 뿐 아니라, 단수여권 소지자의 출입국을 제한하는 국가도 있기 때문에 이후 여행 일정에도 지장을 초래할 수 있습니다.(해외에서 단시간 내 여권 발급이 필요한 경우, 단수여권 발급만 가능) 해외 체류 또는 방문 중 위급상황이 발생하는 경우에는 해당국가에 소재한 대사관 또는 외교부 영사콜센터로 연락하여 필요한 도움을 받으시기 바랍니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('여권/비자/환전', '여권 발급 서류', '여권발급신청서, 여권용 사진 1매 (6개월 이내에 촬영한 사진), 신분증, 병역관련서류(해당자)_병역 미필자 (18세~37세) : 제출 서류 없음, 5년 복수여권 발급 (단, 여권발급과 별도로 출국시에는 국외여행허가서 필요)_37세까지 국외여행허가를 받은 자 : 10년 복수여권 발급_전역 6개월 미만의 대체의무 복무중인 자 : 전역예정증명서 및 복무확인서 제출시 10년 복수 여권 발급');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('여권/비자/환전', '여권, 비자가 없는데 예약할 수 있나요?', '여권,비자를 준비할 충분한 시간이 있다면 예약 가능합니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('여권/비자/환전', '비자의 기간은 얼마나 되나요?', '현재 일본의 경우 90일까지 무비자 입국이 되었으나, 일본 비자의 경우 처음 신청하시는 분들은 일본 출입국 횟수 제한이 없는 복수비자 1년짜리가 발급됩니다.직업이 공무원이시거나 교사, 의사이신 분들의 경우 심사를 통해서 5년짜리가 발급되어지고 이전에 일본비자를 여러 번 받은 경험이 있고 일본 출입국을 문제없이 하신 분들이라면 간혹 5년짜리가 발급되기도 합니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('항공', '항공권은 어떻게 받나요?', '결제가 완료된 후 항공권 발행이 완료되면 메일로 발송 후 문자 안내를 드립니다.직접 출력하셔서 소지하신 후 공항에서 해당 항공사에 제시하시면 됩니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('항공', '항공권 구입시 나타나는 적용기간과 유효기간이 어떻게 다른가요?', '적용기간은 출발 일을 의미하며, 해당 기간 내에 출발하셔야 해당요금을 적용 받으실 수 있습니다.유효기간은 현지(목적지)에서 체류할 수 있는 기간을 나타냅니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('항공', '노쇼(NO-SHOW)란 무엇인가요?', '항공권을 구매하신 후 항공사나 여행사에 아무런 연락 없이 탑승하지 않는 것을 NO-SHOW라 하며, 이런 경우 환불금액은 없습니다. 탑승이 불가한 경우에는 반드시 항공사로 연락을 주셔야만 추후 일부 환불이라도 받으실 수 있습니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('항공', '좌석배정 미리 받을 수 있나요? (저가항공사 제외)', '현재 139개 항공사가 사전좌석배정을 받으실 수 있습니다. 대한항공의 경우는 좌석을 많이 오픈시켜 놓지 않기 때문에 앞 좌석으로는 힘든 편이며 웬만한 항공사는 사전좌석배정을 받으실 수 있습니다. 단, 단체항공권의 경우에는 사전좌석배정이 불가합니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('항공', '기내에 가지고 갈 수 없는 물품은 어떤 것이 있나요?', '안전을 위하여 기내 휴대품으로 가지고 가실 수 없는 물품을 SRI(Security Removed Item)라고 하며, 이러한 물품은 다음과 같은 것이 있습니다.가) 자를 수 있는 것은 길이,종류와 관계없이 반입 금지나) 기내식용 금속나이프, 종이커터, 장식용 주머니칼, 스위스 나이프다) 얼음 깨는 송곳, 와인 오프너, 가위 및 면도기 등');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('해외여행', '패키지 여행 종료후 항공권 일정 변경이 가능한가요?', '담당자가 항공사를 통해서 가부여부를 확인 할 수있습니다. 발권된 항공권이 취소/변경이 가능한 경우가능하며(수수료발생), 항공권에 따라서 취소/변경이 전면적으로 불가한 경우도 있으니, 담당자에게 예약상담시 반드시 해당 사항을 알려야합니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('해외여행', '여행중 여권을 분실한 경우 어떻게 해야되나요?', '자유여행중인 경우, 직접 가까운 경찰서에 신고하시고 대사관을 통해서 임시여권을 발급 받아야합니다. 패키지여행의 경우 인솔자/가이드에게 사실을 알리고 동일한 절차를 거쳐서 임시여권을 발급 받아야합니다. 이경우 미리 항공사를 통해서 변경된 여권정보로 재발행(수수료발생) 받지 않으면 탑승이 거부 될 수 있습니다.');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('해외여행', '모든 패키지여행에 인솔자가 동행하나요?', '여행지역에 따라서 상이합니다. 단, 유럽/일본의 경우 인솔자가 동행하는 경우가 대부분이며, 이외 인솔자가 동행하지 않는 경우 현지에서 가이드와 만나서 여행을 하게 됩니다. ');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('해외여행', '패키지에 동행한 인솔자/가이드/여행객의 연락처를 알 수 있을까요?', '여행종료후 여행사가 타인의 정보를 제3자에게 제공하는 것은 불가합니다. 다만, 개인정보가 필요한 대상자에게 고객님의 연락처를 제공하고, 상대가 동의시 직접 연락할 수 있도록 전달을 해드릴 수 있습니다. 필요시 당사 홈페이지 질문과답변 게시판으로 문의 바랍니다. ');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('해외여행', '패키지여행에 혼자도 참여가능한가요?', '네, 가능합니다, 다만 패키지여행의 경우 2인1실 기준으로 요금이 정해져있어서, 일정금액의 싱글비용이 발생되며 여행지역에 따라서 요금은 다릅니다. 희망시 동성의 1인 예약자가 있는 경우 객실조인을 통해서 2인1실로 지정될 수도 있습니다. ');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('해외여행', '인솔자와 가이드의 차이점은 무엇인가요?', '인솔자는 출입국시 전일정 동안 고객님과 동행하며 편의를 제공해드리는 역할을 합니다. 고객님과 가까운곳에 머물며 현지에서 긴급상황 발생시 신속한 대응이 가능합니다. 가이드는 현지 관광일정 동안 관광지를 소개하고 일정을 소화하는 역할을 합니다. 현지에 대한 전문적인 지식을 보유하고 현지에 상황에 능동적으로 대응할 수 있는 역량을 갖추었기때문에 여행중 리더로서 안전하고 즐거운 여행의 길잡이가 됩니다. ');
INSERT INTO `greatescape`.`tbl_faq` (`faq_category`, `faq_title`, `faq_content`) VALUES ('해외여행', '\'대기예약\'은 무엇인가요?', '패키지여행의 경우 일정 인원 이상 즉, 최소출발인원의 충족시 출발이 가능합니다.  예약인원이 최소출발인원에 미달인 경우 인원이 충족시까지 모객을 거쳐서 출발 확정이 되므로, 완료전까지는 대기예약 상태가 됩니다. 또 예약정원이 초과된 경우, 앞선 예약자의 취소 또는 현지 항공편, 호텔 등이 추가로 확보 될 때까지 대기예약이 됩니다. 대기 예약에서 예약이 확정된 경우 담당자가 개별 연락 또는 담당자에게 연락시 확정 확인이 가능합니다.  ');

-- qna
SELECT * FROM tbl_qna;

-- notice
SELECT * FROM tbl_notice;
INSERT INTO `greatescape`.`tbl_notice` (`notice_title`, `notice_content`, `notice_category`, `notice_writer`) VALUES ('[외교부]세계 주요 조치별 입국제한 현황 안내(2022. 9. 1. 1700 게재 기준)', '안녕하세요 고객님,코로나19로 인한 입국 시 조치별 기준을 안내드립니다. * 대상 : 관광 및 방문목적(업무/출장등 기타 목적은 별도 확인 요망)* 출처 : 외교부해외안전여행 홈페이지 공지사항(2022. 9. 1. 17:00  게재 기준) ○ 코로나19가 전 세계로 확산됨에 따라 대부분의 국가들이 외국인을 대상으로 입국제한 조치를 실시하고 있습니다. 또한 다수 항공 노선이 두절됨에 따라 해외에서 격리되거나 고립되는 등 큰 불편을 겪을 가능성이 있습니다. 코로나19와 관련하여 해외입국자에 대한 입국제한 조치를 실시하고 있는 국가(지역)를 안내합니다.', '외교부소식', '탈출도우미');
INSERT INTO `greatescape`.`tbl_notice` (`notice_title`, `notice_content`, `notice_category`) VALUES ('개인정보 처리방침 일부개정 사전안내(9/29)', '개인정보 처리방침이 아래와 같이 변경됨을 안내드립니다. - 변경된 개인정보 처리방침은 2022년 9월 29일자로 효력이 발생합니다. 고객님의 개인 정보를 보다 안전하게 보호하고 관리하기 위하여 기술적/관리적 조치를 강화하여, 개인정보보호 규정 및 행정안전부가 제정한 표준 개인정보보호지침을 준수하기 위해서 최선을 다하겠습니다.', '공지사항');
INSERT INTO `greatescape`.`tbl_notice` (`notice_title`, `notice_content`, `notice_category`) VALUES ('개인정보 처리방침 일부개정 사전안내(8/16)', ' 개인정보 처리방침이 아래와 같이 변경됨을 알려드립니다. - 변경된 개인정보 처리방침은 2022년 8월 16일자로 효력이 발생합니다. 개인정보보호 규정 및 정보통신부가 제정한 개인정보보호지침을 준수하기 위해 최선을 다하겠습니다.', '공지사항');
INSERT INTO `greatescape`.`tbl_notice` (`notice_title`, `notice_content`, `notice_category`) VALUES ('[문자알림결제] 2022년 8월 카드 무이자 할부 이벤트 안내입니다.', '※ 2022년 8월 문자 알림 결제 시 카드 무이자 할부 안내  ※[5만원이상 / 2~6개월 무이자]국민카드, 농협카드, 현대카드, 삼성카드 [5만원이상 / 2~7개월 무이자] 비씨카드 * 해외여행, 국내여행, 일본호텔, 해외패스/티켓 결제 시에만 적용됩니다.', '공지사항');
INSERT INTO `greatescape`.`tbl_notice` (`notice_title`, `notice_content`, `notice_category`) VALUES ('대한민국 전자여행허가제 (K-ETA) 시행 관련(외국인 입국관련)', '대한민국 전자여행허가제 (K-ETA) 시행 관련 하기 내용 안내드립니다. 무사증으로 입국 가능한 외국인에 대해 의무적용되오니 참고 부탁드립니다. ○무사증 입국 가능 외국인에 대한 신속 입국 지원 및 부적합 대상에 대한 입국심사 강화 일환으로 사전에 온라인으로 개인 및 여행관련 정보를 입력하여 여행허가를 받도록 하는 제도 ○ 시행시기 : 2021년 9월 1일부 (KST 00시, 도착일 기준)', '외교부');

