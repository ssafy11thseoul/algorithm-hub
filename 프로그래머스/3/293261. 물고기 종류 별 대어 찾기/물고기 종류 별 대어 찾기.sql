-- 코드를 작성해주세요
SELECT FI.ID, FN.FISH_NAME, FI.LENGTH
FROM FISH_INFO AS FI
INNER JOIN FISH_NAME_INFO AS FN
ON FI.FISH_TYPE = FN.FISH_TYPE
WHERE (FI.FISH_TYPE, FI.LENGTH) IN (SELECT FISH_TYPE, MAX(LENGTH)
                                    FROM FISH_INFO
                                    GROUP BY FISH_TYPE)
ORDER BY FI.ID ASC;