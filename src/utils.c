/**
 * \file
 * Session C runtime library miscellaneous utilities.
 */

#include <stdlib.h>
#include <sys/time.h>

#include "sc/utils.h"


long long sc_time()
{
  struct timeval tv;
  gettimeofday(&tv, NULL);
  return tv.tv_sec  * 1000000 + tv.tv_usec;
}


double sc_time_diff(long long t0, long long t1)
{
  return (double)(t1 - t0)/1000000.0;
}
