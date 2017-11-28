package cn.tedu.pm.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyServletContextListener implements ServletContextListener {

	/**
	 * context 创建时
	 */
	public void contextInitialized(ServletContextEvent sce) {
		//将项目路径存放到作用域中
		String path = sce.getServletContext().getContextPath();
		sce.getServletContext().setAttribute("app", path);
	}

	/**
	 * context 销毁时
	 */
	public void contextDestroyed(ServletContextEvent sce) {
		sce.getServletContext().removeAttribute("app");
	}

}
