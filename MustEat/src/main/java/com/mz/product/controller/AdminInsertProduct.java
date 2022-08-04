package com.mz.product.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.mz.common.MyFileRenamePolicy;
import com.mz.product.model.service.ProductService;
import com.mz.product.model.vo.Product;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class AdminInsertProduct
 */
@WebServlet("/insertProduct.do")
public class AdminInsertProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminInsertProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10 * 1024 * 1024;
			
			String savePath = session.getServletContext().getRealPath("/resources/image/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "utf-8", new MyFileRenamePolicy());
			
			Product p = null;
			
			
		String ProductName = multiRequest.getParameter("pName");
		int price = Integer.parseInt(multiRequest.getParameter("price"));
		String seller = multiRequest.getParameter("seller");
		String sellerPhone = multiRequest.getParameter("sPhone");
		String saUnit = multiRequest.getParameter("saUnit");
		String capacity = multiRequest.getParameter("capacity");
		String packing = multiRequest.getParameter("packing");
		String allergy = multiRequest.getParameter("allergy");
		String exDate = multiRequest.getParameter("exDate");
		String imgPath = "resources/image/" +multiRequest.getFilesystemName("upfile");
		
		
		p = new Product(ProductName, price, seller, sellerPhone, saUnit, capacity, packing, allergy, exDate, imgPath);
		System.out.println(ProductName);
		int result = new ProductService().insertProduct(p);
		
		
		request.getRequestDispatcher("views/hsb/adminProductInsert.jsp").forward(request, response);
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
