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
static const char *ng0 = "C:/Users/Yasmin/Documents/GitHub/DSD_group_6/Lab_5/Lab_5_prep/Static_RAM_cell (MxN) + (8x4) + (64x4) + (64x8)/d_latch.vhd";



static void work_a_2874105025_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int64 t5;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 1352U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t1 = (t0 + 2912);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t12 = (t0 + 2912);
    xsi_driver_intertial_reject(t12, t5, t5);
    goto LAB3;

LAB5:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t13 = (t7 == (unsigned char)3);
    if (t13 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(50, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 2912);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t10 = (t0 + 2912);
    xsi_driver_intertial_reject(t10, t5, t5);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(48, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 2912);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t12 = (t0 + 2912);
    xsi_driver_intertial_reject(t12, t5, t5);
    goto LAB9;

}


extern void work_a_2874105025_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2874105025_3212880686_p_0};
	xsi_register_didat("work_a_2874105025_3212880686", "isim/sixtyfour_by_eight_bit_sram_tb_isim_beh.exe.sim/work/a_2874105025_3212880686.didat");
	xsi_register_executes(pe);
}
