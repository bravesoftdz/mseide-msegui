{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
} 

unit mseconsts_zh;

{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
interface
uses
 mseconsts;
 
implementation
uses
 msetypes{msestrings},sysutils,mseformatstr;
 
const 
extendedconst: extendedaty =
 (
'zh',
'确定删除此条记录吗？',
'确定删除所选择的 %s 行记录吗？'
); 

 modalresulttext: defaultmodalresulttextty =
 (
'',
'',
'',
'',
'',
'',
'',
'离开',
'取消',
'确定',
'是',
'否',
'所有',
'',
'取消所有',
'忽略',
'',
'',
''
);

 modalresulttextnoshortcut: defaultmodalresulttextty =
 (
'',
'',
'',
'',
'',
'',
'',
'离开',
'取消',
'确定',
'是',
'否',
'所有',
'',
'取消所有',
'忽略',
'',
'',
'继续'
 );

 stockcaption: stockcaptionaty = (
'',
'无效',
'格式错误',
'值不能为空',
'错误',
'最小',
'最大',
'溢出错误',
'取消',
'重做',
'复制',
'剪切',
'粘贴',
'',
'插入一行',
'增加一行',
'删除所选行',
'文件夹',
'首页',
'向上',
'新文件夹',
'文件名',
'显示隐藏文件',
'保存类型',
'保存',
'打开',
'名称',
'新建文件夹',
'',
'',
'向上',
'文件',
'文件已经存在，是否覆盖？',
'',
'警告',
'错误',
'异常',
'',
'不存在',
'',
'',
'',
'找不到文件夹',
'图形格式不支持',
'图形格式错误',
'',
'',
'',
'',
'',
'',
'',
'',
'所有',
'证明',
'删除记录？',
'',
'关闭页',
'第一条',
'前一条',
'下一条',
'最后',
'增加',
'删除',
'修改',
'保存',
'离开',
'刷新',
'编辑器过滤',
'',
'',
'',
'过滤开启',
'查找',
'',
'',
'',
'插入',
'复制',
'粘贴',
'',
'',
'',
'取消',
'重做',
'剪切',
'',
'过滤关闭',
'',
'',
'确定删除此条记录吗？',
'确定删除所选记录吗？',
'',
'',
'',
'关闭',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'菜单',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'Cancel speech'
);

function delete_n_selected_rows(const params: array of const): msestring;
begin
 with params[0] do begin
  if vinteger = 1 then begin
   result:= extendedconst[ex_del_row_selected];
  end
  else begin
   result := StringReplace(extendedconst[ex_del_rows_selected], #37#115, inttostrmse(vinteger), [rfReplaceAll]);
  end;
 end;
end;

const
 textgenerator: defaultgeneratortextty = (
              {$ifdef FPC}@{$endif}delete_n_selected_rows
                                     );
initialization
 registerlangconsts(extendedconst[ex_lang],@stockcaption,@modalresulttext, 
        @modalresulttextnoshortcut,@textgenerator);
                               
end.
