package com.mkyong.dao;

import com.mkyong.model.MydbSp;

import java.util.List;

public interface Mydb_SanphamDAO {
    public List<MydbSp> getTatCaSanPham();
    public MydbSp getMotSanPham(String id);
    public List<MydbSp> pagination(int begin, int numberofrecord);
    public List<MydbSp> timkiemSanPham(String key);
    public List<MydbSp> phantrangDSSanPhamTimKiem(String key, int begin, int numberofrecord);
    public boolean xoaSanPhamKhoiGioHang(String id);
}
