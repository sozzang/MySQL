SELECT HELLO('이름');

call usp_countBooks;

call usp_findbytitle("책1", @count);

SELECT @count;

call usp_selectTable('persons');

call usp_loop(10);

SELECT * FROM files;