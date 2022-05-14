USE furama;

-- Task 2
SELECT *
FROM nhan_vien
WHERE (ho_ten LIKE 'H%' or ho_ten LIKE 'K%' or ho_ten LIKE 'T%') and LENGTH(ho_ten) <= 15;

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