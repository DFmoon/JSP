package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import entity.items;
import util.DBHelper;

//商品的业务逻辑类
public class ItemsDAO {
	//获取所有商品信息
	public ArrayList<items> getAllItems(){
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		ArrayList<items> list=new ArrayList<items>();
		try{
			conn=DBHelper.getConnection();
			String sql="select * from items;";
			stmt=conn.prepareStatement(sql);
			rs=stmt.executeQuery();
			while(rs.next()){
				items item=new items();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setCity(rs.getString("city"));
				item.setNumber(rs.getInt("number"));
				item.setPrice(rs.getInt("price"));
				item.setPicture(rs.getString("picture"));
				list.add(item);
			}
			return list;
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			if(rs!=null){
				try {
					rs.close();
					rs=null;
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(stmt!=null){
				try {
					stmt.close();
					stmt=null;
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	//根据商品ID获取商品详情
	public items getItemsById(int id){
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		try{
			conn=DBHelper.getConnection();
			String sql="select * from items where id=?;";
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, id);
			rs=stmt.executeQuery();
			if(rs.next()){
				items item=new items();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setCity(rs.getString("city"));
				item.setNumber(rs.getInt("number"));
				item.setPrice(rs.getInt("price"));
				item.setPicture(rs.getString("picture"));
				return item;
			}else{
				return null;
			}
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}finally{
			if(rs!=null){
				try {
					rs.close();
					rs=null;
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(stmt!=null){
				try {
					stmt.close();
					stmt=null;
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	//获取最近浏览记录(5条)
	public ArrayList<items> getViewList(String list){
		ArrayList<items> itemlist=new ArrayList<items>();
		int iCount=5;
		if(list!=null && list.length()>0){
			String[] arr=list.split("#");
			//如果商品浏览记录>=5时
			if(arr.length>=iCount){
				for(int i=arr.length-1;i>=arr.length-iCount;i--){
					itemlist.add(getItemsById(Integer.parseInt(arr[i])));
				}
			}else{
				for(int i=arr.length-1;i>=0;i--){
					itemlist.add(getItemsById(Integer.parseInt(arr[i])));
				}
			}
			return itemlist;
		}else{
			return null;
		}
	}
}
