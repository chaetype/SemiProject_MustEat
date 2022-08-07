package com.mz.store.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.mz.common.MyFileRenamePolicy;
import com.mz.notice.model.service.TosService;
import com.mz.notice.model.vo.Tos;
import com.mz.store.model.service.StoreService;
import com.mz.store.model.vo.Store;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class StorelistUpdateController
 */
@WebServlet("/storelistUpdate.st")
public class StorelistUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StorelistUpdateController() {
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
			
		String SavePath = session.getServletContext().getRealPath("/resources/image/jsw/store_upfiles/");
		
		int maxSize = 10 * 1024 * 1024;
		
		MultipartRequest multiRequest = new MultipartRequest(request, SavePath, maxSize, "UTF-8", new MyFileRenamePolicy());
		
		String storeName = multiRequest.getParameter("storename");
		String[] storeTagArr = multiRequest.getParameterValues("storemood");
		String storePhone = multiRequest.getParameter("storephone");
		String storeAddress = multiRequest.getParameter("storefulladdress");
		String storeIntro = multiRequest.getParameter("storeintro");
		String storePopularity = multiRequest.getParameter("storemenu");
		String storePopInfo = multiRequest.getParameter("storemenuintro");
		String storeOperating = multiRequest.getParameter("storeoperating");
		String storeBreaktime = multiRequest.getParameter("storebreak");
		String naverAddress = multiRequest.getParameter("storenaverurl");
		String dayOff = multiRequest.getParameter("storeholiday");
		String storeUrl = multiRequest.getParameter("storeurl");
		int storeNo = Integer.parseInt(multiRequest.getParameter("no"));
		
		
		String storeTag = "";
		if(storeTagArr != null) {
			storeTag = String.join(",", storeTagArr);
		}
		
		Store s = new Store();		
		s.setStoreNo(storeNo);
		s.setStoreName(storeName);
		s.setStoreTag(storeTag);
		s.setStoreAddress(storeAddress);
		s.setStorePhone(storePhone);
		s.setStoreIntro(storeIntro);
		s.setStorePopularity(storePopularity);
		s.setStorePopInfo(storePopInfo);
		s.setStoreOperating(storeOperating);
		s.setStoreBreaktime(storeBreaktime);
		s.setNaverAddress(naverAddress);
		s.setDayOff(dayOff);
		s.setStoreUrl(storeUrl);
				
		if(multiRequest.getOriginalFileName("storeimg") != null) {
			String storeImgPath = "resources/image/jsw/store_upfiles/" + multiRequest.getFilesystemName("storeimg");
			s.setStoreImgPath(storeImgPath);
		}
		
		if(multiRequest.getOriginalFileName("storemenuimg") != null) {
			String storePopPath = "resources/image/jsw/store_upfiles/" + multiRequest.getFilesystemName("storemenuimg");
			s.setStorePopPath(storePopPath);
		}

		int result = new StoreService().storelistUpdate(s);
		
		//System.out.println(s);
				
		if(result > 0) {
			// 등록 성공
			session.setAttribute("alertMsg", "성공적으로 식당 수정이 완료되었습니다.");
			response.sendRedirect(request.getContextPath() + "/storelistDetail.st?no=" + storeNo);
		}else { 
			// 등록 실패
			
			if(multiRequest.getOriginalFileName("storeimg") != null) {
				new File(SavePath + multiRequest.getFilesystemName("storeimg")).delete();
			}
			
			if(multiRequest.getOriginalFileName("storemenuimg") != null) {
				new File(SavePath + multiRequest.getFilesystemName("storemenuimg")).delete();
			}
						
			request.setAttribute("alertMsg", "식당 수정 실패");
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
