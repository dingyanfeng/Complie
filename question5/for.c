#include<stdio.h>
#include <immintrin.h>
int main(){
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
