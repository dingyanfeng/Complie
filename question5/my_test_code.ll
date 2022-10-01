; ModuleID = 'test_code.c'
source_filename = "test_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global0 = constant i32 999, align 4 ;global0=999
@global1 = global i32 0, align 4 ;global1(=0)
@global2 = global i32 1, align 4 ;global2=1
@.str = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"%d %d %d %d %d %d %d %d %d\0A\00", align 1
@.str2 = private unnamed_addr constant [19 x i8] c"%d %d %d %d %d %d\0A\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1
@.str5 = private unnamed_addr constant [25 x i8] c"%d %d %d %d %d %d %d %d\0A\00", align 1
@.str6 = private unnamed_addr constant [25 x i8] c"%f %f %f %f %f %f %f %f\0A\00", align 1
@__const.main.arr1 = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16
@__const.main.arr2 = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 3, i32 4]], align 16
@__const.main.A = private unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@__const.main.B = private unnamed_addr constant [8 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0], align 16
@__const.main.D = private unnamed_addr constant [8 x float] [float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00], align 16
@__const.main.E = private unnamed_addr constant [8 x float] [float 7.000000e+00, float 6.000000e+00, float 5.000000e+00, float 4.000000e+00, float 3.000000e+00, float 2.000000e+00, float 1.000000e+00, float 0.000000e+00], align 16
%struct.__loadu_ps = type { <4 x float> }
%struct.__storeu_ps = type { <4 x float> }

;Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
    ;变量声明、常量声明，常量、变量的初始化
    %val0 = alloca i32, align 4
    %val1 = alloca i32, align 4
    %val2 = alloca i32, align 4
    store i32 2, i32* %val1, align 4 ;val1=2
    store i32 666, i32* %val2, align 4 ;val2=666
    %1 = load i32, i32* @global1, align 4
    %2 = load i32, i32* @global2, align 4
    %3 = load i32, i32* %val1, align 4
    %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 999, i32 %1, i32 %2, i32 %3, i32 666)
    
    ;表达式：算术运算（+、-、*、/、%，其中+、-都可以是单目运算符）
    %val3 = alloca i32, align 4
    %val4 = alloca i32, align 4
    %val5 = alloca i32, align 4
    store i32 67, i32* %val3, align 4 ;val3=67
    store i32 67, i32* %val4, align 4 ;val4=67
    store i32 67, i32* %val5, align 4 ;val5=67
    %add = alloca i32, align 4
    %sub = alloca i32, align 4
    %mul = alloca i32, align 4
    %div = alloca i32, align 4
    %mod = alloca i32, align 4
    %5 = load i32, i32* %val3, align 4
    %6 = load i32, i32* %val1, align 4
    %7 = add nsw i32 %5, %6           ;val3+val1
    store i32 %7, i32* %add, align 4  ;add=val3+val1
    %8 = sub nsw i32 %5, %6           ;val3-val1
    store i32 %8, i32* %sub, align 4  ;sub=val3-val1
    %9 = mul nsw i32 %5, %6           ;val3*val1
    store i32 %9, i32* %mul, align 4  ;mul=val3*val1
    %10 = sdiv i32 %5, %6             ;val3/val1
    store i32 %10, i32* %div, align 4 ;div=val3/val1
    %11 = srem i32 %5, %6             ;val3%val1
    store i32 %11, i32* %mod, align 4 ;mod=val3%val1
    %12 = add nsw i32 %6, 1
    store i32 %12, i32* %val1, align 4 ;val1++
    %13 = sub nsw i32 %5, 1
    store i32 %13, i32* %val3, align 4 ;val3--
    %14 = load i32, i32* %val4, align 4
    %15 = add nsw i32 %14, 1
    store i32 %15, i32* %val4, align 4 ;++val4
    %16 = load i32, i32* %val5, align 4
    %17 = sub nsw i32 %16, 1
    store i32 %17, i32* %val5, align 4 ;--val5
    %18 = load i32, i32* %add, align 4
    %19 = load i32, i32* %sub, align 4
    %20 = load i32, i32* %mul, align 4
    %21 = load i32, i32* %div, align 4
    %22 = load i32, i32* %mod, align 4
    %23 = load i32, i32* %val1, align 4
    %24 = load i32, i32* %val3, align 4
    %25 = load i32, i32* %val4, align 4
    %26 = load i32, i32* %val5, align 4
    %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str1, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26)

    ;表达式：关系运算（==，>，<，>=，<=，!=）
    %num1 = alloca i32, align 4
    store i32 1, i32* %num1, align 4 ;num1=1
    %num2 = alloca i32, align 4
    store i32 0, i32* %num2, align 4 ;num2=0
    %ee = alloca i32, align 4
    %hh = alloca i32, align 4
    %ll = alloca i32, align 4
    %he = alloca i32, align 4
    %le = alloca i32, align 4
    %ne = alloca i32, align 4
    %28 = load i32, i32* %num1, align 4
    %29 = load i32, i32* %num2, align 4
    %30 = icmp eq i32 %28, %29       ;equal
    %31 = zext i1 %30 to i32         ;type change
    store i32 %31, i32* %ee, align 4 ;ee=(num1==num2)
    %32 = icmp sgt i32 %28, %29      ;signed greater than
    %33 = zext i1 %32 to i32
    store i32 %33, i32* %hh, align 4 ;hh=(num1>num2)
    %34 = icmp slt i32 %28, %29      ;signed less than
    %35 = zext i1 %34 to i32
    store i32 %35, i32* %ll, align 4 ;ll=(num1<num2)
    %36 = icmp sge i32 %28, %29      ;signed greater equal
    %37 = zext i1 %36 to i32
    store i32 %37, i32* %he, align 4 ;he=(num1>=num2)
    %38 = icmp sle i32 %28, %29      ;signed less equal
    %39 = zext i1 %38 to i32
    store i32 %39, i32* %le, align 4 ;le=(num1<=num2)
    %40 = icmp ne i32 %28, %29       ;not equal
    %41 = zext i1 %40 to i32
    store i32 %41, i32* %ne, align 4 ;ne=(num1!=num2)
    %42 = load i32, i32* %ee, align 4
    %43 = load i32, i32* %hh, align 4
    %44 = load i32, i32* %ll, align 4
    %45 = load i32, i32* %he, align 4
    %46 = load i32, i32* %le, align 4
    %47 = load i32, i32* %ne, align 4
    %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str2, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)

    ;表达式：逻辑运算（&&（与）、||（或）、!（非））
    %and = alloca i32, align 4
    %or = alloca i32, align 4
    %no = alloca i32, align 4
    %49 = load i32, i32* %num1, align 4
    %50 = load i32, i32* %num2, align 4
    ;and
    %51 = icmp eq i32 %49, 1
    br i1 %51,label %52, label %54
52:
    %53 = icmp eq i32 %50, 1
    br label %54
54:
    %55 = phi i1 [false, %0], [%53, %52] ;0->false 52->(num2==1)
    %56 = zext i1 %55 to i32
    store i32 %56, i32* %and, align 4

    ;or
    %57 = icmp eq i32 %49, 1
    br i1 %57, label %60, label %58
58:
    %59 = icmp eq i32 %50, 1
    br label %60
