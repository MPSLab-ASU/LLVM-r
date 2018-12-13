/* testd - Test adpcm decoder */

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
#define TO_HEX(i) (i <= 9 ? '0' + i : 'A' - 10 + i)

char	abuf[NSAMPLES/2]={
0,-14,15,56,-9,-97,121,-80,56,8,72,-68,63,48,-128,-117,121,-128,-94,-94,11,48,-128,-123,-68,56,0,-120,-29,8,0,-114,121,-126,-88,0,43,-76,-124,-31,42,-118,105,-92,-77,-102,75,74,2,-88,8,8,13,56,8,5,-65,56,-110,46,3,-96,43,8,12,121,-126,-63,42,-91,-102,33,-96,8,7,-72,42,2,-80,-128,75,-58,-104,32,-80,-124,-117,8,75,-123,-72,8,95,3,-96,42,46,18,-96,-126,-85,121,-94,-125,-80,-128,-128,-128,-122,-72,75,4,-64,-128,59,72,-67,56,-76,-77,13,105,-119,16,8,-73,-104,13,89,8,-111,8,2,-85,105,-128,45,16,-128,43,11,112,-94,-86,32,-124,-13,-102,42,34,-45,10,32,-72,-76,-77,8,91,60,-13,-111,8,8,59,4,-64,-128,-128,75,-123,-69,48,-45,8,8,91,-128,-128,-128,-128,-128,-13,-128,-128,-121,-15,44,16,-91,-111,-87,40,-128,3,-64,48,-48,60,8,8,8,-45,13,48,-128,-45,8,75,-61,-124,-77,-13,-104,8,11,51,-64,59,-120,0,-121,-72,75,8,13,121,24,-104,-93,-120,0,76,3,-8,107,17,-104,-128,8,-118,56,-76,-117,72,4,-72,75,-58,-104,8,59,-73,-111,-104,8,63,1,25,-88,56,8,-61,12,105,-128,-91,-72,45,50,-63,27,40,42,-124,-80,-128,-124,-15,8,42,2,-80,75,-120,13,123,16,-94,2,-80,-117,121,-91,-104,42,-125,-80,63,16,-126,-47,42,11,107,-123,-79,8,42,2,-80,60,8,12,-124,8,79,18,-30,-118,49,-119,-92,-111,-101,56,8,8,91,-124,-80,75,-121,-40,57,-119,40,42,-125,-72,91,8,-57,-102,73,-124,-80,28,18,-96,-77,12,56,-76,-128,-58,12,16,-128,-128,-125,-72,8,95,18,-61,-104,8,42,-128,-117,121,-94,8,8,64,-13,-96,-118,105,-126,-88,5,-67,57,56,-62,-118,89,-126,-96,-77,-117,67,-54,51,-64,-128,79,16,-92,-104,8,8,8,-73,-102,34,-47,8,0,-117,48,-13,-115,72,8,44,18,-88,8,-73,-103,16,43,3,-54,56,-73,-100,18,-126,-86,32,-58,-78,-128,46,16,-128,-118,104,-76,-119,-126,-96,46,18,-96,32,-72,75,-128,-128,5,-64,-128,-57,-104,8,8,63,17,-78,42,-128,-128,-128,-45,-113,80,-77,-119,-126,-63,8,8,-90,-102,123,24,-111,1,-104,8,8,75,-73,10,8,-94,11,121,-126,-94,-88,63,16,-91,-96,47};
short	sbuf[NSAMPLES];

main() {
    int n = 500;

	adpcm_decoder(abuf, sbuf, n*2, &state);

	char outputString[5*500];
	int charCount = 0;
	
	for(int i =0; i<500; i++)
	{
		unsigned short x = (unsigned short)sbuf[i];
		
		outputString[5*i] = TO_HEX(((x & 0xF000) >> 12));
		outputString[5*i+1] = TO_HEX(((x & 0x0F00) >> 8));
		outputString[5*i+2] = TO_HEX(((x & 0x00F0) >> 4));
		outputString[5*i+3] = TO_HEX((x & 0x000F));
		outputString[5*i+4] = ' ';
	}
	outputString[3*500-1]=0;
	
	printf("%s\n", outputString);
	
    exit(0);
}



