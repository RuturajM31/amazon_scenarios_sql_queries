-- Create T_search_records table
CREATE TABLE T_search_records (
    User_id INT,
    Age_group VARCHAR(10),
    Search_id INT,
    Search_query VARCHAR(50),
    Date DATE
);

-- Insert sample data into T_search_records
INSERT INTO T_search_records (User_id, Age_group, Search_id, Search_query, Date) VALUES (101, '(0,30)', 20001, 'Apple', '2022-01-01');
INSERT INTO T_search_records (User_id, Age_group, Search_id, Search_query, Date) VALUES (102, '(30,45)', 20002, 'Orange', '2022-01-03');
INSERT INTO T_search_records (User_id, Age_group, Search_id, Search_query, Date) VALUES (103, '(45,60)', 20003, 'Banana', '2022-01-04');
INSERT INTO T_search_records (User_id, Age_group, Search_id, Search_query, Date) VALUES (104, '(0,30)', 20004, 'Watch', '2022-01-06');
INSERT INTO T_search_records (User_id, Age_group, Search_id, Search_query, Date) VALUES (101, '(0,30)', 20005, 'Orange', '2022-01-06');
INSERT INTO T_search_records (User_id, Age_group, Search_id, Search_query, Date) VALUES (101, '(0,30)', 20006, 'Apple', '2022-01-09');

-- Create T_search_results table
CREATE TABLE T_search_results (
    Search_id INT,
    Page_type VARCHAR(10),
    Clicked VARCHAR(5),
    Transaction_amount DECIMAL(10, 2)
);

-- Insert sample data into T_search_results
INSERT INTO T_search_results (Search_id, Page_type, Clicked, Transaction_amount) VALUES (20001, 'WEB', 'TRUE', 5);
INSERT INTO T_search_results (Search_id, Page_type, Clicked, Transaction_amount) VALUES (20002, 'WEB', 'FALSE', 0);
INSERT INTO T_search_results (Search_id, Page_type, Clicked, Transaction_amount) VALUES (20003, 'APP', 'FALSE', 0);
INSERT INTO T_search_results (Search_id, Page_type, Clicked, Transaction_amount) VALUES (20004, 'APP', 'TRUE', 9);
INSERT INTO T_search_results (Search_id, Page_type, Clicked, Transaction_amount) VALUES (20005, 'WEB', 'TRUE', 6);
INSERT INTO T_search_results (Search_id, Page_type, Clicked, Transaction_amount) VALUES (20006, 'APP', 'FALSE', 0);

-- SELECT * FROM T_search_records;
-- SELECT * FROM T_search_results;

