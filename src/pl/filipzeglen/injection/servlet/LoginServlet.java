package pl.filipzeglen.injection.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DataSource ds = null;
        try {
            ds = getDataSource();
        } catch (NamingException e) {
            e.printStackTrace();
            response.sendError(500);
        }

        final String sqlQuery = "SELECT username, password FROM user WHERE username=? AND password=?";
        try (Connection conn = ds.getConnection();
             PreparedStatement statement = conn.prepareStatement(sqlQuery);) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String userFound = resultSet.getString("username");
                request.getSession().setAttribute("username", userFound);
                if ("admin".equals(userFound)) {
                    request.getSession().setAttribute("privigiles", "all");
                } else {
                    request.getSession().setAttribute("privigiles", "view");
                }
            } else {
                request.getSession().setAttribute("username", "Nieznajomy");
                request.getSession().setAttribute("privigiles", "none");
            }
            request.getRequestDispatcher("result.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(500);
        }
    }

    private DataSource getDataSource() throws NamingException {
        Context initialContext = new InitialContext();
        Context envContext = (Context) initialContext.lookup("java:comp/env");
        return (DataSource) envContext.lookup("jdbc/users");
    }

}