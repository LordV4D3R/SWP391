/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package comment;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;
import utils.DBUtils;

/**
 *
 * @author tranq
 */
public class CommentDAO implements Serializable {

    private static final String VIEW_COMMENT = "SELECT commentId, userId, productId, Comment, status FROM comment WHERE productId = ? AND status = ?";
    private static final String CREATE_COMMENT = "Insert Into comment(userId, productId, Comment, status) Values(?, ?, ?, ?)";
    private static final String UPDATE_INFO = "UPDATE users SET fullName=?, address=?, email=?, phone=? WHERE userId=?";

    private List<CommentDTO> items;

    public List<CommentDTO> getItem() {
        return items;
    }

    public void viewComment(int productId, boolean status) throws SQLException, NamingException {
        Connection connection = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        CommentDTO result = null;

        try {
            //1. Make connection
            connection = DBUtils.getConnection();

            if (connection != null) {
                stm = connection.prepareStatement(VIEW_COMMENT);
                stm.setInt(1, productId);
                stm.setBoolean(2, status);
                rs = stm.executeQuery();
                while (rs.next()) {
                    int commentId = rs.getInt("commentId");
                    int userId = rs.getInt("userID");
                    String comment = rs.getString("Comment");
                    result = new CommentDTO(commentId, userId, productId,
                            comment, status);

                    if (this.items == null) {
                        this.items = new ArrayList<>();
                    }
                    this.items.add(result);
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
    }

    public boolean createComment(CommentDTO dto)
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
                stm = con.prepareStatement(CREATE_COMMENT);
                stm.setInt(1, dto.getUserId());
                stm.setInt(2, dto.getProductId());
                stm.setString(3, dto.getComment());
                stm.setBoolean(4, dto.isStatus());
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
