*** IR Dump Before Pre-ISel Intrinsic Lowering ***
; ModuleID = 'main.ll'
source_filename = "main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt3cin = external dso_local global %"class.std::basic_istream", align 8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}

declare dso_local dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32* dereferenceable(4)) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
*** IR Dump After Pre-ISel Intrinsic Lowering ***
; ModuleID = 'main.ll'
source_filename = "main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt3cin = external dso_local global %"class.std::basic_istream", align 8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}

declare dso_local dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32* dereferenceable(4)) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
*** IR Dump Before Expand Atomic instructions ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Expand Atomic instructions ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Module Verifier ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Module Verifier ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Canonicalize natural loops ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Canonicalize natural loops ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Merge contiguous icmps into a memcmp ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Merge contiguous icmps into a memcmp ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Expand memcmp() to load/stores ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Expand memcmp() to load/stores ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Lower Garbage Collection Instructions ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Lower Garbage Collection Instructions ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Shadow Stack GC Lowering ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Shadow Stack GC Lowering ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Lower constant intrinsics ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Lower constant intrinsics ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Remove unreachable blocks from the CFG ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Remove unreachable blocks from the CFG ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Constant Hoisting ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Constant Hoisting ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Partially inline calls to library functions ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Partially inline calls to library functions ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Instrument function entry/exit with calls to e.g. mcount() (post inlining) ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Instrument function entry/exit with calls to e.g. mcount() (post inlining) ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Scalarize Masked Memory Intrinsics ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Scalarize Masked Memory Intrinsics ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Expand reduction intrinsics ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Expand reduction intrinsics ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Interleaved Access Pass ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Interleaved Access Pass ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Expand indirectbr instructions ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Expand indirectbr instructions ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before CodeGen Prepare ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After CodeGen Prepare ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Expand Atomic instructions ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Expand Atomic instructions ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Module Verifier ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Module Verifier ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Canonicalize natural loops ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Canonicalize natural loops ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Loop Strength Reduction ***
; Preheader:
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

; Loop:
6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

; Exit blocks
16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
*** IR Dump After Loop Strength Reduction ***
; Preheader:
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

; Loop:
6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

; Exit blocks
16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
*** IR Dump Before Merge contiguous icmps into a memcmp ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Merge contiguous icmps into a memcmp ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Expand memcmp() to load/stores ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Expand memcmp() to load/stores ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Lower Garbage Collection Instructions ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Lower Garbage Collection Instructions ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Shadow Stack GC Lowering ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Shadow Stack GC Lowering ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Lower constant intrinsics ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Lower constant intrinsics ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Remove unreachable blocks from the CFG ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Remove unreachable blocks from the CFG ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Constant Hoisting ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Constant Hoisting ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Partially inline calls to library functions ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Partially inline calls to library functions ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Instrument function entry/exit with calls to e.g. mcount() (post inlining) ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Instrument function entry/exit with calls to e.g. mcount() (post inlining) ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Scalarize Masked Memory Intrinsics ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Scalarize Masked Memory Intrinsics ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Expand reduction intrinsics ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Expand reduction intrinsics ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Interleaved Access Pass ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Interleaved Access Pass ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Expand indirectbr instructions ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Expand indirectbr instructions ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before CodeGen Prepare ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After CodeGen Prepare ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Expand Atomic instructions ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Expand Atomic instructions ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Module Verifier ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Module Verifier ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Canonicalize natural loops ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Canonicalize natural loops ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Merge contiguous icmps into a memcmp ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Merge contiguous icmps into a memcmp ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Expand memcmp() to load/stores ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Expand memcmp() to load/stores ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Lower Garbage Collection Instructions ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Lower Garbage Collection Instructions ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Shadow Stack GC Lowering ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Shadow Stack GC Lowering ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Lower constant intrinsics ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Lower constant intrinsics ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Remove unreachable blocks from the CFG ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Remove unreachable blocks from the CFG ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Constant Hoisting ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Constant Hoisting ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Partially inline calls to library functions ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Partially inline calls to library functions ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Instrument function entry/exit with calls to e.g. mcount() (post inlining) ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Instrument function entry/exit with calls to e.g. mcount() (post inlining) ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Scalarize Masked Memory Intrinsics ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Scalarize Masked Memory Intrinsics ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Expand reduction intrinsics ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Expand reduction intrinsics ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Interleaved Access Pass ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Interleaved Access Pass ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Expand indirectbr instructions ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Expand indirectbr instructions ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before CodeGen Prepare ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After CodeGen Prepare ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Rewrite Symbols ***
; ModuleID = 'main.ll'
source_filename = "main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt3cin = external dso_local global %"class.std::basic_istream", align 8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}

declare dso_local dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32* dereferenceable(4)) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
*** IR Dump After Rewrite Symbols ***
; ModuleID = 'main.ll'
source_filename = "main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt3cin = external dso_local global %"class.std::basic_istream", align 8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}

declare dso_local dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32* dereferenceable(4)) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
*** IR Dump Before Exception handling preparation ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Exception handling preparation ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Safe Stack instrumentation pass ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Safe Stack instrumentation pass ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump Before Module Verifier ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
*** IR Dump After Module Verifier ***
; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}
# *** IR Dump Before X86 DAG->DAG Instruction Selection ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

# End machine code for function __cxx_global_var_init.

