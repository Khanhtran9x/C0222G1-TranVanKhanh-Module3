USE furama;

-- Task 2
SELECT *
FROM nhan_vien
WHERE ((SELECT SUBSTRING_INDEX(ho_ten, ' ', -1)) LIKE 'H%' OR (SELECT SUBSTRING_INDEX(ho_ten, ' ', -1)) LIKE 'I%' 
OR (SELECT SUBSTRING_INDEX(ho_ten, ' ', -1)) LIKE  'K%')
AND LENGTH(ho_ten) <= 50;

-- Task 3
SELECT *
FROM khach_hang
WHERE ngay_sinh HAVING (TIMESTAMPDIFF(YEAR, ngay_sinh, CURRENT_DATE()) BETWEEN 18 AND 50)
AND dia_chi = 'Đà Nẵng' OR dia_chi = 'Quảng Trị';

-- Task 4
SELECT count(h.ma_khach_hang) AS 'so_lan_thue', kh.ho_ten, kh.ma_loai_khach
FROM hop_dong h JOIN khach_hang kh ON h.ma_khach_hang = kh.ma_khach_hang
WHERE kh.ma_loai_khach = 1
GROUP BY h.ma_khach_hang
ORDER BY COUNT(h.ma_khach_hang) ASC;

-- Task 5
SELECT kh.ma_khach_hang, kh.ho_ten, lk.ten_loai_khach, hd.ma_hop_dong, dv.ten_dich_vu, hd.ngay_lam_hop_dong, 
hd.ngay_ket_thuc, (dv.chi_phi_thue + hdct.so_luong * dvdk.gia) tong_tien
FROM 
khach_hang kh
JOIN loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
LEFT JOIN hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
LEFT JOIN dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
LEFT JOIN hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
LEFT JOIN dich_vu_di_kem dvdk ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
GROUP BY kh.ma_khach_hang;

-- Task 6
SELECT dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.so_nguoi_toi_da, dv.chi_phi_thue, ldv.ten_loai_dich_vu
FROM dich_vu dv
LEFT JOIN loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
LEFT JOIN hop_dong hd ON hd.ma_dich_vu = dv.ma_dich_vu;
