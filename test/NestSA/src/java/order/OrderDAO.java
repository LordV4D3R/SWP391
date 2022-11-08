/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.NamingException;
import product.ProductDTO;
import users.UserDTO;
import utils.DBUtils;

/**
 *
 * @author Admin
 */
public class OrderDAO {

    private static final String INSERT_ORDER = "INSERT INTO Orders(date, userID, total, address, phone, shippingfee, reciever, status) VALUES (?,?,?,?,?,?,?,?)";
    private static final String GET_ORDER_ID = "SELECT TOP 1 * FROM Orders WHERE userID = ? ORDER BY orderId desc";
    private static final String INSERT_ORDER_DETAIL = "INSERT INTO OrderDetails(productID, orderID, quantity, price) VALUES(?, ?, ?, ?)";
    private static final String GET_PRODUCT_QUANTITY = "SELECT quantity FROM product WHERE productID = ?";
    private static final String UPDATE_PRODUCT_QUANTITY = "UPDATE product SET quantity = ? WHERE productId = ?";
    private static final String VIEW_ORDER_MANAGER = "SELECT ord.Reciever, ord.address, ord.phone, ord.date, ord.status, ord.shippingfee, ord.total, pro.name, detail.quantity, detail.price\n"
            + "FROM orders ord, orderDetails detail, product pro\n"
            + "WHERE ord.orderId = detail.orderId AND detail.productId = pro.productId";

    public int insertOrder(OrderDTO order) throws SQLException {
        int orderID = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(INSERT_ORDER);
                ptm.setString(1, order.getDate());
                ptm.setInt(2, order.getUserId());
                ptm.setFloat(3, order.getTotal());
                ptm.setString(4, order.getAddress());
                ptm.setString(5, order.getPhone());
                ptm.setInt(6, order.getShippingfee());
                ptm.setString(7, order.getReceiver());
                ptm.setString(8, order.getStatus());
                ptm.executeUpdate();
            }
            ptm = conn.prepareStatement(GET_ORDER_ID);
            ptm.setInt(1, order.getUserId());
            rs = ptm.executeQuery();
            while (rs.next()) {
                orderID = rs.getInt("orderID");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return orderID;
    }

    public boolean insertOrderDetail(OrderDetail orderDetail) throws SQLException {
        boolean check = false;
        int productQuantity = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(INSERT_ORDER_DETAIL);
                ptm.setInt(1, orderDetail.getProductID());
                ptm.setInt(2, orderDetail.getOrderID());
                ptm.setInt(3, orderDetail.getQuantity());
                ptm.setInt(4, orderDetail.getPrice());
                check = ptm.executeUpdate() > 0;

                ptm = conn.prepareStatement(GET_PRODUCT_QUANTITY);
                ptm.setInt(1, orderDetail.getProductID());
                rs = ptm.executeQuery();
                while (rs.next()) {
                    productQuantity = rs.getInt("quantity") - orderDetail.getQuantity();
                }

//                if (productQuantity > 0) {
                ptm = conn.prepareStatement(UPDATE_PRODUCT_QUANTITY);
                ptm.setInt(1, productQuantity);
                ptm.setInt(2, orderDetail.getProductID());
                check = ptm.executeUpdate() > 0;
//                } else {
//                    ProductDTO product
//                    ptm = conn.prepareStatement(UPDATE_STATUS_PRODUCT);
//                    ptm.setInt(1, product.getStatus());
//                    
//                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }

    private static final String GUEST_ID = "SELECT userId FROM users WHERE phone = ?";

    public int checkUserId(String phone) throws SQLException, NamingException {
        Connection connection = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        int userId = 0;
        try {
            //1. Make connection
            connection = DBUtils.getConnection();
            if (connection != null) {
                stm = connection.prepareStatement(GUEST_ID);
                stm.setString(1, phone);
                rs = stm.executeQuery();
                if (rs.next()) {
                    userId = rs.getInt("userId");
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
        return userId;
    }

}
