/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package users;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.naming.NamingException;
import utils.DBUtils;

/**
 *
 * @author tranq
 */
public class UserDAO implements Serializable {

    private static final String LOGIN = "SELECT userId, username, password, address, phone, email, fullname, roleId FROM users WHERE username = ? AND password = ?";
    private static final String CHECK_DUPLICATE = "SELECT username FROM users WHERE username = ?";

    public UserDTO checkLogin(String userName, String password) throws SQLException, NamingException {
        Connection connection = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        UserDTO result = null;

        try {
            //1. Make connection
            connection = DBUtils.getConnection();

            if (connection != null) {
                stm = connection.prepareStatement(LOGIN);
                stm.setString(1, userName);
                stm.setString(2, password);
                rs = stm.executeQuery();
                if (rs.next()) {
                    int userId = rs.getInt("userID");
                    String fullName = rs.getString("fullName");
                    String roleId = rs.getString("roleId");
                    String address = rs.getString("address");
                    String phone = rs.getString("phone");
                    String email = rs.getString("email");

                    result = new UserDTO(userId, password, address, phone, email,
                            fullName, roleId, userName);
                }
            }
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }

            if (stm != null) {
                stm.close();
            }

            if (connection != null) {
                connection.close();
            }
        }
        return result;
    }
    
    public boolean checkDuplicate(String username) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CHECK_DUPLICATE);
                ptm.setString(1, username);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    check = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) rs.close();
            if (ptm != null) ptm.close();
            if (conn != null) conn.close();
        }
        return check;
    }

    private List<UserDTO> accounts;

    //móc dữ liệu lên nên ko cần set chỉ cần phương thức get
    public List<UserDTO> getAccounts() {
        return accounts;
    }

    public boolean createAccount(UserDTO dto)
            throws NamingException, SQLException {
        //đối vs trạng thái truyền obj thì phải kiểm tra xem obj có bằng null
        //hay ko, nếu bằng null thì ko làm j cả
        if (dto == null) {
            return false;
        }
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;

        try {
            //1. make connection
            con = DBUtils.getConnection();

            //2. create sql string
            String sql = "Insert Into users(password, roleId, userName) "
                    + "Values(?, ?, ?)";
            //3. create stament
            stm = con.prepareStatement(sql);
            stm.setString(1, dto.getPassword());
            stm.setString(2, dto.getRoleId());
            stm.setString(3, dto.getUserName());

            //4. execute stament
            int row = stm.executeUpdate();
            //5. proccess result
            if (row > 0) {
                result = true;
            }
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } finally {

            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }

        }
        return result;
    }

}