# *** IR Dump After X86 DAG->DAG Instruction Selection ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %3:gr32 = COPY $eax
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Finalize ISel and expand pseudo-instructions ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %3:gr32 = COPY $eax
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Finalize ISel and expand pseudo-instructions ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %3:gr32 = COPY $eax
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before X86 Domain Reassignment Pass ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %3:gr32 = COPY $eax
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After X86 Domain Reassignment Pass ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %3:gr32 = COPY $eax
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Early Tail Duplication ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %3:gr32 = COPY $eax
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Early Tail Duplication ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %3:gr32 = COPY $eax
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Optimize machine instruction PHIs ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %3:gr32 = COPY $eax
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Optimize machine instruction PHIs ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %3:gr32 = COPY $eax
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Slot index numbering ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %3:gr32 = COPY $eax
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Slot index numbering ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
48B	  $rdi = COPY %0:gr64
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
112B	  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
128B	  %2:gr64 = MOV32ri64 @__dso_handle
144B	  $rdi = COPY %1:gr64
160B	  $rsi = COPY %0:gr64
176B	  $rdx = COPY %2:gr64
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  %3:gr32 = COPY $eax
240B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Merge disjoint stack slots ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
48B	  $rdi = COPY %0:gr64
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
112B	  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
128B	  %2:gr64 = MOV32ri64 @__dso_handle
144B	  $rdi = COPY %1:gr64
160B	  $rsi = COPY %0:gr64
176B	  $rdx = COPY %2:gr64
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  %3:gr32 = COPY $eax
240B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Merge disjoint stack slots ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %3:gr32 = COPY $eax
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Local Stack Slot Allocation ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %3:gr32 = COPY $eax
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Local Stack Slot Allocation ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %3:gr32 = COPY $eax
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Remove dead machine instructions ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %3:gr32 = COPY $eax
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Remove dead machine instructions ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Early If-Conversion ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Early If-Conversion ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Machine InstCombiner ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Machine InstCombiner ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before X86 cmov Conversion ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After X86 cmov Conversion ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Early Machine Loop Invariant Code Motion ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Early Machine Loop Invariant Code Motion ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Machine Common Subexpression Elimination ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Machine Common Subexpression Elimination ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Machine code sinking ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Machine code sinking ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Peephole Optimizations ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Peephole Optimizations ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Remove dead machine instructions ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Remove dead machine instructions ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Live Range Shrink ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Live Range Shrink ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before X86 LEA Optimize ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After X86 LEA Optimize ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before X86 Optimize Call Frame ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After X86 Optimize Call Frame ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before X86 Avoid Store Forwarding Blocks ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After X86 Avoid Store Forwarding Blocks ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before X86 speculative load hardening ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After X86 speculative load hardening ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before X86 EFLAGS copy lowering ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After X86 EFLAGS copy lowering ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Detect Dead Lanes ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Detect Dead Lanes ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Process Implicit Definitions ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Process Implicit Definitions ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Remove unreachable machine basic blocks ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Remove unreachable machine basic blocks ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Live Variable Analysis ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY %1:gr64
  $rsi = COPY %0:gr64
  $rdx = COPY %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Live Variable Analysis ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY killed %1:gr64
  $rsi = COPY killed %0:gr64
  $rdx = COPY killed %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Eliminate PHI nodes for register allocation ***:
# Machine code for function __cxx_global_var_init: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY killed %1:gr64
  $rsi = COPY killed %0:gr64
  $rdx = COPY killed %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Eliminate PHI nodes for register allocation ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY killed %1:gr64
  $rsi = COPY killed %0:gr64
  $rdx = COPY killed %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Two-Address instruction pass ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY killed %1:gr64
  $rsi = COPY killed %0:gr64
  $rdx = COPY killed %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Two-Address instruction pass ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY killed %1:gr64
  $rsi = COPY killed %0:gr64
  $rdx = COPY killed %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Slot index numbering ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
  $rdi = COPY %0:gr64
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  %2:gr64 = MOV32ri64 @__dso_handle
  $rdi = COPY killed %1:gr64
  $rsi = COPY killed %0:gr64
  $rdx = COPY killed %2:gr64
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Slot index numbering ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
48B	  $rdi = COPY %0:gr64
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
112B	  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
128B	  %2:gr64 = MOV32ri64 @__dso_handle
144B	  $rdi = COPY killed %1:gr64
160B	  $rsi = COPY killed %0:gr64
176B	  $rdx = COPY killed %2:gr64
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Live Interval Analysis ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
48B	  $rdi = COPY %0:gr64
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
112B	  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
128B	  %2:gr64 = MOV32ri64 @__dso_handle
144B	  $rdi = COPY killed %1:gr64
160B	  $rsi = COPY killed %0:gr64
176B	  $rdx = COPY killed %2:gr64
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Live Interval Analysis ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
48B	  $rdi = COPY %0:gr64
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
112B	  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
128B	  %2:gr64 = MOV32ri64 @__dso_handle
144B	  $rdi = COPY %1:gr64
160B	  $rsi = COPY %0:gr64
176B	  $rdx = COPY %2:gr64
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Simple Register Coalescing ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  %0:gr64 = MOV32ri64 @_ZStL8__ioinit
48B	  $rdi = COPY %0:gr64
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
112B	  %1:gr64 = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
128B	  %2:gr64 = MOV32ri64 @__dso_handle
144B	  $rdi = COPY %1:gr64
160B	  $rsi = COPY %0:gr64
176B	  $rdx = COPY %2:gr64
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Simple Register Coalescing ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Rename Disconnected Subregister Components ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Rename Disconnected Subregister Components ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Machine Instruction Scheduler ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Machine Instruction Scheduler ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Debug Variable Analysis ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Debug Variable Analysis ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Live Stack Slot Analysis ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Live Stack Slot Analysis ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Virtual Register Map ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Virtual Register Map ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Live Register Matrix ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Live Register Matrix ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Greedy Register Allocator ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Greedy Register Allocator ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Virtual Register Rewriter ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Virtual Register Rewriter ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Stack Slot Coloring ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Stack Slot Coloring ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Machine Copy Propagation Pass ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  $rdi = MOV32ri64 @_ZStL8__ioinit
64B	  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
80B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
96B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
160B	  $rsi = MOV32ri64 @_ZStL8__ioinit
176B	  $rdx = MOV32ri64 @__dso_handle
192B	  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
208B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
224B	  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Machine Copy Propagation Pass ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Machine Loop Invariant Code Motion ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Machine Loop Invariant Code Motion ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before X86 FP Stackifier ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After X86 FP Stackifier ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before PostRA Machine Sink ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After PostRA Machine Sink ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Shrink Wrapping analysis ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Shrink Wrapping analysis ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Prologue/Epilogue Insertion & Frame Finalization ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Prologue/Epilogue Insertion & Frame Finalization ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Control Flow Optimizer ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Control Flow Optimizer ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Tail Duplication ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Tail Duplication ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Machine Copy Propagation Pass ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Machine Copy Propagation Pass ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Post-RA pseudo instruction expansion pass ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rdi = MOV32ri64 @_ZStL8__ioinit
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $rdi = MOV32ri64 @_ZNSt8ios_base4InitD1Ev
  $rsi = MOV32ri64 @_ZStL8__ioinit
  $rdx = MOV32ri64 @__dso_handle
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Post-RA pseudo instruction expansion pass ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before X86 pseudo instruction expansion pass ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function __cxx_global_var_init.

