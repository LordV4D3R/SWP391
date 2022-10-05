/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author dell
 */
public class ProductDAO {

    private static final String SEARCH = "SELECT pro.productId, pro.name, pro.quantity, pro.description, pro.categoryId, pro.image, pro.status, pri.price "
                                       + "FROM product pro, price pri "
                                       + "WHERE pro.productId = pri.productId AND pro.name like ?";
    private static final String VIEW = "SELECT pro.productId, pro.name, pro.quantity, pri.price, pro.categoryId, pro.image, pro.description, pro.categoryId, pro.status "
                                     + "FROM product pro, price pri "
                                     + "WHERE pro.productId = pri.productId";
    private static final String VIEW_PRODUCT_BY_CATEGORY = "SELECT categoryId "
                                                         + "FROM product "
                                                         + "WHERE categoryId = ?";
    private static final String VIEW_CATEGORY = "SELECT categoryId ,categoryname "
                                              + "FROM category";
    private static final String DELETE = " product SET status=0 WHERE proID=?";
    private static final String UPDATE = "UPDATE product SET name=?, quantity=?, image=?, categoty=? WHERE productId=? ";
    private static final String CREATE = "INSERT INTO product(name, quantity, image, description, categotyId) VALUES(?,?,?,?,?)";

    public List<ProductDTO> viewProduct() throws SQLException {
        List<ProductDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(VIEW);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int productID = Integer.parseInt(rs.getString("productId"));
                    String name = rs.getString("name");
                    int quantity = Integer.parseInt(rs.getString("quantity"));
                    int price = rs.getInt("price");
                    String img = rs.getString("image");
                    String description = rs.getString("description");
                    String categoryID = rs.getString("categoryId");
                    int status = Integer.parseInt(rs.getString("status"));
                    list.add(new ProductDTO(productID, name, quantity, price, img, description, categoryID, status));
                }
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

        return list;
    }

    
    public List<ProductDTO> ViewCategory() throws SQLException {
        List<ProductDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(VIEW_CATEGORY);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String categoryId = rs.getString("categoryId");
                    String categoryName = rs.getString("categoryName");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) rs.close();
            if (ptm != null) ptm.close();
            if (conn != null) conn.close();
        }
        return list;
    }
    
    public List<ProductDTO> ViewByCategory(String cateId) throws SQLException {
        List<ProductDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(VIEW_PRODUCT_BY_CATEGORY);
                ptm.setString(1, cateId);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int productId = rs.getInt("productId");
                    String name = rs.getString("name");
                    int quantity = rs.getInt("quantity");
                    int price = rs.getInt("price");
                    String image = rs.getString("image");
                    String description = rs.getString("description");
                    String categoryId = rs.getString("categoryId");
                    int status = rs.getInt("status");
                    list.add(new ProductDTO(productId, name, quantity, price, image, description, categoryId, status));
                }
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
        return list;

    }

    public boolean create(ProductDTO product) throws ClassNotFoundException, SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CREATE);
                ptm.setInt(1, product.getProductId());
                ptm.setString(2, product.getName());
                ptm.setInt(3, product.getQuantity());
                ptm.setString(4, product.getImage());
                ptm.setString(5, product.getDescription());
                ptm.setString(6, product.getCategoryId());
                check = ptm.executeUpdate() > 0 ? true : false;
            }
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }

    public boolean update(ProductDTO product) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE);
                ptm.setString(1, product.getName());
                ptm.setInt(2, product.getQuantity());
                ptm.setString(3, product.getImage());
                ptm.setString(4, product.getDescription());
                ptm.setString(5, product.getCategoryId());
                check = ptm.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;

    }

    public boolean delete(ProductDTO product) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE);
                ptm.setInt(1, product.getStatus());
                check = ptm.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;

    }

    public List<ProductDTO> getListProduct(String search) throws SQLException {
        List<ProductDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SEARCH);
                ptm.setString(1, "%" + search + "%");
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int productId = rs.getInt("productId");
                    String name = rs.getString("name");
                    int quantity = rs.getInt("quantity");
                    int price = rs.getInt("price");
                    String image = rs.getString("image");
                    String description = rs.getString("description");
                    String categoryId = rs.getString("categoryId");
                    int status = rs.getInt("status");
                    list.add(new ProductDTO(productId, name, quantity, price, image, description, categoryId, status));
                }
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
        return list;

    }

    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();
        List<ProductDTO> list = dao.viewProduct();
        for (ProductDTO dto : list) {
            System.out.println(dto.toString());
        }
    }
}
