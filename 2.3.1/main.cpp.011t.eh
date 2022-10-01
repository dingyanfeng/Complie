
;; Function main (main, funcdef_no=1522, decl_uid=36325, cgraph_uid=436, symbol_order=438)

main ()
{
  struct basic_ostream & D.39985;
  int f;
  int n;
  int i;
  int D.39983;

  std::basic_istream<char>::operator>> (&cin, &n);
  i = 2;
  f = 1;
  <D.39981>:
  n.0_1 = n;
  if (i > n.0_1) goto <D.36376>; else goto <D.39982>;
  <D.39982>:
  f = f * i;
  i = i + 1;
  goto <D.39981>;
  <D.36376>:
  D.39985 = std::basic_ostream<char>::operator<< (&cout, f);
  _2 = D.39985;
  std::basic_ostream<char>::operator<< (_2, endl);
  D.39983 = 0;
  goto <D.39987>;
  <D.39987>:
  n = {CLOBBER};
  goto <D.39984>;
  D.39983 = 0;
  goto <D.39984>;
  <D.39984>:
  return D.39983;
  <D.39986>:
  n = {CLOBBER};
  resx 1
}



;; Function __static_initialization_and_destruction_0 (_Z41__static_initialization_and_destruction_0ii, funcdef_no=2008, decl_uid=39973, cgraph_uid=922, symbol_order=948)

__static_initialization_and_destruction_0 (int __initialize_p, int __priority)
{
  if (__initialize_p == 1) goto <D.39989>; else goto <D.39990>;
  <D.39989>:
  if (__priority == 65535) goto <D.39991>; else goto <D.39992>;
  <D.39991>:
  std::ios_base::Init::Init (&__ioinit);
  __cxa_atexit (__dt_comp , &__ioinit, &__dso_handle);
  goto <D.39993>;
  <D.39992>:
  <D.39993>:
  goto <D.39994>;
  <D.39990>:
  <D.39994>:
  return;
}



;; Function _GLOBAL__sub_I_main (_GLOBAL__sub_I_main, funcdef_no=2009, decl_uid=39979, cgraph_uid=923, symbol_order=1078)

_GLOBAL__sub_I_main ()
{
  __static_initialization_and_destruction_0 (1, 65535);
  return;
}


