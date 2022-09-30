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

    public UserDTO checkLogin(String userName, String password)
            throws SQLException, NamingException {
        Connection connection = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        UserDTO result = null;

        try {
            //1. Make connection
            connection = DBUtils.getConnection();

            if (connection != null) {

                //2. Create SQL String
                String sql = "Select userName, fullName, roleId "
                        + "From user "
                        + "Where userId = ? "
                        + "And password = ? ";
                //o day co dau "?" nen chung ta phai thiet lap tham so
                //dua vao trong lenh bang ham set

                //3. Create Statement to set SQL
                stm = connection.prepareStatement(sql);
                stm.setString(1, userName);
                stm.setString(2, password);
                //4. Execute Query
                rs = stm.executeQuery();// boi vi cau lenh sql la Select nen
                //phai dung executeQuery, neu cau lenh la insert, delete,
                //update thi dung executeUpdate

                //5. Process result
                if (rs.next()) {
                    int userId = rs.getInt("userName");
                    String fullName = rs.getString("fullName");
                    String roleId = rs.getString("roleId");
                    String address = rs.getString("address");
                    String phone = rs.getString("phone");
                    String email = rs.getString("email");
                    
                    result = new UserDTO(userId, password, address, phone, email,
                            fullName, roleId, userName);
                }
            }//end if connection is existed
        }catch(ClassNotFoundException ex){
            ex.printStackTrace();
        }finally {
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
            String sql = "Insert Into Registration(userId, password, roleId, userName) "
                    + "Values(?, ?, ?, ?)";
            //3. create stament
            stm = con.prepareStatement(sql);
            stm.setInt(1, dto.getUserId());
            stm.setString(2, dto.getPassword());
            stm.setString(3, dto.getRoleId());
            stm.setString(4, dto.getUserName());            
            
            //4. execute stament
            int row = stm.executeUpdate();
            //5. proccess result
            if (row > 0) {
                result = true;
            }
        }catch(ClassNotFoundException ex){
            ex.printStackTrace();
        }finally {

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