# *** IR Dump After X86 pseudo instruction expansion pass ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Post RA top-down list latency scheduler ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Post RA top-down list latency scheduler ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Analyze Machine Code For Garbage Collection ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Analyze Machine Code For Garbage Collection ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Branch Probability Basic Block Placement ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Branch Probability Basic Block Placement ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Insert fentry calls ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Insert fentry calls ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Insert XRay ops ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Insert XRay ops ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Implement the 'patchable-function' attribute ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Implement the 'patchable-function' attribute ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before X86 Execution Dependency Fix ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After X86 Execution Dependency Fix ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before BreakFalseDeps ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After BreakFalseDeps ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before X86 Byte/Word Instruction Fixup ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After X86 Byte/Word Instruction Fixup ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before X86 LEA Fixup ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After X86 LEA Fixup ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Compressing EVEX instrs to VEX encoding when possible ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Compressing EVEX instrs to VEX encoding when possible ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Contiguously Lay Out Funclets ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Contiguously Lay Out Funclets ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before StackMap Liveness Analysis ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After StackMap Liveness Analysis ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Live DEBUG_VALUE analysis ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Live DEBUG_VALUE analysis ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump Before Check CFA info and insert CFI instructions if needed ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

# *** IR Dump After Check CFA info and insert CFI instructions if needed ***:
# Machine code for function __cxx_global_var_init: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $edi = MOV32ri @_ZStL8__ioinit, implicit-def $rdi
  CALL64pcrel32 @_ZNSt8ios_base4InitC1Ev, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit-def $rsp, implicit-def $ssp
  $edi = MOV32ri @_ZNSt8ios_base4InitD1Ev, implicit-def $rdi
  $esi = MOV32ri @_ZStL8__ioinit, implicit-def $rsi
  $edx = MOV32ri @__dso_handle, implicit-def $rdx
  CALL64pcrel32 @__cxa_atexit, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function __cxx_global_var_init.

*** IR Dump Before Exception handling preparation ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Exception handling preparation ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Safe Stack instrumentation pass ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Safe Stack instrumentation pass ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump Before Module Verifier ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
*** IR Dump After Module Verifier ***
; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %3)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
  %19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}
# *** IR Dump Before X86 DAG->DAG Instruction Selection ***:
# Machine code for function main: IsSSA, TracksLiveness

# End machine code for function main.

# *** IR Dump After X86 DAG->DAG Instruction Selection ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %2:gr64 = COPY $rax
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %9:gr64 = COPY $rax
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Finalize ISel and expand pseudo-instructions ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %2:gr64 = COPY $rax
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %9:gr64 = COPY $rax
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Finalize ISel and expand pseudo-instructions ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %2:gr64 = COPY $rax
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %9:gr64 = COPY $rax
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before X86 Domain Reassignment Pass ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %2:gr64 = COPY $rax
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %9:gr64 = COPY $rax
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After X86 Domain Reassignment Pass ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %2:gr64 = COPY $rax
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %9:gr64 = COPY $rax
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Early Tail Duplication ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %2:gr64 = COPY $rax
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %9:gr64 = COPY $rax
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Early Tail Duplication ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %2:gr64 = COPY $rax
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %9:gr64 = COPY $rax
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Optimize machine instruction PHIs ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %2:gr64 = COPY $rax
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %9:gr64 = COPY $rax
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Optimize machine instruction PHIs ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %2:gr64 = COPY $rax
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %9:gr64 = COPY $rax
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Slot index numbering ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %2:gr64 = COPY $rax
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %9:gr64 = COPY $rax
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Slot index numbering ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  %0:gr64 = MOV32ri64 @_ZSt3cin
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = COPY %0:gr64
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  %2:gr64 = COPY $rax
160B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
176B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

