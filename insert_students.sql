USE `UniversityDB`;

-- Step 1: Insert student records into the `Students` table
INSERT INTO `Students` (`FirstName`, `LastName`, `EnrollmentDate`, `Email`)  -- StudentID is auto-incremented
VALUES
('Alice', 'Smith', '2023-09-01', 'alice.smith@example.com'),
('Bob', 'Johnson', '2023-09-01', 'bob.johnson@example.com'),
('Charlie', 'Lee', '2023-09-01', 'charlie.lee@example.com');

-- Alternative (if StudentID is NOT auto-incremented and you manage the IDs yourself):
-- INSERT INTO `Students` (StudentID, `FirstName`, `LastName`, `EnrollmentDate`, `Email`)
-- VALUES
--     (1, 'Alice', 'Smith', '2023-09-01', 'alice.smith@example.com'),
--     (2, 'Bob', 'Johnson', '2023-09-01', 'bob.johnson@example.com'),
--     (3, 'Charlie', 'Lee', '2023-09-01', 'charlie.lee@example.com');
USE `UniversityDB`;

-- Step 2: Update the Email for Bob Johnson
UPDATE `Students`
SET `Email` = 'bob.j@example.com'
WHERE `FirstName` = 'Bob' AND `LastName` = 'Johnson';  -- More robust WHERE clause

-- Alternative using StudentID (preferred if you know the ID):
-- UPDATE `Students`
-- SET `Email` = 'bob.j@example.com'
-- WHERE `StudentID` = 2;  -- Replace 2 with Bob's actual StudentID
USE `UniversityDB`;

-- Step 3: Delete the record for Charlie Lee
DELETE FROM `Students`
WHERE `FirstName` = 'Charlie' AND `LastName` = 'Lee'; -- More robust WHERE clause

-- Alternative using StudentID (preferred if you know the ID):
-- DELETE FROM `Students`
-- WHERE `StudentID` = 3;  -- Replace 3 with Charlie's actual StudentID
