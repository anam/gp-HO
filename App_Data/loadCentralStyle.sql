Declare @LastStyle nvarchar(256)
Declare @Style nvarchar(256)
declare @ID int
DECLARE product_cursor CURSOR FOR 
    SELECT ID,Style
    FROM Table_00

    OPEN product_cursor
    FETCH NEXT FROM product_cursor INTO @ID,@Style

    
    WHILE @@FETCH_STATUS = 0
    BEGIN

        if @Style <> ''
			set @LastStyle=@Style
			
        update Table_00 set Style =@LastStyle where ID=@ID
        
        FETCH NEXT FROM product_cursor INTO @ID,@Style
        END

    CLOSE product_cursor
    DEALLOCATE product_cursor
    Delete Table_00 where BarCode=''
    Select * from Table_00