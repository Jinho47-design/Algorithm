SELECT COUNT(*) AS COUNT
FROM ECOLI_DATA
WHERE (GENOTYPE & 2) = 0      -- 1. 2번 형질(2)은 없어야 함
  AND (
      (GENOTYPE & 1) > 0      -- 2. 1번 형질(1)이 있거나
      OR
      (GENOTYPE & 4) > 0      -- 3. 3번 형질(4)이 있어야 함
      );