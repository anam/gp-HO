
  
  Delete [GentlePark].[dbo].[Pos_TransactionMaster] where Pos_TransactionMasterID>21 
  and [GentlePark].[dbo].[Pos_TransactionMaster].Pos_TransactionTypeID <> 25
  
  update [GentlePark].[dbo].[Pos_TransactionMaster] set TransactionDate='2014-01-10'
   where Pos_TransactionMasterID<=21 
  
   Delete [GentlePark].[dbo].[Pos_Transaction] 
   where [GentlePark].[dbo].[Pos_Transaction].Pos_ProductTransactionMasterID>21 
  and [GentlePark].[dbo].[Pos_Transaction].Pos_ProductTrasactionTypeID <> 25