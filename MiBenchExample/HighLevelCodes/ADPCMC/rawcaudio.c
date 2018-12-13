/* testc - Test adpcm coder */

#include "adpcm.h"
//#include <stdio.h>



#include "printf.h"
#include "lib-utils.h"








//HWISOO. memset from or1k-glibc-master/or1k-glib-master
//HWISOO. definition by myself.
typedef unsigned int size_t; ///home/sohwisoo/or1k-dev-env/mor1kx-dev-env-master/mor1kx-dev-env-master/sw/lib/include/lib-utils.h
//typedef unsigned char op_t; //myself

//C:\Users\thgnl\Downloads\or1k-glibc-master\or1k-glibc-master\string\memcmp.c
# define op_t	unsigned long int
# define OPSIZ	(sizeof(op_t))
# define byte unsigned char


//#include "libgcc2.h"

typedef unsigned int UQItype	__attribute__ ((mode (QI)));
typedef          int SItype	__attribute__ ((mode (SI)));
typedef unsigned int USItype	__attribute__ ((mode (SI)));
typedef          int DItype	__attribute__ ((mode (DI)));
typedef unsigned int UDItype	__attribute__ ((mode (DI)));
#define Wtype SItype
#define HWtype SItype
#define DWtype DItype
#define UWtype USItype
#define UHWtype USItype
#define UDWtype UDItype
#define W_TYPE_SIZE 32
#if __BYTE_ORDER == __BIG_ENDIAN
struct DWstruct { Wtype high, low;};
#elif __BYTE_ORDER == __LITTLE_ENDIAN
struct DWstruct { Wtype low, high;};
#else
#error Unhandled endianity
#endif
typedef union { struct DWstruct s; DWtype ll; } DWunion;
#include "longlong.h"

DWtype
__muldi3 (DWtype u, DWtype v)
{
  const DWunion uu = {.ll = u};
  const DWunion vv = {.ll = v};
  DWunion w = {.ll = __umulsidi3 (uu.s.low, vv.s.low)};

  w.s.high += ((UWtype) uu.s.low * (UWtype) vv.s.high
               + (UWtype) uu.s.high * (UWtype) vv.s.low);

  return w.ll;
}


