#ifndef SC__UTILS_H__
#define SC__UTILS_H__
/**
 * \file
 * Session C runtime library miscellaneous utilities.
 */


/**
 * \brief Return an elapsed time.
 *
 * \returns Time in microseconds since an arbitrary time in the past.
 */
long long sc_time();


/**
 * \brief Calculate the time difference.
 *
 * @param[in] t0 Starting time.
 * @param[in] t1 Ending time.
 *
 * \returns Time difference in seconds.
 */
double sc_time_diff(long long t0, long long t1);


#endif // SC__UTILS_H__
