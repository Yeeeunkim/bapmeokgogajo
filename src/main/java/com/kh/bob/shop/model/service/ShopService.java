package com.kh.bob.shop.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ReserveMenu;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;
import com.kh.bob.shop.model.vo.ShopReview;

public interface ShopService {

	int insertShop(ShopInfo si);

	int insertMenu(List<ShopMenu> shopmenu);
//김예은 시작 =============================================


	// 식당마이페이지  - 식당정보 조회
	ShopInfo selectMyShop(String member_id);
	
	// 사장님마이페이지 - 메인
	List<ShopMenu> selectMyMenu1(int shopNo);
	
	// 사장님마이페이지 - 사이드
	List<ShopMenu> selectMyMenu2(int shopNo);
	
	// 사장님마이페이지 - 음료
	List<ShopMenu> selectMyMenu3(int shopNo);

	//사장님마이페이지 - 예약받은 정보들
	ReserveInfo selectRinfo(int shopNo);
	
	//사장님마이페이지 - 예약받은 인원수, 시간
	List<ReserveInfo> selectReserveInfo(int shopNo);
	
	//사장님마이페이지 - 예약받은 메뉴
	List<ReserveMenu> selectReserveMenu(int reserveNo);
	
	List<ReserveInfo> selectMyrInfo(String memberId);
	
	//사용자마이페이지  - 예약내역 조회
	ReserveInfo selectMyReInfo(String memberId);

	
	//사용자마이페이지  - 사용자가 선택한 식당정보
	List<ShopInfo> selectMyShopPick(int shopNo);
	
	
	//사용자마이페이지  - 사용자가 선택한 메뉴
	List<ReserveMenu> selectMyReMenu(int reserveNo);
	
	//사용자마이페이지  - 사용자 리뷰
	List<ShopReview> selectMyReview(String memberId);

	//사장님마이페이지 식당수정 - 식당 정보
	int sinfoUpdate(ShopInfo si);
	
	//사장님마이페이지 식당수정- 식당 메뉴
	int smenuUpdate(List<ShopMenu> shopmenu);







//	int sideUpdate(List<ShopMenu> sms);
//
//	int beverUpate(List<ShopMenu> smb);









	



//김예은 끝 =============================================

}