inline __attribute__ ((__always_inline__))
UDWtype
__udivmoddi4 (UDWtype n, UDWtype d, UDWtype *rp)
{
  const DWunion nn = {.ll = n};
  const DWunion dd = {.ll = d};
  DWunion rr;
  UWtype d0, d1, n0, n1, n2;
  UWtype q0, q1;
  UWtype b, bm;

  d0 = dd.s.low;
  d1 = dd.s.high;
  n0 = nn.s.low;
  n1 = nn.s.high;

#if !UDIV_NEEDS_NORMALIZATION
  if (d1 == 0)
    {
      if (d0 > n1)
	{
	  /* 0q = nn / 0D */

	  udiv_qrnnd (q0, n0, n1, n0, d0);
	  q1 = 0;

	  /* Remainder in n0.  */
	}
      else
	{
	  /* qq = NN / 0d */

	  if (d0 == 0)
	    d0 = 1 / d0;	/* Divide intentionally by zero.  */

	  udiv_qrnnd (q1, n1, 0, n1, d0);
	  udiv_qrnnd (q0, n0, n1, n0, d0);

	  /* Remainder in n0.  */
	}

      if (rp != 0)
	{
	  rr.s.low = n0;
	  rr.s.high = 0;
	  *rp = rr.ll;
	}
    }

#else /* UDIV_NEEDS_NORMALIZATION */

  if (d1 == 0)
    {
      if (d0 > n1)
	{
	  /* 0q = nn / 0D */

	  count_leading_zeros (bm, d0);

	  if (bm != 0)
	    {
	      /* Normalize, i.e. make the most significant bit of the
		 denominator set.  */

	      d0 = d0 << bm;
	      n1 = (n1 << bm) | (n0 >> (W_TYPE_SIZE - bm));
	      n0 = n0 << bm;
	    }

	  udiv_qrnnd (q0, n0, n1, n0, d0);
	  q1 = 0;

	  /* Remainder in n0 >> bm.  */
	}
      else
	{
	  /* qq = NN / 0d */

	  if (d0 == 0)
	    d0 = 1 / d0;	/* Divide intentionally by zero.  */

	  count_leading_zeros (bm, d0);

	  if (bm == 0)
	    {
	      /* From (n1 >= d0) /\ (the most significant bit of d0 is set),
		 conclude (the most significant bit of n1 is set) /\ (the
		 leading quotient digit q1 = 1).

		 This special case is necessary, not an optimization.
		 (Shifts counts of W_TYPE_SIZE are undefined.)  */

	      n1 -= d0;
	      q1 = 1;
	    }
	  else
	    {
	      /* Normalize.  */

	      b = W_TYPE_SIZE - bm;

	      d0 = d0 << bm;
	      n2 = n1 >> b;
	      n1 = (n1 << bm) | (n0 >> b);
	      n0 = n0 << bm;

	      udiv_qrnnd (q1, n1, n2, n1, d0);
	    }

	  /* n1 != d0...  */

	  udiv_qrnnd (q0, n0, n1, n0, d0);

	  /* Remainder in n0 >> bm.  */
	}

      if (rp != 0)
	{
	  rr.s.low = n0 >> bm;
	  rr.s.high = 0;
	  *rp = rr.ll;
	}
    }
#endif /* UDIV_NEEDS_NORMALIZATION */

  else
    {
      if (d1 > n1)
	{
	  /* 00 = nn / DD */

	  q0 = 0;
	  q1 = 0;

	  /* Remainder in n1n0.  */
	  if (rp != 0)
	    {
	      rr.s.low = n0;
	      rr.s.high = n1;
	      *rp = rr.ll;
	    }
	}
      else
	{
	  /* 0q = NN / dd */

	  count_leading_zeros (bm, d1);
	  if (bm == 0)
	    {
	      /* From (n1 >= d1) /\ (the most significant bit of d1 is set),
		 conclude (the most significant bit of n1 is set) /\ (the
		 quotient digit q0 = 0 or 1).

		 This special case is necessary, not an optimization.  */

	      /* The condition on the next line takes advantage of that
		 n1 >= d1 (true due to program flow).  */
	      if (n1 > d1 || n0 >= d0)
		{
		  q0 = 1;
		  sub_ddmmss (n1, n0, n1, n0, d1, d0);
		}
	      else
		q0 = 0;

	      q1 = 0;

	      if (rp != 0)
		{
		  rr.s.low = n0;
		  rr.s.high = n1;
		  *rp = rr.ll;
		}
	    }
	  else
	    {
	      UWtype m1, m0;
	      /* Normalize.  */

	      b = W_TYPE_SIZE - bm;

	      d1 = (d1 << bm) | (d0 >> b);
	      d0 = d0 << bm;
	      n2 = n1 >> b;
	      n1 = (n1 << bm) | (n0 >> b);
	      n0 = n0 << bm;

	      udiv_qrnnd (q0, n1, n2, n1, d1);
	      umul_ppmm (m1, m0, q0, d0);

	      if (m1 > n1 || (m1 == n1 && m0 > n0))
		{
		  q0--;
		  sub_ddmmss (m1, m0, m1, m0, d1, d0);
		}

	      q1 = 0;

	      /* Remainder in (n1n0 - m1m0) >> bm.  */
	      if (rp != 0)
		{
		  sub_ddmmss (n1, n0, n1, n0, m1, m0);
		  rr.s.low = (n1 << b) | (n0 >> bm);
		  rr.s.high = n1 >> bm;
		  *rp = rr.ll;
		}
	    }
	}
    }

  const DWunion ww = {{.low = q0, .high = q1}};
  return ww.ll;
}

UDWtype
__udivdi3 (UDWtype n, UDWtype d)
{
  return __udivmoddi4 (n, d, (UDWtype *) 0);
}



void *
memset (dstpp, c, len)
     void *dstpp;
     int c;
     size_t len;
{
  long int dstp = (long int) dstpp;

  if (len >= 8)
    {
      size_t xlen;
      op_t cccc;

      cccc = (unsigned char) c;
      cccc |= cccc << 8;
      cccc |= cccc << 16;
      if (OPSIZ > 4)
	/* Do the shift in two steps to avoid warning if long has 32 bits.  */
	cccc |= (cccc << 16) << 16;

      /* There are at least some bytes to set.
	 No need to test for LEN == 0 in this alignment loop.  */
      while (dstp % OPSIZ != 0)
	{
	  ((byte *) dstp)[0] = c;
	  dstp += 1;
	  len -= 1;
	}

      /* Write 8 `op_t' per iteration until less than 8 `op_t' remain.  */
      xlen = len / (OPSIZ * 8);
      while (xlen > 0)
	{
	  ((op_t *) dstp)[0] = cccc;
	  ((op_t *) dstp)[1] = cccc;
	  ((op_t *) dstp)[2] = cccc;
	  ((op_t *) dstp)[3] = cccc;
	  ((op_t *) dstp)[4] = cccc;
	  ((op_t *) dstp)[5] = cccc;
	  ((op_t *) dstp)[6] = cccc;
	  ((op_t *) dstp)[7] = cccc;
	  dstp += 8 * OPSIZ;
	  xlen -= 1;
	}
      len %= OPSIZ * 8;

      /* Write 1 `op_t' per iteration until less than OPSIZ bytes remain.  */
      xlen = len / OPSIZ;
      while (xlen > 0)
	{
	  ((op_t *) dstp)[0] = cccc;
	  dstp += OPSIZ;
	  xlen -= 1;
	}
      len %= OPSIZ;
    }

  /* Write the last few bytes.  */
  while (len > 0)
    {
      ((byte *) dstp)[0] = c;
      dstp += 1;
      len -= 1;
    }

  return dstpp;
}







