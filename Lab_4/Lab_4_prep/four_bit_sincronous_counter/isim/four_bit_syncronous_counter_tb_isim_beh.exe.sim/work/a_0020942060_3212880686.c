/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/edsv3/Desktop/DSD/four_bit_sincronous_counter/D_flipflop.vhd";



static void work_a_0020942060_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)2);
    if (t11 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)2);
    if (t11 == 1)
        goto LAB14;

LAB15:    t3 = (unsigned char)0;

LAB16:    if (t3 != 0)
        goto LAB11;

LAB13:
LAB12:
LAB6:
LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 3392);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t10 = (t0 + 3392);
    xsi_driver_intertial_reject(t10, t5, t5);
    xsi_set_current_line(48, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 3456);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t9 = (t0 + 3456);
    xsi_driver_intertial_reject(t9, t5, t5);
    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 3392);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t14 = (t0 + 3392);
    xsi_driver_intertial_reject(t14, t5, t5);
    xsi_set_current_line(52, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 3456);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t9 = (t0 + 3456);
    xsi_driver_intertial_reject(t9, t5, t5);
    goto LAB6;

LAB8:    t1 = (t0 + 1352U);
    t6 = *((char **)t1);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t3 = t13;
    goto LAB10;

LAB11:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1512U);
    t7 = *((char **)t1);
    t16 = *((unsigned char *)t7);
    t17 = (t16 == (unsigned char)3);
    if (t17 == 1)
        goto LAB20;

LAB21:    t15 = (unsigned char)0;

LAB22:    if (t15 != 0)
        goto LAB17;

LAB19:
LAB18:    goto LAB12;

LAB14:    t1 = (t0 + 1352U);
    t6 = *((char **)t1);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)2);
    t3 = t13;
    goto LAB16;

LAB17:    xsi_set_current_line(56, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t19 = *((unsigned char *)t9);
    t20 = (t19 == (unsigned char)3);
    if (t20 != 0)
        goto LAB23;

LAB25:    xsi_set_current_line(60, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 3392);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t9 = (t0 + 3392);
    xsi_driver_intertial_reject(t9, t5, t5);
    xsi_set_current_line(61, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 3456);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t9 = (t0 + 3456);
    xsi_driver_intertial_reject(t9, t5, t5);

LAB24:    goto LAB18;

LAB20:    t1 = (t0 + 1472U);
    t18 = xsi_signal_has_event(t1);
    t15 = t18;
    goto LAB22;

LAB23:    xsi_set_current_line(57, ng0);
    t5 = (7 * 1000LL);
    t8 = (t0 + 3392);
    t10 = (t8 + 56U);
    t14 = *((char **)t10);
    t21 = (t14 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)3;
    xsi_driver_first_trans_delta(t8, 0U, 1, t5);
    t23 = (t0 + 3392);
    xsi_driver_intertial_reject(t23, t5, t5);
    xsi_set_current_line(58, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 3456);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t9 = (t0 + 3456);
    xsi_driver_intertial_reject(t9, t5, t5);
    goto LAB24;

}


extern void work_a_0020942060_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0020942060_3212880686_p_0};
	xsi_register_didat("work_a_0020942060_3212880686", "isim/four_bit_syncronous_counter_tb_isim_beh.exe.sim/work/a_0020942060_3212880686.didat");
	xsi_register_executes(pe);
}
