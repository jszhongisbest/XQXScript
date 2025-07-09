{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近四季EPS年增率前100名
// 顯示名稱: 近四季EPS年增率前100名
// 執行頻率: 季
// 
// 
value1 = Summation(GetField("EPS"), 4);
value2 = Summation(GetField("EPS")[4], 4);
value3 = 100 * (value1 - value2) / absvalue(value2);
if value3 <= 0 then return;
retval = value3;