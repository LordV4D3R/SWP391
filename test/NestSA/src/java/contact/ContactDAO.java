/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package contact;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import javax.naming.NamingException;
import utils.DBUtils;

/**
 *
 * @author tranq
 */
public class ContactDAO implements Serializable {

    private static final String INSERT_INTO_DB = "Insert Into contacts(senderName, email, phone, contactContent) Values(?, ?, ?, ?)";

    public List<ContactDTO> contact;

    //móc dữ liệu lên nên ko cần set chỉ cần phương thức get
    public List<ContactDTO> getAccounts() {
        return contact;
    }

    public boolean insertContact(ContactDTO dto)
            throws NamingException, SQLException {
        if (dto == null) {
            return false;
        }
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;

        try {
            con = DBUtils.getConnection();

            if (con != null) {
                stm = con.prepareStatement(INSERT_INTO_DB);
                stm.setString(1, dto.getSenderName());
                stm.setString(2, dto.getEmail());
                stm.setString(3, dto.getPhone());
                stm.setString(4, dto.getContactContent());

            }

            int row = stm.executeUpdate();

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
