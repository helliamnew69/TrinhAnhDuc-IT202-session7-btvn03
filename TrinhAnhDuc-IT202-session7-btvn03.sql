SELECT 
    s.email
FROM Students s
WHERE NOT EXISTS (
    SELECT 1
    FROM Payments p
    WHERE p.student_id = s.student_id
      AND p.payment_date >= '2024-01-01'
      AND p.payment_date <  '2025-01-01'
);