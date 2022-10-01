#include<stdio.h>
#include <immintrin.h>
const int global0=999;
int global1;
int global2 = 1;
int main(){
    //变量声明、常量声明，常量、变量的初始化
    int val0;
    int val1 = 2;
    const int val2 = 666;
    printf("%d %d %d %d %d\n",global0,global1,global2,val1,val2);

    //表达式：算术运算（+、-、*、/、%，其中+、-都可以是单目运算符）
    int val3 = 67;
    int val4 = 67;
    int val5 = 67;
    int add,sub,mul,div,mod;
    add=val3+val1;
    sub=val3-val1;
    mul=val3*val1;
    div=val3/val1;
    mod=val3%val1;
    val1++;
    val3--;
    ++val4;
    --val5;
    printf("%d %d %d %d %d %d %d %d %d\n",add,sub,mul,div,mod,val1,val3,val4,val5);

    //表达式：关系运算（==，>，<，>=，<=，!=）
    int num1 = 1, num2 = 0;
    int ee,hh,ll,he,le,ne;
    ee=(num1==num2);
    hh=(num1>num2);
    ll=(num1<num2);
    he=(num1>=num2);
    le=(num1<=num2);
    ne=(num1!=num2);
    printf("%d %d %d %d %d %d\n",ee,hh,ll,he,le,ne);


    //表达式：逻辑运算（&&（与）、||（或）、!（非））
    int and,or,no;
    and=(num1==1 && num2==1);
    or =(num1==1 || num2==1);
    no =!(num1==1);
    printf("%d %d %d\n",and,or,no);


    //数组（一维、二维、…）的声明和数组元素访问
    int arr1[4] = {1,2,3,4};
    int arr1_1;
    arr1_1=arr1[1];

    int arr2[2][2]={{1,2},{3,4}};
    int arr2_11;
    arr2_11=arr2[1][1];

    int arr3[4];
    arr3[0]=1;arr3[1]=2;arr3[2]=3;arr3[3]=4;
    int arr3_0;
    arr3_0=arr3[0];
    
    int arr4[2][2];
    arr4[0][0]=1;arr4[0][1]=2;arr4[1][0]=3;arr4[1][1]=4;
    int arr4_00;
    arr4_00=arr4[0][0];

    printf("%d %d %d %d\n",arr1_1,arr2_11,arr3_0,arr4_00);

    //for循环
    int A[8]={0,1,2,3,4,5,6,7};
    int B[8]={7,6,5,4,3,2,1,0};
    int C[8];
    for(int i=0;i<8;i++){
        C[i]=B[i]+A[i];
    }

    printf("%d %d %d %d %d %d %d %d\n",C[0],C[1],C[2],C[3],C[4],C[5],C[6],C[7]);

    //SIMD 
    float D[8]={0,1,2,3,4,5,6,7};
    float E[8]={7,6,5,4,3,2,1,0};
    float F[8];
    __m128 vd,ve,vf;
    for(int i=0;i + 4 <= 8;i+=4){
        vd = _mm_loadu_ps(D + i);
        ve = _mm_loadu_ps(E + i);
        vf = _mm_add_ps(vd ,ve);
        _mm_storeu_ps(F + i, vf);
    }

    printf("%f %f %f %f %f %f %f %f\n",F[0],F[1],F[2],F[3],F[4],F[5],F[6],F[7]);

    return 0;
}