60:
    %61= phi i1 [true, %54], [%59, %58] ;54->true 58->(num2==1)
    %62 = zext i1 %61 to i32
    store i32 %62, i32* %or, align 4

    ;no
    %63 = icmp eq i32 %49, 1
    %64 = xor i1 %63, true              ;0->0^1->1   1->1^1->1
    %65 = zext i1 %64 to i32
    store i32 %65, i32* %no, align 4

    %66 = load i32, i32* %and, align 4
    %67 = load i32, i32* %or, align 4
    %68 = load i32, i32* %no, align 4
    %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str3, i64 0, i64 0), i32 %66, i32 %67, i32 %68)

    ;数组（一维、二维、…）的声明和数组元素访问
    %arr1 = alloca [4 x i32], align 16
    %arr1_1 = alloca i32, align 4
    %arr2 = alloca [2 x [2 x i32]], align 16
    %arr2_11 = alloca i32, align 4
    %arr3 = alloca [4 x i32], align 16
    %arr3_0 = alloca i32, align 4
    %arr4 = alloca [2 x [2 x i32]], align 16
    %arr4_00 = alloca i32, align 4

    %70 = bitcast [4 x i32]* %arr1 to i8*
    call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %70, i8* align 16 bitcast ([4 x i32]* @__const.main.arr1 to i8*), i64 16, i1 false)
    %71 = getelementptr inbounds [4 x i32], [4 x i32]* %arr1, i64 0, i64 1 ;arr1[1]
    %72 = load i32, i32* %71, align 4
    store i32 %72, i32* %arr1_1, align 4 ;arr1_1=arr1[1]

    %73 = bitcast [2 x [2 x i32]]* %arr2 to i8*
    call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %73, i8* align 16 bitcast ([2 x [2 x i32]]* @__const.main.arr2 to i8*), i64 16, i1 false)
    %74 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arr2, i64 0, i64 1 ;arr2[1]
    %75 = getelementptr inbounds [2 x i32], [2 x i32]* %74, i64 0, i64 1 ;arr2[1][1]
    %76 = load i32, i32* %75, align 4
    store i32 %76, i32* %arr2_11, align 4 ;arr2_11=arr2[1][1]

    %77 = getelementptr inbounds [4 x i32], [4 x i32]* %arr3, i64 0, i64 0
    store i32 1, i32* %77, align 4 ;arr3[0]=1
    %78 = getelementptr inbounds [4 x i32], [4 x i32]* %arr3, i64 0, i64 1
    store i32 2, i32* %78, align 4 ;arr3[1]=2
    %79 = getelementptr inbounds [4 x i32], [4 x i32]* %arr3, i64 0, i64 2
    store i32 3, i32* %79, align 4 ;arr3[2]=3
    %80 = getelementptr inbounds [4 x i32], [4 x i32]* %arr3, i64 0, i64 3
    store i32 4, i32* %80, align 4 ;ar3r[3]=4
    %81 = getelementptr inbounds [4 x i32], [4 x i32]* %arr3, i64 0, i64 0
    %82 = load i32, i32* %81, align 4
    store i32 %82, i32* %arr3_0, align 4 ;arr3_0=arr3[0]

    %83 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arr4, i64 0, i64 0
    %84 = getelementptr inbounds [2 x i32], [2 x i32]* %83, i64 0, i64 0
    store i32 1, i32* %84, align 4 ;arr4[0][0]=1
    %85 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arr4, i64 0, i64 0
    %86 = getelementptr inbounds [2 x i32], [2 x i32]* %85, i64 0, i64 1
    store i32 2, i32* %86, align 4 ;arr4[0][1]=2
    %87 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arr4, i64 0, i64 1
    %88 = getelementptr inbounds [2 x i32], [2 x i32]* %87, i64 0, i64 0
    store i32 3, i32* %88, align 4 ;arr4[1][0]=3
    %89 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arr4, i64 0, i64 1
    %90 = getelementptr inbounds [2 x i32], [2 x i32]* %89, i64 0, i64 1
    store i32 4, i32* %90, align 4 ;arr4[1][1]=4
    %91 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arr4, i64 0, i64 0
    %92 = getelementptr inbounds [2 x i32], [2 x i32]* %91, i64 0, i64 0
    %93 = load i32, i32* %92, align 16
    store i32 %93, i32* %arr4_00, align 4 ;arr4_00=arr4[0][0]

    %94 = load i32, i32* %arr1_1, align 4
    %95 = load i32, i32* %arr2_11, align 4
    %96 = load i32, i32* %arr3_0, align 4
    %97 = load i32, i32* %arr4_00, align 4
    %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str4, i64 0, i64 0), i32 %94, i32 %95, i32 %96, i32 %97)

    ;for语句
    %A = alloca [8 x i32], align 16
    %B = alloca [8 x i32], align 16
    %C = alloca [8 x i32], align 16
    %99 = bitcast [8 x i32]* %A to i8*
    call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %99, i8* align 16 bitcast ([8 x i32]* @__const.main.A to i8*), i64 32, i1 false)
    %100 = bitcast [8 x i32]* %B to i8*
    call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %100, i8* align 16 bitcast ([8 x i32]* @__const.main.B to i8*), i64 32, i1 false)
    %i = alloca i32, align 4
    store i32 0, i32* %i, align 4 ;i=0
    br label %101   ;no: error: expected instruction opcode
