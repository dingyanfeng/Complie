; ModuleID = 'test_code.c'
source_filename = "test_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global0 = dso_local constant i32 999, align 4
@global2 = dso_local global i32 1, align 4
@.str = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1
@global1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%d %d %d %d %d %d %d %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%d %d %d %d %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@__const.main.arr1 = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16
@__const.main.arr2 = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 3, i32 4]], align 16
@.str.4 = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [4 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca [2 x [2 x i32]], align 16
  %27 = alloca i32, align 4
  %28 = alloca [4 x i32], align 16
  %29 = alloca i32, align 4
  %30 = alloca [2 x [2 x i32]], align 16
  %31 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 2, i32* %3, align 4
  store i32 666, i32* %4, align 4
  %32 = load i32, i32* @global1, align 4
  %33 = load i32, i32* @global2, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 999, i32 %32, i32 %33, i32 %34, i32 666)
  store i32 67, i32* %5, align 4
  store i32 67, i32* %6, align 4
  store i32 67, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %3, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %3, align 4
  %50 = srem i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp sgt i32 %73, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %77, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp sge i32 %81, %82
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp sle i32 %85, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %89, %90
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %20, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %0
  %103 = load i32, i32* %14, align 4
  %104 = icmp eq i32 %103, 1
  br label %105

105:                                              ; preds = %102, %0
  %106 = phi i1 [ false, %0 ], [ %104, %102 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %14, align 4
  %112 = icmp eq i32 %111, 1
  br label %113

113:                                              ; preds = %110, %105
  %114 = phi i1 [ true, %105 ], [ %112, %110 ]
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %22, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp eq i32 %116, 1
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %23, align 4
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* %22, align 4
  %122 = load i32, i32* %23, align 4
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %121, i32 %122)
  %124 = bitcast [4 x i32]* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %124, i8* align 16 bitcast ([4 x i32]* @__const.main.arr1 to i8*), i64 16, i1 false)
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %25, align 4
  %127 = bitcast [2 x [2 x i32]]* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %127, i8* align 16 bitcast ([2 x [2 x i32]]* @__const.main.arr2 to i8*), i64 16, i1 false)
  %128 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %26, i64 0, i64 1
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %128, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %27, align 4
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  store i32 1, i32* %131, align 16
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 1
  store i32 2, i32* %132, align 4
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 2
  store i32 3, i32* %133, align 8
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 3
  store i32 4, i32* %134, align 4
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  store i32 %136, i32* %29, align 4
  %137 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %30, i64 0, i64 0
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %137, i64 0, i64 0
  store i32 1, i32* %138, align 16
  %139 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %30, i64 0, i64 0
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %139, i64 0, i64 1
  store i32 2, i32* %140, align 4
  %141 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %30, i64 0, i64 1
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %141, i64 0, i64 0
  store i32 3, i32* %142, align 8
  %143 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %30, i64 0, i64 1
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %143, i64 0, i64 1
  store i32 4, i32* %144, align 4
  %145 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %30, i64 0, i64 0
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %145, i64 0, i64 0
  %147 = load i32, i32* %146, align 16
  store i32 %147, i32* %31, align 4
  %148 = load i32, i32* %25, align 4
  %149 = load i32, i32* %27, align 4
  %150 = load i32, i32* %29, align 4
  %151 = load i32, i32* %31, align 4
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %148, i32 %149, i32 %150, i32 %151)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
