package com.mz.store.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.mz.common.MyFileRenamePolicy;
import com.mz.member.model.vo.Member;
import com.mz.store.model.service.StoreService;
import com.mz.store.model.vo.Store;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class StoreEnrollFormController
 */
@WebServlet("/storeinsert.st")
public class StoreEnrollFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreEnrollFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
		String storeSavePath = session.getServletContext().getRealPath("/resources/image/jsw/store_upfiles/");
		String storeMenuSavePath = session.getServletContext().getRealPath("/resources/image/jsw/storemenu_upfiles/");
		
		MultipartRequest multiRequest = new MultipartRequest(request, storeSavePath, 0, "UTF-8", new MyFileRenamePolicy());
		
		String storeName = request.getParameter("storeName");
		String storePhone = request.getParameter("storePhone");
		String localSi = request.getParameter("sido");
		String localGu = request.getParameter("gugun");
		String localRo = request.getParameter("storeaddress");
		String storeAddress = request.getParameter("sido") + request.getParameter("gugun") + request.getParameter("storeaddress");
		String storeImgPath = request.getParameter("storeimg");
		String storeIntro = request.getParameter("storeintro");
		String storePopularity = request.getParameter("storemenu");
		String storePopPath = request.getParameter("storemenuimg");
		String storePopInfo = request.getParameter("storemenuintro");
		String storeOperating = request.getParameter("storeoperating1") + "~" + request.getParameter("storeoperating2");
		String storeBreaktime = request.getParameter("storebreak1") + "~" + request.getParameter("storebreak2");
		String naverAddress = request.getParameter("storenaverurl");
		String storeUrl = request.getParameter("storeurl");
		String[] dayOffArr = request.getParameterValues("storeholiday");
		String[] storeTagArr = request.getParameterValues("storemood");
		
		String dayOff = "";
		if(dayOffArr != null) {
			dayOff = String.join(",", storeTagArr);
		}
		
		String storeTag = "";
		if(storeTagArr != null) {
			storeTag = String.join(",", storeTagArr);
		}
		
		Store se = new Store(storeName, storePhone, localSi, localGu, localRo, storeAddress, storeImgPath, storeIntro, storePopularity, storePopPath, storePopInfo, storeOperating, storeBreaktime, naverAddress, storeUrl, dayOff, storeTag);
		se.setStoreName(storeName);
		se.setStorePhone(storePhone);
		se.setLocalSi(localSi);
		se.setLocalGu(localGu);
		se.setLocalRo(localRo);
		se.setStoreAddress(storeAddress);
		se.setStoreImgPath("resources/image/jsw/store_upfiles/");
		se.setStoreIntro(storeIntro);
		se.setStorePopularity(storePopularity);
		se.setStorePopPath("resources/image/jsw/storemenu_upfiles/");
		se.setStorePopInfo(storePopInfo);
		se.setStoreOperating(storeOperating);
		se.setStoreBreaktime(storeBreaktime);
		se.setNaverAddress(naverAddress);
		se.setStoreUrl(storeUrl);
		se.setDayOff(dayOff);
		se.setStoreTag(storeTag);		

		int result = new StoreService().storeInsert(se);
				
		if(result > 0) {
			// 등록 성공
			session.setAttribute("alertMsg", "성공적으로 식당 등록이 완료되었습니다.");
			response.sendRedirect(request.getContextPath() + "/storeadminlist.st");
		}else { 
			// 등록 실패
			session.setAttribute("alertMsg", "식당 등록 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
		
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
