/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [كد نوع تسهيلات]
      ,sum([مبلغ قرارداد]) [مبلغ قرارداد]
      ,sum([مبلغ قسط]) [مبلغ قسط]
      ,left([تاريخ قرارداد],6) [تاريخ قرارداد]
      ,left([تاريخ اولين قسط],6) [تاريخ اولين قسط] 
      ,left([تاريخ پايان قرارداد],6) [تاريخ پايان قرارداد]
      ,[نرخ سود]
      ,[نرخ جريمه]
      ,[تعداد اقساط پرداخت شده]
      ,[تعداد اقساط]
      ,[فاصله اقساط]
      ,[نوع تقسيط]
      ,[كد سرفصل حسابداري]
      ,sum([مانده]) [مانده]
      ,[توضيح کد سرفصل1]
      ,[توضيح کد سرفصل2]
      ,[شرح نوع تقسيط]
      ,[وضعيت قرارداد]
	  ,(case when(140207 >  left([تاريخ پايان قرارداد],6)) then sum([مانده]) else 0 end)   as'140207-'
      ,(case when(140207 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140207'
	  ,(case when(140208 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140208'
	  ,(case when(140209 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140209'
	  ,(case when(140210 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140210'
	  ,(case when(140211 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140211'
	  ,(case when(140212 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140212'
	  ,(case when(140301 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140301'
	  ,(case when(140302 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140302'
	  ,(case when(140303 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140303'
	  ,(case when(140304 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140304'
	  ,(case when(140305 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140305'
	  ,(case when(140306 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140306'
	  ,(case when(140307 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140307'
	  ,(case when(140308 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140308'
	  ,(case when(140309 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140309'
	  ,(case when(140310 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140310'
	  ,(case when(140311 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140311'
	  ,(case when(140312 between left([تاريخ اولين قسط],6) and left([تاريخ پايان قرارداد],6)) then sum([مبلغ قسط])/coalesce(nullif([فاصله اقساط],0),1) else 0 end)   as'140312'
  FROM [alco-140207].[dbo].[قرارداد]
  group by 
        [كد نوع تسهيلات]
      ,left([تاريخ قرارداد],6) 
      ,left([تاريخ اولين قسط],6)  
      ,left([تاريخ پايان قرارداد],6) 
      ,[نرخ سود]
      ,[نرخ جريمه]
      ,[تعداد اقساط پرداخت شده]
      ,[تعداد اقساط]
      ,[فاصله اقساط]
      ,[نوع تقسيط]
      ,[كد سرفصل حسابداري]
      ,[توضيح کد سرفصل1]
      ,[توضيح کد سرفصل2]
      ,[شرح نوع تقسيط]
      ,[وضعيت قرارداد]