101:    ;judge
    %temp_i = load i32, i32* %i, align 4
    %102 = icmp slt i32 %temp_i, 8 ;i<8
    br i1 %102, label %103, label %113
103:    ;main part
    %104 = load i32, i32* %i, align 4
    %105 = sext i32 %104 to i64
    %106 = getelementptr inbounds [8 x i32], [8 x i32]* %A, i64 0, i64 %105
    %107 = load i32, i32* %106, align 4 ;A[i]
    %108 = getelementptr inbounds [8 x i32], [8 x i32]* %B, i64 0, i64 %105
    %109 = load i32, i32* %108, align 4 ;B[i]
    %110 = add nsw i32 %107, %109       ;A[i]+B[i]
    %111 = getelementptr inbounds [8 x i32], [8 x i32]* %C, i64 0, i64 %105
    store i32 %110, i32* %111, align 4  ;C[i]=A[i]+B[i]
    %112 = add nsw i32 %104, 1          ;i++
    store i32 %112, i32* %i, align 4
    br label %101
113:
    %114 = getelementptr inbounds [8 x i32], [8 x i32]* %C, i64 0, i64 0
    %115 = load i32, i32* %114, align 4
    %116 = getelementptr inbounds [8 x i32], [8 x i32]* %C, i64 0, i64 1
    %117 = load i32, i32* %116, align 4
    %118 = getelementptr inbounds [8 x i32], [8 x i32]* %C, i64 0, i64 2
    %119 = load i32, i32* %118, align 4
    %120 = getelementptr inbounds [8 x i32], [8 x i32]* %C, i64 0, i64 3
    %121 = load i32, i32* %120, align 4
    %122 = getelementptr inbounds [8 x i32], [8 x i32]* %C, i64 0, i64 4
    %123 = load i32, i32* %122, align 4
    %124 = getelementptr inbounds [8 x i32], [8 x i32]* %C, i64 0, i64 5
    %125 = load i32, i32* %124, align 4
    %126 = getelementptr inbounds [8 x i32], [8 x i32]* %C, i64 0, i64 6
    %127 = load i32, i32* %126, align 4
    %128 = getelementptr inbounds [8 x i32], [8 x i32]* %C, i64 0, i64 7
    %129 = load i32, i32* %128, align 4
    %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str5, i64 0, i64 0), i32 %115, i32 %117, i32 %119, i32 %121, i32 %123, i32 %125, i32 %127, i32 %129)

    ;SIMD
    %D = alloca [8 x float], align 16
    %E = alloca [8 x float], align 16
    %F = alloca [8 x float], align 16
    %131 = bitcast [8 x float]* %D to i8*
    call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %131, i8* align 16 bitcast ([8 x float]* @__const.main.D to i8*), i64 32, i1 false)
    %132 = bitcast [8 x float]* %E to i8*
    call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %132, i8* align 16 bitcast ([8 x float]* @__const.main.E to i8*), i64 32, i1 false)
    %vd = alloca <4 x float>, align 16
    %ve = alloca <4 x float>, align 16
    %vf = alloca <4 x float>, align 16
    %SIMD_i = alloca i32, align 4
    store i32 0, i32* %SIMD_i, align 4
    br label %133
133:
    %134 = load i32, i32* %SIMD_i, align 4
    %135 = add nsw i32 %134, 4
    %136 = icmp sle i32 %135, 8
    br i1 %136, label %137, label %163