192B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

208B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
224B	  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
240B	  JCC_1 %bb.3, 15, implicit $eflags
256B	  JMP_1 %bb.2

272B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

288B	  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
304B	  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
320B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
336B	  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
352B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
368B	  JMP_1 %bb.1

384B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

400B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
416B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
432B	  %6:gr64 = MOV32ri64 @_ZSt4cout
448B	  $rdi = COPY %6:gr64
464B	  $esi = COPY %5:gr32
480B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
496B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
512B	  %7:gr64 = COPY $rax
528B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
560B	  $rdi = COPY %7:gr64
576B	  $rsi = COPY %8:gr64
592B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
608B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
624B	  %9:gr64 = COPY $rax
640B	  %10:gr32 = MOV32r0 implicit-def dead $eflags
656B	  $eax = COPY %10:gr32
672B	  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Merge disjoint stack slots ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  %0:gr64 = MOV32ri64 @_ZSt3cin
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = COPY %0:gr64
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  %2:gr64 = COPY $rax
160B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
176B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

192B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

208B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
224B	  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
240B	  JCC_1 %bb.3, 15, implicit $eflags
256B	  JMP_1 %bb.2

272B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

288B	  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
304B	  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
320B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
336B	  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
352B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
368B	  JMP_1 %bb.1

384B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

400B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
416B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
432B	  %6:gr64 = MOV32ri64 @_ZSt4cout
448B	  $rdi = COPY %6:gr64
464B	  $esi = COPY %5:gr32
480B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
496B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
512B	  %7:gr64 = COPY $rax
528B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
560B	  $rdi = COPY %7:gr64
576B	  $rsi = COPY %8:gr64
592B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
608B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
624B	  %9:gr64 = COPY $rax
640B	  %10:gr32 = MOV32r0 implicit-def dead $eflags
656B	  $eax = COPY %10:gr32
672B	  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Merge disjoint stack slots ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %2:gr64 = COPY $rax
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %9:gr64 = COPY $rax
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Local Stack Slot Allocation ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %2:gr64 = COPY $rax
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %9:gr64 = COPY $rax
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Local Stack Slot Allocation ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %2:gr64 = COPY $rax
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %9:gr64 = COPY $rax
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Remove dead machine instructions ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %2:gr64 = COPY $rax
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %9:gr64 = COPY $rax
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Remove dead machine instructions ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Early If-Conversion ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Early If-Conversion ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Machine InstCombiner ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Machine InstCombiner ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before X86 cmov Conversion ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After X86 cmov Conversion ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Early Machine Loop Invariant Code Motion ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Early Machine Loop Invariant Code Motion ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Machine Common Subexpression Elimination ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Machine Common Subexpression Elimination ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Machine code sinking ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Machine code sinking ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Peephole Optimizations ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %4:gr32 = SUB32rm %3:gr32(tied-def 0), %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Peephole Optimizations ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Remove dead machine instructions ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Remove dead machine instructions ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Live Range Shrink ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Live Range Shrink ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before X86 LEA Optimize ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After X86 LEA Optimize ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before X86 Optimize Call Frame ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After X86 Optimize Call Frame ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before X86 Avoid Store Forwarding Blocks ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After X86 Avoid Store Forwarding Blocks ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before X86 speculative load hardening ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After X86 speculative load hardening ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before X86 EFLAGS copy lowering ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After X86 EFLAGS copy lowering ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Detect Dead Lanes ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Detect Dead Lanes ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Process Implicit Definitions ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Process Implicit Definitions ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Remove unreachable machine basic blocks ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Remove unreachable machine basic blocks ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Live Variable Analysis ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY %0:gr64
  $rsi = COPY %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY %6:gr64
  $esi = COPY %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY %7:gr64
  $rsi = COPY %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY %10:gr32
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Live Variable Analysis ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY killed %0:gr64
  $rsi = COPY killed %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 killed %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY killed %6:gr64
  $esi = COPY killed %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY killed $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed %7:gr64
  $rsi = COPY killed %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY killed %10:gr32
  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump Before Eliminate PHI nodes for register allocation ***:
# Machine code for function main: IsSSA, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY killed %0:gr64
  $rsi = COPY killed %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 killed %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY killed %6:gr64
  $esi = COPY killed %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY killed $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed %7:gr64
  $rsi = COPY killed %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY killed %10:gr32
  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump After Eliminate PHI nodes for register allocation ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY killed %0:gr64
  $rsi = COPY killed %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 killed %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY killed %6:gr64
  $esi = COPY killed %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY killed $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed %7:gr64
  $rsi = COPY killed %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY killed %10:gr32
  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump Before Two-Address instruction pass ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY killed %0:gr64
  $rsi = COPY killed %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %12:gr32 = nsw IMUL32rm %11:gr32(tied-def 0), %stack.3, 1, $noreg, 0, $noreg, implicit-def dead $eflags :: (dereferenceable load 4 from %ir.4)
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = nsw ADD32ri8 killed %11:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY killed %6:gr64
  $esi = COPY killed %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY killed $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed %7:gr64
  $rsi = COPY killed %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY killed %10:gr32
  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump After Two-Address instruction pass ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY killed %0:gr64
  $rsi = COPY killed %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %14:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  %12:gr32 = COPY killed %14:gr32
  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %11:gr32, implicit-def dead $eflags
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = COPY killed %11:gr32
  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY killed %6:gr64
  $esi = COPY killed %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY killed $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed %7:gr64
  $rsi = COPY killed %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY killed %10:gr32
  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump Before Slot index numbering ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %0:gr64 = MOV32ri64 @_ZSt3cin
  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = COPY killed %0:gr64
  $rsi = COPY killed %1:gr64
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  %14:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  %12:gr32 = COPY killed %14:gr32
  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %11:gr32, implicit-def dead $eflags
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
  %13:gr32 = COPY killed %11:gr32
  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %6:gr64 = MOV32ri64 @_ZSt4cout
  $rdi = COPY killed %6:gr64
  $esi = COPY killed %5:gr32
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %7:gr64 = COPY killed $rax
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed %7:gr64
  $rsi = COPY killed %8:gr64
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  %10:gr32 = MOV32r0 implicit-def dead $eflags
  $eax = COPY killed %10:gr32
  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump After Slot index numbering ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  %0:gr64 = MOV32ri64 @_ZSt3cin
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = COPY killed %0:gr64
96B	  $rsi = COPY killed %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm killed %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %14:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
304B	  %12:gr32 = COPY killed %14:gr32
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %11:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
352B	  %13:gr32 = COPY killed %11:gr32
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
464B	  %6:gr64 = MOV32ri64 @_ZSt4cout
480B	  $rdi = COPY killed %6:gr64
496B	  $esi = COPY killed %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
576B	  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
592B	  $rdi = COPY killed %7:gr64
608B	  $rsi = COPY killed %8:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
656B	  %10:gr32 = MOV32r0 implicit-def dead $eflags
672B	  $eax = COPY killed %10:gr32
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump Before Live Interval Analysis ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  %0:gr64 = MOV32ri64 @_ZSt3cin
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = COPY killed %0:gr64
96B	  $rsi = COPY killed %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm killed %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %14:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
304B	  %12:gr32 = COPY killed %14:gr32
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %11:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed %12:gr32 :: (store 4 into %ir.4)
352B	  %13:gr32 = COPY killed %11:gr32
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
464B	  %6:gr64 = MOV32ri64 @_ZSt4cout
480B	  $rdi = COPY killed %6:gr64
496B	  $esi = COPY killed %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
576B	  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
592B	  $rdi = COPY killed %7:gr64
608B	  $rsi = COPY killed %8:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
656B	  %10:gr32 = MOV32r0 implicit-def dead $eflags
672B	  $eax = COPY killed %10:gr32
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump After Live Interval Analysis ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  %0:gr64 = MOV32ri64 @_ZSt3cin
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = COPY %0:gr64
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %14:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
304B	  %12:gr32 = COPY %14:gr32
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %11:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
352B	  %13:gr32 = COPY %11:gr32
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
464B	  %6:gr64 = MOV32ri64 @_ZSt4cout
480B	  $rdi = COPY %6:gr64
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
576B	  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
592B	  $rdi = COPY %7:gr64
608B	  $rsi = COPY %8:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
656B	  %10:gr32 = MOV32r0 implicit-def dead $eflags
672B	  $eax = COPY %10:gr32
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump Before Simple Register Coalescing ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
48B	  %0:gr64 = MOV32ri64 @_ZSt3cin
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = COPY %0:gr64
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %11:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %14:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
304B	  %12:gr32 = COPY %14:gr32
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %11:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
352B	  %13:gr32 = COPY %11:gr32
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
464B	  %6:gr64 = MOV32ri64 @_ZSt4cout
480B	  $rdi = COPY %6:gr64
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
576B	  %8:gr64 = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
592B	  $rdi = COPY %7:gr64
608B	  $rsi = COPY %8:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
656B	  %10:gr32 = MOV32r0 implicit-def dead $eflags
672B	  $eax = COPY %10:gr32
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump After Simple Register Coalescing ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
592B	  $rdi = COPY %7:gr64
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump Before Rename Disconnected Subregister Components ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
592B	  $rdi = COPY %7:gr64
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump After Rename Disconnected Subregister Components ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
592B	  $rdi = COPY %7:gr64
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump Before Machine Instruction Scheduler ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
592B	  $rdi = COPY %7:gr64
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit killed $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump After Machine Instruction Scheduler ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY %7:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump Before Debug Variable Analysis ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY %7:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump After Debug Variable Analysis ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY %7:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump Before Live Stack Slot Analysis ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY %7:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump After Live Stack Slot Analysis ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY %7:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump Before Virtual Register Map ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY %7:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump After Virtual Register Map ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY %7:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump Before Live Register Matrix ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY %7:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump After Live Register Matrix ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY %7:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump Before Greedy Register Allocator ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY killed $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY %7:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, killed $eax

# End machine code for function main.

