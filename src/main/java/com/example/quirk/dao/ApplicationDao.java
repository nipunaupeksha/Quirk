package com.example.quirk.dao;

import com.example.quirk.beans.Product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
}