137:
    %138 = getelementptr inbounds [8 x float], [8 x float]* %D, i64 0, i64 0 ;&D[0]
    %139 = load i32, i32* %SIMD_i, align 4 ;i 不能用%134，+4后和+4前
    %140 = sext i32 %139 to i64
    %141 = getelementptr inbounds float, float* %138, i64 %140 ;&(D+i)->四个float首地址
    %temp_addr1 = alloca float*, align 4
    store float* %141, float** %temp_addr1, align 4
    %142 = load float*, float** %temp_addr1, align 4
    %143 = bitcast float* %142 to %struct.__loadu_ps* 
    %144 = getelementptr inbounds %struct.__loadu_ps, %struct.__loadu_ps* %143, i32 0, i32 0
    %145 = load <4 x float>, <4 x float>* %144, align 1
    store <4 x float> %145, <4 x float>* %vd, align 16 ;vd = ...

    %146 = getelementptr inbounds [8 x float], [8 x float]* %E, i64 0, i64 0 ;&E[0]
    %147 = getelementptr inbounds float, float* %146, i64 %140 ;&(E+i)->四个float首地址
    %temp_addr2 = alloca float*, align 4
    store float* %147, float** %temp_addr2, align 4
    %148 = load float*, float** %temp_addr2, align 4
    %149 = bitcast float* %148 to %struct.__loadu_ps* 
    %150 = getelementptr inbounds %struct.__loadu_ps, %struct.__loadu_ps* %149, i32 0, i32 0
    %151 = load <4 x float>, <4 x float>* %150, align 1
    store <4 x float> %151, <4 x float>* %ve, align 16 ;ve = ...

    ;add
    %152 = load <4 x float>, <4 x float>* %vd, align 16
    %153 = load <4 x float>, <4 x float>* %ve, align 16
    %154 = fadd <4 x float> %152, %153
    store <4 x float> %154, <4 x float>* %vf, align 16

    %155 = getelementptr inbounds [8 x float], [8 x float]* %F, i64 0, i64 0
    %156 = getelementptr inbounds float, float* %155, i64 %140
    %temp_addr3 = alloca float*, align 4
    store float* %156, float** %temp_addr3, align 4
    %157 = load <4 x float>, <4 x float>* %vf, align 16 ;vf->%157
    %158 = load float*, float** %temp_addr3, align 4
    %159 = bitcast float* %158 to %struct.__storeu_ps*
    %160 = getelementptr inbounds %struct.__storeu_ps, %struct.__storeu_ps* %159, i32 0, i32 0
    store <4 x float> %157, <4 x float>* %160, align 1      ;vf->对应连续地址

    %161 = load i32, i32* %SIMD_i, align 4
    %162 = add nsw i32 %161, 4
    store i32 %162, i32* %SIMD_i, align 4
    br label %133
163:
    %164 = getelementptr inbounds [8 x float], [8 x float]* %F, i64 0, i64 0
    %165 = load float, float* %164, align 4
    %r1 = fpext float %165 to double    ;不转换输出错误结果
    %166 = getelementptr inbounds [8 x float], [8 x float]* %F, i64 0, i64 1
    %167 = load float, float* %166, align 4
    %r2 = fpext float %167 to double
    %168 = getelementptr inbounds [8 x float], [8 x float]* %F, i64 0, i64 2
    %169 = load float, float* %168, align 4
    %r3 = fpext float %169 to double
    %170 = getelementptr inbounds [8 x float], [8 x float]* %F, i64 0, i64 3
    %171 = load float, float* %170, align 4
    %r4 = fpext float %171 to double
    %172 = getelementptr inbounds [8 x float], [8 x float]* %F, i64 0, i64 4
    %173 = load float, float* %172, align 4
    %r5 = fpext float %173 to double
    %174 = getelementptr inbounds [8 x float], [8 x float]* %F, i64 0, i64 5
    %175 = load float, float* %174, align 4
    %r6 = fpext float %175 to double
    %176 = getelementptr inbounds [8 x float], [8 x float]* %F, i64 0, i64 6
    %177 = load float, float* %176, align 4
    %r7 = fpext float %177 to double
    %178 = getelementptr inbounds [8 x float], [8 x float]* %F, i64 0, i64 7
    %179 = load float, float* %178, align 4
    %r8 = fpext float %179 to double
    %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str6, i64 0, i64 0), double %r1, double %r2, double %r3, double %r4, double %r5, double %r6, double %r7, double %r8)

    ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