struct adpcm_state state;

#define NSAMPLES 1000

char	abuf[NSAMPLES/2];
short	sbuf[NSAMPLES]=
{0,0,-15616,191,-15616,-15425,191,-16445,0,0,-15616,-15425,191,0,-15616,-15425,191,0,-15616,-15425,-15425,190,0,-15616,-15425,191,-15616,191,-16445,0,0,-16445,0,-15616,190,0,0,0,0,0,-16445,-16445,0,0,0,0,-16445,0,-15616,191,0,-15616,-15425,190,0,-15616,-15425,191,0,-15616,191,0,-16445,-16701,0,0,0,0,0,0,-15616,191,0,-15616,-15425,191,-15616,-15425,191,0,-16445,-16445,0,0,-15616,191,0,0,0,-16445,-16445,-16445,0,0,-16445,0,0,-16445,0,-16445,0,-16445,-15616,-15425,191,0,-16445,-16445,0,0,-16445,256,-15616,-15425,191,0,-15616,-15425,191,-15616,-15425,191,0,0,-16445,0,0,-15616,-15425,191,0,-15616,-15425,191,0,-16445,0,0,-16445,-16445,0,0,-16445,0,0,-16701,0,0,-15616,191,-15616,191,-15616,191,-16445,-16445,0,0,-15616,191,0,0,0,0,-15616,-15425,191,0,0,-16445,0,-16445,0,-16445,256,0,-16445,-16445,0,0,-16445,0,-16445,0,0,0,0,0,-15616,447,-16445,-16445,0,-16445,-15616,-15425,191,-15616,191,1,0,0,0,-16445,0,0,-16445,-16445,0,0,-15616,191,-16445,0,0,0,-15616,191,-16445,0,0,0,-15616,191,0,0,-16445,256,0,-15616,-15425,447,-15616,191,-15616,190,-16445,-16957,256,0,-15616,190,0,-16445,0,-16445,0,-16445,0,0,0,-15616,191,0,-15616,-15425,191,0,-15616,-15425,-15425,191,-15616,191,-16445,-16445,0,0,0,0,0,0,0,0,-16445,0,0,-15616,191,-16445,-16445,0,-16445,0,0,0,0,-15616,191,0,-16445,-15616,191,0,-15616,191,0,0,-16445,0,-15615,191,0,0,-16445,-16445,0,0,0,-16445,0,0,0,0,-15616,-15425,191,0,0,0,-15616,-15426,191,0,0,0,-15616,191,-15616,-15425,191,0,-15616,191,0,-15616,-15425,191,0,-16445,-16445,0,256,-15616,191,0,0,0,-15616,190,0,0,-15616,191,-15615,191,0,-16445,0,0,-16445,-16701,-16445,0,0,-16445,0,-16701,-16445,0,0,-16445,0,-15615,-15425,-15425,-15425,191,-15616,-15425,191,-16445,0,-15616,191,-16445,0,0,0,-16445,0,-15616,191,0,0,-15616,191,0,256,0,-15616,190,0,-16445,-16445,-16445,0,0,0,0,-16445,0,0,-15616,190,0,0,-16445,-16445,0,0,0,-16445,-15616,-15425,191,-15616,191,0,-15616,191,0,0,-16445,0,0,0,0,0,-16445,0,0,0,0,0,0,-15616,-15425,191,0,0,0,0,-16445,0,0,-16445,-16445,0,0,0,-16701,0,-16445,0,-16445,0,-16445,0,0,-15616,-15425,191,0,-16445,0,0,-16445,-16445,-16445,0,0,0,0,-16445,0,0,-15616,191,256,0,0,256,-16445,-16445,0,0,-16445,-16445,0,0,0,-15616,191,0,0,-16445,0,0,-16445,-16445,0,-15616,191,0,-15616,-15425,-15425,191,0,-15616,191,0,-15616,191,0,-16445,0,-16445,257,0,-16445,-16445,0,0,0,-15616,191,-15616,191,0,0,-16445,0,0,0,0,0,0,-15616,191,0,0,-16445,0,0,-15616,-15426,447,0,-16445,-16701,256,-15616,191,-16445,256,0,0,-16445,0,0,0,0,0,-16445,0,0,-15616,189,-15616,191,-16445,-16445,1,-16445,0,256,0,0,0,-16445,-16445,0,0,0,-16445,-16701,0,0,-16445,-16701,0,0,-16445,-16701,0,0,0,-16445,0,0,-15616,190,0,-15616,-15425,190,0,-16445,-16445,0,0,-16445,0,0,-16445,-16445,0,-15616,191,0,0,0,0,-16445,0,-16445,-15616,191,-15616,191,0,-15616,191,-16445,0,-16445,-16445,-16445,-16445,0,-15616,191,0,0,-16445,-16445,0,0,0,0,-16445,256,-15616,191,-16445,0,-15616,190,-15616,191,-15616,191,-15616,191,-15616,191,0,-15616,191,0,0,-16445,0,0,0,0,0,-15616,191,-15616,191,0,256,-15616,191,0,0,-16445,0,0,-15616,191,0,0,0,0,-15616,-15425,191,-15616,191,0,0,-16445,0,0,-16445,0,0,0,0,-16445,-16445,0,0,-16445,-16445,0,0,-15616,191,-16445,-16445,0,-16701,0,256,-15616,191,-15616,191,0,0,-15616,191,-15616,191,-15616,191,0,0,-15616,-15425,191,-15616,191,-16445,-16445,0,-16445,0,0,0,-16445,0,0,-15616,191,0,0,-16445,0,0,0,0,0,-16445,-15616,191,-15616,-15425,191,-15616,191,-15616,191,-15616,190,-15616,190,0,0,-16701,0,-16445,-15616,191,0,-15616,-15425,191,0,-16445,0,0,-16445,-16445,-16445,0,0,-16445,-16445,0,0,-16701,0,0,-15616,191,0,0,-16445,256,0,-15616,447,-15616,191,-16445,-16445,0,0,0,-16445,0,0,-16445,0,0,-15616,191,0,0,-16445,0,0,-15616,-15425,191,-16445,-16701,0,256,-16445,-16445,0,0,-15616,446,0,0,-16701,0,-16445,0,-16445,0,0,0,-16445,0,0,-15616,191,0,0,-16445,0,0,0,-15615,-15425,191,-16445,0,-16445,0,0,0,0,-16445,-16445,0,0,-16445,0,0,0,0,-15616,191,-15616,191,-15616,191,-15616,-15425,191,0,0,0,0,-16445,0,0,-15616,-15426,447,0,-16445,-16445,0,-15616,-15426,190,0,0,0,0,-15616,191,-16445,0,-16445,-16445,0,-15616,-15425,191,0,-16445,-16445,256,0,-15616,191,0,0,-16445,-16445,-16445,1,0,-16701,0,-15616,-15425,191,-16445,0,-16445,0,0,-15616,-15425,191,0,0,-16445,0,0,0,-16445,0,0,-15616,447,-15616,191,0,-15616,191,-15616,191,-16445,-16445,0,-16445,-16445,0,256,-15616,191,0,0,-16445,-16445,0
};

main() {
    int n;

    //while(1) {
	n = 2000;
	//if ( n < 0 ) {
	//    perror("input file");
	//    exit(1);
	//}
	//if ( n == 0 ) break;
	adpcm_coder(sbuf, abuf, n/2, &state);
	//write(1, abuf, n/4);
	
	char outputString[3*500];
	int charCount = 0;
	
	for(int i =0; i<500; i++)
	{
		unsigned char temp = (unsigned char)abuf[i];
		
		if ((temp/16)<10)
			outputString[3*i] = temp/16+48;
		else
			outputString[3*i] = temp/16+87;
		if ((temp%16)<10)
			outputString[3*i+1] = temp%16+48;
		else
			outputString[3*i+1] = temp%16+87;
		outputString[3*i+2] = ' ';
	}
	
	outputString[3*500-1]=0;
	
	printf("%s\n", outputString);
	

    exit(0);
}



