; ModuleID = 'for.c'
source_filename = "for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__loadu_ps = type { <4 x float> }
%struct.__storeu_ps = type { <4 x float> }

@__const.main.D = private unnamed_addr constant [8 x float] [float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00], align 16
@__const.main.E = private unnamed_addr constant [8 x float] [float 7.000000e+00, float 6.000000e+00, float 5.000000e+00, float 4.000000e+00, float 3.000000e+00, float 2.000000e+00, float 1.000000e+00, float 0.000000e+00], align 16
@.str = private unnamed_addr constant [25 x i8] c"%f %f %f %f %f %f %f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca float*, align 8
  %2 = alloca <4 x float>, align 16
  %3 = alloca <4 x float>, align 16
  %4 = alloca float*, align 8
  %5 = alloca <4 x float>, align 16
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x float], align 16
  %9 = alloca [8 x float], align 16
  %10 = alloca [8 x float], align 16
  %11 = alloca <4 x float>, align 16
  %12 = alloca <4 x float>, align 16
  %13 = alloca <4 x float>, align 16
  %14 = alloca i32, align 4
  store i32 0, i32* %7, align 4
  %15 = bitcast [8 x float]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([8 x float]* @__const.main.D to i8*), i64 32, i1 false)
  %16 = bitcast [8 x float]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([8 x float]* @__const.main.E to i8*), i64 32, i1 false)
  store i32 0, i32* %14, align 4 ;i->%14
  br label %17

17:                                               ; preds = %52, %0
  %18 = load i32, i32* %14, align 4
  %19 = add nsw i32 %18, 4
  %20 = icmp sle i32 %19, 8
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = getelementptr inbounds [8 x float], [8 x float]* %8, i64 0, i64 0
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, float* %22, i64 %24
  store float* %25, float** %6, align 8
  %26 = load float*, float** %6, align 8
  %27 = bitcast float* %26 to %struct.__loadu_ps*
  %28 = getelementptr inbounds %struct.__loadu_ps, %struct.__loadu_ps* %27, i32 0, i32 0
  %29 = load <4 x float>, <4 x float>* %28, align 1
  store <4 x float> %29, <4 x float>* %11, align 16
  %30 = getelementptr inbounds [8 x float], [8 x float]* %9, i64 0, i64 0
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  store float* %33, float** %1, align 8
  %34 = load float*, float** %1, align 8
  %35 = bitcast float* %34 to %struct.__loadu_ps*
  %36 = getelementptr inbounds %struct.__loadu_ps, %struct.__loadu_ps* %35, i32 0, i32 0
  %37 = load <4 x float>, <4 x float>* %36, align 1
  store <4 x float> %37, <4 x float>* %12, align 16
  %38 = load <4 x float>, <4 x float>* %11, align 16
  %39 = load <4 x float>, <4 x float>* %12, align 16
  store <4 x float> %38, <4 x float>* %2, align 16
  store <4 x float> %39, <4 x float>* %3, align 16
  %40 = load <4 x float>, <4 x float>* %2, align 16
  %41 = load <4 x float>, <4 x float>* %3, align 16
  %42 = fadd <4 x float> %40, %41
  store <4 x float> %42, <4 x float>* %13, align 16
  %43 = getelementptr inbounds [8 x float], [8 x float]* %10, i64 0, i64 0
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %43, i64 %45
  %47 = load <4 x float>, <4 x float>* %13, align 16
  store float* %46, float** %4, align 8
  store <4 x float> %47, <4 x float>* %5, align 16
  %48 = load <4 x float>, <4 x float>* %5, align 16
  %49 = load float*, float** %4, align 8
  %50 = bitcast float* %49 to %struct.__storeu_ps*
  %51 = getelementptr inbounds %struct.__storeu_ps, %struct.__storeu_ps* %50, i32 0, i32 0
  store <4 x float> %48, <4 x float>* %51, align 1
  br label %52

52:                                               ; preds = %21
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 4
  store i32 %54, i32* %14, align 4
  br label %17

55:                                               ; preds = %17
  %56 = getelementptr inbounds [8 x float], [8 x float]* %10, i64 0, i64 0
  %57 = load float, float* %56, align 16
  %58 = fpext float %57 to double
  %59 = getelementptr inbounds [8 x float], [8 x float]* %10, i64 0, i64 1
  %60 = load float, float* %59, align 4
  %61 = fpext float %60 to double
  %62 = getelementptr inbounds [8 x float], [8 x float]* %10, i64 0, i64 2
  %63 = load float, float* %62, align 8
  %64 = fpext float %63 to double
  %65 = getelementptr inbounds [8 x float], [8 x float]* %10, i64 0, i64 3
  %66 = load float, float* %65, align 4
  %67 = fpext float %66 to double
  %68 = getelementptr inbounds [8 x float], [8 x float]* %10, i64 0, i64 4
  %69 = load float, float* %68, align 16
  %70 = fpext float %69 to double
  %71 = getelementptr inbounds [8 x float], [8 x float]* %10, i64 0, i64 5
  %72 = load float, float* %71, align 4
  %73 = fpext float %72 to double
  %74 = getelementptr inbounds [8 x float], [8 x float]* %10, i64 0, i64 6
  %75 = load float, float* %74, align 8
  %76 = fpext float %75 to double
  %77 = getelementptr inbounds [8 x float], [8 x float]* %10, i64 0, i64 7
  %78 = load float, float* %77, align 4
  %79 = fpext float %78 to double
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), double %58, double %61, double %64, double %67, double %70, double %73, double %76, double %79)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
