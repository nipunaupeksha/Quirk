package com.example.quirk.dao;

import com.example.quirk.beans.Product;
import com.example.quirk.beans.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ApplicationDao {
    public List<Product> searchProducts(String searchString){
      Product product = null;
      List<Product> products = new ArrayList<>();
      try{
          Connection conn = DBConnection.getConnectionToDatabase();
          String sql = "select * from products where productName like '%"+searchString+"%'";
          Statement stm = conn.createStatement();
          ResultSet rst = stm.executeQuery(sql);
          while(rst.next()){
              product = new Product();
              product.setProductId(rst.getInt("productId"));
              product.setProductName(rst.getString("productName"));
              product.setProductDescription(rst.getString("productDescription"));
              product.setProductPrice(rst.getString("productPrice"));
              product.setProductImgPath(rst.getString("productImgPath"));
              products.add(product);
          }
      }catch(SQLException e){
          e.printStackTrace();
      }
      return products;
    }

    public int registerUser(User user) {
        int rowsAffected = 0;

        try {
            // get the connection for the database
            Connection conn = DBConnection.getConnectionToDatabase();

            // write the insert query
            String insertQuery = "insert into users values(?,?,?,?,?)";

            // set parameters with PreparedStatement
            PreparedStatement stm = conn.prepareStatement(insertQuery);
            stm.setString(1, user.getUsername());
            stm.setString(2, user.getPassword());
            stm.setString(3, user.getFirstName());
            stm.setString(4, user.getLastName());
            stm.setInt(5, user.getAge());

            // execute the statement
            rowsAffected = stm.executeUpdate();

        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsAffected;
    }
}