# *** IR Dump After Greedy Register Allocator ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY %7:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Virtual Register Rewriter ***:
# Machine code for function main: NoPHIs, TracksLiveness
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  %1:gr64 = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
96B	  $rsi = COPY %1:gr64
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  %3:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm %3:gr32, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  %13:gr32 = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  %12:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  %12:gr32 = IMUL32rr %12:gr32(tied-def 0), %13:gr32, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, %12:gr32 :: (store 4 into %ir.4)
368B	  %13:gr32 = nsw ADD32ri8 %13:gr32(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, %13:gr32 :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  %5:gr32 = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
496B	  $esi = COPY %5:gr32
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
544B	  %7:gr64 = COPY $rax
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY %7:gr64
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Virtual Register Rewriter ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  renamable $rsi = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm killed renamable $eax, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  renamable $ecx = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
368B	  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $eax :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  renamable $esi = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY killed renamable $rax
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Stack Slot Coloring ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  renamable $rsi = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm killed renamable $eax, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  renamable $ecx = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
368B	  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $eax :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  renamable $esi = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY killed renamable $rax
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Stack Slot Coloring ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  renamable $rsi = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm killed renamable $eax, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  renamable $ecx = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
368B	  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $eax :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  renamable $esi = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY killed renamable $rax
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Machine Copy Propagation Pass ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

0B	bb.0 (%ir-block.0):
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

16B	  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
32B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  renamable $rsi = LEA64r %stack.2, 1, $noreg, 0, $noreg
80B	  $rdi = MOV32ri64 @_ZSt3cin
112B	  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
128B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
144B	  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
160B	  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

176B	bb.1 (%ir-block.6):
	; predecessors: %bb.0, %bb.2
	  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

192B	  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
208B	  CMP32rm killed renamable $eax, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
224B	  JCC_1 %bb.3, 15, implicit killed $eflags
240B	  JMP_1 %bb.2

256B	bb.2 (%ir-block.10):
	; predecessors: %bb.1
	  successors: %bb.1(0x80000000); %bb.1(100.00%)

272B	  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
288B	  renamable $ecx = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
320B	  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
336B	  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
368B	  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
384B	  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $eax :: (store 4 into %ir.2)
400B	  JMP_1 %bb.1

416B	bb.3 (%ir-block.16):
	; predecessors: %bb.1

432B	  renamable $esi = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
448B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
480B	  $rdi = MOV32ri64 @_ZSt4cout
512B	  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
528B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
560B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
608B	  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
616B	  $rdi = COPY killed renamable $rax
624B	  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
640B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
672B	  $eax = MOV32r0 implicit-def dead $eflags
688B	  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Machine Copy Propagation Pass ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  renamable $rsi = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $eax = MOV32r0 implicit-def dead $eflags
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Machine Loop Invariant Code Motion ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  renamable $rsi = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $eax = MOV32r0 implicit-def dead $eflags
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Machine Loop Invariant Code Motion ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  renamable $rsi = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $eax = MOV32r0 implicit-def dead $eflags
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before X86 FP Stackifier ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  renamable $rsi = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $eax = MOV32r0 implicit-def dead $eflags
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After X86 FP Stackifier ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  renamable $rsi = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $eax = MOV32r0 implicit-def dead $eflags
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before PostRA Machine Sink ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  renamable $rsi = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $eax = MOV32r0 implicit-def dead $eflags
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After PostRA Machine Sink ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  renamable $rsi = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $eax = MOV32r0 implicit-def dead $eflags
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Shrink Wrapping analysis ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  renamable $rsi = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $eax = MOV32r0 implicit-def dead $eflags
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Shrink Wrapping analysis ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  renamable $rsi = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $eax = MOV32r0 implicit-def dead $eflags
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Prologue/Epilogue Insertion & Frame Finalization ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#0: size=4, align=4, at location [SP+8]
  fi#1: size=4, align=4, at location [SP+8]
  fi#2: size=4, align=4, at location [SP+8]
  fi#3: size=4, align=4, at location [SP+8]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store 4 into %ir.1)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  renamable $rsi = LEA64r %stack.2, 1, $noreg, 0, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  MOV32mi %stack.1, 1, $noreg, 0, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi %stack.3, 1, $noreg, 0, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, %stack.2, 1, $noreg, 0, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm %stack.1, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm %stack.3, 1, $noreg, 0, $noreg :: (dereferenceable load 4 from %ir.4)
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  $eax = MOV32r0 implicit-def dead $eflags
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Prologue/Epilogue Insertion & Frame Finalization ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = MOV32r0 implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Control Flow Optimizer ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags
  JMP_1 %bb.2

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = MOV32r0 implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Control Flow Optimizer ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = MOV32r0 implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Tail Duplication ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = MOV32r0 implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Tail Duplication ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = MOV32r0 implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Machine Copy Propagation Pass ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = MOV32r0 implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Machine Copy Propagation Pass ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = MOV32r0 implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before Post-RA pseudo instruction expansion pass ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $rdi = MOV32ri64 @_ZSt3cin
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $rdi = MOV32ri64 @_ZSt4cout
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $rsi = MOV32ri64 @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  $rdi = COPY killed renamable $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = MOV32r0 implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After Post-RA pseudo instruction expansion pass ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0, $eax

# End machine code for function main.

# *** IR Dump Before X86 pseudo instruction expansion pass ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0, $eax

# End machine code for function main.

# *** IR Dump After X86 pseudo instruction expansion pass ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before Post RA top-down list latency scheduler ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After Post RA top-down list latency scheduler ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before Analyze Machine Code For Garbage Collection ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After Analyze Machine Code For Garbage Collection ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before Branch Probability Basic Block Placement ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After Branch Probability Basic Block Placement ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before Insert fentry calls ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After Insert fentry calls ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before Insert XRay ops ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After Insert XRay ops ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before Implement the 'patchable-function' attribute ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After Implement the 'patchable-function' attribute ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before X86 Execution Dependency Fix ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After X86 Execution Dependency Fix ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before BreakFalseDeps ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After BreakFalseDeps ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before X86 Byte/Word Instruction Fixup ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After X86 Byte/Word Instruction Fixup ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before X86 LEA Fixup ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After X86 LEA Fixup ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before Compressing EVEX instrs to VEX encoding when possible ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After Compressing EVEX instrs to VEX encoding when possible ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before Contiguously Lay Out Funclets ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After Contiguously Lay Out Funclets ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before StackMap Liveness Analysis ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After StackMap Liveness Analysis ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before Live DEBUG_VALUE analysis ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After Live DEBUG_VALUE analysis ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump Before Check CFA info and insert CFI instructions if needed ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

# *** IR Dump After Check CFA info and insert CFI instructions if needed ***:
# Machine code for function main: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]
  fi#0: size=4, align=4, at location [SP-24]
  fi#1: size=4, align=4, at location [SP-16]
  fi#2: size=4, align=4, at location [SP-20]
  fi#3: size=4, align=4, at location [SP-12]

bb.0 (%ir-block.0):
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  $rsp = frame-setup SUB64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  MOV32mi $rbp, 1, $noreg, -16, $noreg, 0 :: (store 4 into %ir.1)
  renamable $rsi = LEA64r $rbp, 1, $noreg, -12, $noreg
  $edi = MOV32ri @_ZSt3cin, implicit-def $rdi
  CALL64pcrel32 @_ZNSirsERi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  MOV32mi $rbp, 1, $noreg, -8, $noreg, 2 :: (store 4 into %ir.2)
  MOV32mi $rbp, 1, $noreg, -4, $noreg, 1 :: (store 4 into %ir.4)

bb.1 (%ir-block.6, align 4):
; predecessors: %bb.0, %bb.2
  successors: %bb.2(0x7c000000), %bb.3(0x04000000); %bb.2(96.88%), %bb.3(3.12%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  CMP32rm killed renamable $eax, $rbp, 1, $noreg, -12, $noreg, implicit-def $eflags :: (dereferenceable load 4 from %ir.3)
  JCC_1 %bb.3, 15, implicit killed $eflags

bb.2 (%ir-block.10):
; predecessors: %bb.1
  successors: %bb.1(0x80000000); %bb.1(100.00%)

  renamable $eax = MOV32rm $rbp, 1, $noreg, -8, $noreg :: (dereferenceable load 4 from %ir.2)
  renamable $ecx = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  renamable $ecx = IMUL32rr killed renamable $ecx(tied-def 0), renamable $eax, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -4, $noreg, killed renamable $ecx :: (store 4 into %ir.4)
  renamable $eax = nsw ADD32ri8 killed renamable $eax(tied-def 0), 1, implicit-def dead $eflags
  MOV32mr $rbp, 1, $noreg, -8, $noreg, killed renamable $eax :: (store 4 into %ir.2)
  JMP_1 %bb.1

bb.3 (%ir-block.16):
; predecessors: %bb.1

  renamable $esi = MOV32rm $rbp, 1, $noreg, -4, $noreg :: (dereferenceable load 4 from %ir.4)
  $edi = MOV32ri @_ZSt4cout, implicit-def $rdi
  CALL64pcrel32 @_ZNSolsEi, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $esi, implicit-def $rsp, implicit-def $ssp, implicit-def $rax
  $esi = MOV32ri @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, implicit-def $rsi
  $rdi = MOV64rr killed $rax
  CALL64pcrel32 @_ZNSolsEPFRSoS_E, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $rax
  $eax = XOR32rr undef $eax(tied-def 0), undef $eax, implicit-def dead $eflags
  $rsp = frame-destroy ADD64ri8 $rsp(tied-def 0), 16, implicit-def dead $eflags
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ $eax

# End machine code for function main.

*** IR Dump Before Exception handling preparation ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Exception handling preparation ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Safe Stack instrumentation pass ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Safe Stack instrumentation pass ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump Before Module Verifier ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
*** IR Dump After Module Verifier ***
; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}
# *** IR Dump Before X86 DAG->DAG Instruction Selection ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After X86 DAG->DAG Instruction Selection ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Finalize ISel and expand pseudo-instructions ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Finalize ISel and expand pseudo-instructions ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before X86 Domain Reassignment Pass ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After X86 Domain Reassignment Pass ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Early Tail Duplication ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Early Tail Duplication ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Optimize machine instruction PHIs ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Optimize machine instruction PHIs ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Slot index numbering ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Slot index numbering ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Merge disjoint stack slots ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Merge disjoint stack slots ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Local Stack Slot Allocation ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Local Stack Slot Allocation ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Remove dead machine instructions ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Remove dead machine instructions ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Early If-Conversion ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Early If-Conversion ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Machine InstCombiner ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Machine InstCombiner ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before X86 cmov Conversion ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After X86 cmov Conversion ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Early Machine Loop Invariant Code Motion ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Early Machine Loop Invariant Code Motion ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Machine Common Subexpression Elimination ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Machine Common Subexpression Elimination ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Machine code sinking ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Machine code sinking ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Peephole Optimizations ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Peephole Optimizations ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Remove dead machine instructions ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Remove dead machine instructions ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Live Range Shrink ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Live Range Shrink ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before X86 LEA Optimize ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After X86 LEA Optimize ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before X86 Optimize Call Frame ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After X86 Optimize Call Frame ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before X86 Avoid Store Forwarding Blocks ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After X86 Avoid Store Forwarding Blocks ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before X86 speculative load hardening ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After X86 speculative load hardening ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before X86 EFLAGS copy lowering ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After X86 EFLAGS copy lowering ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Detect Dead Lanes ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Detect Dead Lanes ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Process Implicit Definitions ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Process Implicit Definitions ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Remove unreachable machine basic blocks ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Remove unreachable machine basic blocks ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Live Variable Analysis ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Live Variable Analysis ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Eliminate PHI nodes for register allocation ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: IsSSA, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Eliminate PHI nodes for register allocation ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Two-Address instruction pass ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Two-Address instruction pass ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Slot index numbering ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Slot index numbering ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Live Interval Analysis ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Live Interval Analysis ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Simple Register Coalescing ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Simple Register Coalescing ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Rename Disconnected Subregister Components ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Rename Disconnected Subregister Components ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Machine Instruction Scheduler ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Machine Instruction Scheduler ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Debug Variable Analysis ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Debug Variable Analysis ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Live Stack Slot Analysis ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Live Stack Slot Analysis ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Virtual Register Map ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Virtual Register Map ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Live Register Matrix ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Live Register Matrix ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Greedy Register Allocator ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Greedy Register Allocator ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Virtual Register Rewriter ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Virtual Register Rewriter ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Stack Slot Coloring ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Stack Slot Coloring ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Machine Copy Propagation Pass ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs

0B	bb.0 (%ir-block.0):
16B	  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
32B	  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
48B	  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
64B	  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Machine Copy Propagation Pass ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Machine Loop Invariant Code Motion ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Machine Loop Invariant Code Motion ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before X86 FP Stackifier ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After X86 FP Stackifier ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before PostRA Machine Sink ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After PostRA Machine Sink ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Shrink Wrapping analysis ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Shrink Wrapping analysis ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Prologue/Epilogue Insertion & Frame Finalization ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs

bb.0 (%ir-block.0):
  ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Prologue/Epilogue Insertion & Frame Finalization ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Control Flow Optimizer ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Control Flow Optimizer ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Tail Duplication ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Tail Duplication ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Machine Copy Propagation Pass ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Machine Copy Propagation Pass ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Post-RA pseudo instruction expansion pass ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Post-RA pseudo instruction expansion pass ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before X86 pseudo instruction expansion pass ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RET 0

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After X86 pseudo instruction expansion pass ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Post RA top-down list latency scheduler ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Post RA top-down list latency scheduler ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Analyze Machine Code For Garbage Collection ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Analyze Machine Code For Garbage Collection ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Branch Probability Basic Block Placement ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Branch Probability Basic Block Placement ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Insert fentry calls ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Insert fentry calls ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Insert XRay ops ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Insert XRay ops ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Implement the 'patchable-function' attribute ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Implement the 'patchable-function' attribute ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before X86 Execution Dependency Fix ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After X86 Execution Dependency Fix ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before BreakFalseDeps ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After BreakFalseDeps ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before X86 Byte/Word Instruction Fixup ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After X86 Byte/Word Instruction Fixup ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before X86 LEA Fixup ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After X86 LEA Fixup ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Compressing EVEX instrs to VEX encoding when possible ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Compressing EVEX instrs to VEX encoding when possible ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Contiguously Lay Out Funclets ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Contiguously Lay Out Funclets ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before StackMap Liveness Analysis ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After StackMap Liveness Analysis ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Live DEBUG_VALUE analysis ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Live DEBUG_VALUE analysis ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump Before Check CFA info and insert CFI instructions if needed ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

# *** IR Dump After Check CFA info and insert CFI instructions if needed ***:
# Machine code for function _GLOBAL__sub_I_main.cpp: NoPHIs, TracksLiveness, NoVRegs
Frame Objects:
  fi#-1: size=8, align=16, fixed, at location [SP-8]

bb.0 (%ir-block.0):
  frame-setup PUSH64r killed $rbp, implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa_offset 16
  CFI_INSTRUCTION offset $rbp, -16
  $rbp = frame-setup MOV64rr $rsp
  CFI_INSTRUCTION def_cfa_register $rbp
  CALL64pcrel32 @__cxx_global_var_init, <regmask $bh $bl $bp $bph $bpl $bx $ebp $ebx $hbp $hbx $rbp $rbx $r12 $r13 $r14 $r15 $r12b $r13b $r14b $r15b $r12bh $r13bh $r14bh $r15bh $r12d $r13d $r14d $r15d $r12w $r13w $r14w $r15w $r12wh and 3 more...>, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  $rbp = frame-destroy POP64r implicit-def $rsp, implicit $rsp
  CFI_INSTRUCTION def_cfa $rsp, 8
  RETQ

# End machine code for function _GLOBAL__sub_I_main.cpp.

