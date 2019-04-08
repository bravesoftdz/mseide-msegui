program ${%PROJECTNAME%};
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
{$ifdef FPC}
 {$ifdef mswindows}{$apptype gui}{$endif}
{$endif}
uses
 {$ifdef FPC}{$ifdef unix}cthreads,{$endif}{$endif}
 msegui,mseforms,main,
 mseconsts,
  //{
  mseconsts_af,mseconsts_am,mseconsts_an,mseconsts_ar,mseconsts_as,
  mseconsts_ast,mseconsts_az,mseconsts_be,mseconsts_bg,mseconsts_bn,
  mseconsts_br,mseconsts_bs,mseconsts_ca,mseconsts_crh,mseconsts_cs,
  mseconsts_cy,mseconsts_da,mseconsts_de,mseconsts_dz,mseconsts_el,
  mseconsts_eo,mseconsts_es,mseconsts_et,mseconsts_eu,mseconsts_fa,
  mseconsts_fi,mseconsts_fr,mseconsts_ga,mseconsts_gd,mseconsts_gl,
  mseconsts_gu,mseconsts_he,mseconsts_hi,mseconsts_hr,mseconsts_hu,
  mseconsts_hy,mseconsts_id,mseconsts_is,mseconsts_it,mseconsts_ja,
  mseconsts_ka,mseconsts_kk,mseconsts_km,mseconsts_kn,mseconsts_ko,
  mseconsts_ku,mseconsts_lb,mseconsts_ln,mseconsts_lo,mseconsts_lt,
  mseconsts_lv,mseconsts_mg,mseconsts_mi,mseconsts_mk,mseconsts_ml,
  mseconsts_mn,mseconsts_mr,mseconsts_ms,mseconsts_my,mseconsts_nb,
  mseconsts_nds,mseconsts_ne,mseconsts_nl,mseconsts_nn,mseconsts_oc,
  mseconsts_or,mseconsts_pa,mseconsts_pl,mseconsts_ps,mseconsts_pt,
  mseconsts_pt_BR,mseconsts_ro,mseconsts_ru,mseconsts_rw,mseconsts_si,
  mseconsts_sk,mseconsts_sl,mseconsts_sq,mseconsts_sr,mseconsts_sr_latin,
  mseconsts_sv,mseconsts_ta,mseconsts_te,mseconsts_tg,mseconsts_th,
  mseconsts_tk,mseconsts_tr,mseconsts_ug,mseconsts_uk,mseconsts_uz,
  mseconsts_uz_Latn,mseconsts_vi,mseconsts_wa,mseconsts_xh,mseconsts_zh,
  mseconsts_zh_HK,mseconsts_zh_TW;
 //};
begin
 setlangconsts(''); //set system default
 application.createform(tmainfo,mainfo);
 application.run;
end.
