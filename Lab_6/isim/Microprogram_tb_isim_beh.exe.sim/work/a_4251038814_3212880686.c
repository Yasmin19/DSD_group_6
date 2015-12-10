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
static const char *ng0 = "C:/Users/MicSeltene/Desktop/Lab6/Lab_6/FunctionDecoder.vhd";
extern char *IEEE_P_2592010699;



static void work_a_4251038814_3212880686_p_0(char *t0)
{
    char t23[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned char t22;
    unsigned int t24;
    unsigned char t25;

LAB0:    t1 = (t0 + 2512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 4599);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB10:    t6 = (t0 + 4601);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB11:    t9 = (t0 + 4603);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t12 = (t0 + 4605);
    t14 = xsi_mem_cmp(t12, t3, 2U);
    if (t14 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4611);
    t4 = (t0 + 2912);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(41, ng0);

LAB21:    t2 = (t0 + 2832);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB22;

LAB1:    return;
LAB5:    xsi_set_current_line(42, ng0);
    t15 = (t0 + 4607);
    t17 = (t0 + 2912);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t15, 2U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB4;

LAB6:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t22 = *((unsigned char *)t3);
    t4 = ((IEEE_P_2592010699) + 4024);
    t2 = xsi_base_array_concat(t2, t23, t4, (char)99, (unsigned char)2, (char)99, t22, (char)101);
    t24 = (1U + 1U);
    t25 = (2U != t24);
    if (t25 == 1)
        goto LAB15;

LAB16:    t6 = (t0 + 2912);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB4;

LAB7:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4609);
    t4 = (t0 + 2912);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t22 = *((unsigned char *)t3);
    t4 = ((IEEE_P_2592010699) + 4024);
    t2 = xsi_base_array_concat(t2, t23, t4, (char)99, (unsigned char)3, (char)99, t22, (char)101);
    t24 = (1U + 1U);
    t25 = (2U != t24);
    if (t25 == 1)
        goto LAB17;

LAB18:    t6 = (t0 + 2912);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB4;

LAB14:;
LAB15:    xsi_size_not_matching(2U, t24, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(2U, t24, 0);
    goto LAB18;

LAB19:    t3 = (t0 + 2832);
    *((int *)t3) = 0;
    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}


extern void work_a_4251038814_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4251038814_3212880686_p_0};
	xsi_register_didat("work_a_4251038814_3212880686", "isim/Microprogram_tb_isim_beh.exe.sim/work/a_4251038814_3212880686.didat");
	xsi_register_executes(pe);
}
