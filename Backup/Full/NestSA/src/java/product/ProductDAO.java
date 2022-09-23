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
     private static final String SEARCH = "SELECT productId, name, quantity, image, description, categoryId, status FROM tblProducts WHERE name LIKE ?";
     public List<ProductDTO> getListProduct(String search) throws SQLException{
        List<ProductDTO> list = new ArrayList<>();
        Connection conn=null;
        PreparedStatement ptm=null;
        ResultSet rs=null;
        try{
            conn=DBUtils.getConnection();
            if(conn!=null){
                ptm=conn.prepareStatement(SEARCH);
                ptm.setString(1, "%"+search+"%");
                rs=ptm.executeQuery();
                while(rs.next()){
                    int productId=rs.getInt("productId");
                    String name=rs.getString("name");
                    int quantity=rs.getInt("quantity");
                    String image=rs.getString("image");
                    String description=rs.getString("description");
                    String categoryId=rs.getString("categoryId");
                    int status=rs.getInt("status");
                    list.add(new ProductDTO(productId, name, quantity, image, description, categoryId, status));
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(rs!=null) rs.close();
            if(ptm!=null) ptm.close();
            if(conn!=null) conn.close();
        }
        return list;
        
    }
}