package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/UserDetailServlet")
public class UserDetailServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;




	public UserDetailServlet() {
		super();

	}




	protected void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
		//URLからGETパラメータとしてIDを受け取る
		String id = request.getParameter("id");

		//確認用：idをコンソールに出力
		System.out.println(id);


		// TODO  未実装：idを引数にして、idに紐づくユーザ情報を出力する

		// TODO  未実装：ユーザ情報をリクエストスコープにセットしてjspにフォワード

	}


}
