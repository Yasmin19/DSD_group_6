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
static const char *ng0 = "C:/Users/Hemat/Documents/GitHub/DSD_group_6/Lab_4/Lab_4_prep/clothes_washer_control_state_mashine/washer_next_state_logic.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;



static void work_a_1766939528_3212880686_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (1U + 1U);
    t9 = (2U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 3616);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 3520);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(2U, t8, 0);
    goto LAB6;

}

static void work_a_1766939528_3212880686_p_1(char *t0)
{
    char t34[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    int t17;
    char *t18;
    char *t19;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t35;
    char *t36;
    int t37;
    unsigned int t38;
    unsigned char t39;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (2 - 2);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 6427);
    t8 = xsi_mem_cmp(t6, t1, 3U);
    if (t8 == 1)
        goto LAB3;

LAB12:    t9 = (t0 + 6430);
    t11 = xsi_mem_cmp(t9, t1, 3U);
    if (t11 == 1)
        goto LAB4;

LAB13:    t12 = (t0 + 6433);
    t14 = xsi_mem_cmp(t12, t1, 3U);
    if (t14 == 1)
        goto LAB5;

LAB14:    t15 = (t0 + 6436);
    t17 = xsi_mem_cmp(t15, t1, 3U);
    if (t17 == 1)
        goto LAB6;

LAB15:    t18 = (t0 + 6439);
    t20 = xsi_mem_cmp(t18, t1, 3U);
    if (t20 == 1)
        goto LAB7;

LAB16:    t21 = (t0 + 6442);
    t23 = xsi_mem_cmp(t21, t1, 3U);
    if (t23 == 1)
        goto LAB8;

LAB17:    t24 = (t0 + 6445);
    t26 = xsi_mem_cmp(t24, t1, 3U);
    if (t26 == 1)
        goto LAB9;

LAB18:    t27 = (t0 + 6448);
    t29 = xsi_mem_cmp(t27, t1, 3U);
    if (t29 == 1)
        goto LAB10;

LAB19:
LAB11:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 6494);
    t6 = (t0 + 3680);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t1, 3U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t1 = (t0 + 3536);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(58, ng0);
    t30 = (t0 + 1672U);
    t31 = *((char **)t30);
    t30 = (t0 + 6392U);
    t32 = (t0 + 6451);
    t35 = (t34 + 0U);
    t36 = (t35 + 0U);
    *((int *)t36) = 0;
    t36 = (t35 + 4U);
    *((int *)t36) = 1;
    t36 = (t35 + 8U);
    *((int *)t36) = 1;
    t37 = (1 - 0);
    t38 = (t37 * 1);
    t38 = (t38 + 1);
    t36 = (t35 + 12U);
    *((unsigned int *)t36) = t38;
    t39 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t31, t30, t32, t34);
    if (t39 != 0)
        goto LAB21;

LAB23:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6392U);
    t6 = (t0 + 6456);
    t9 = (t34 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t8 = (1 - 0);
    t3 = (t8 * 1);
    t3 = (t3 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t3;
    t39 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t6, t34);
    if (t39 != 0)
        goto LAB24;

LAB25:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6392U);
    t6 = (t0 + 6461);
    t9 = (t34 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t8 = (1 - 0);
    t3 = (t8 * 1);
    t3 = (t3 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t3;
    t39 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t6, t34);
    if (t39 != 0)
        goto LAB26;

LAB27:
LAB22:    goto LAB2;

LAB4:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 6466);
    t6 = (t0 + 3680);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t1, 3U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB5:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 6469);
    t6 = (t0 + 3680);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t1, 3U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB6:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 6472);
    t6 = (t0 + 3680);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t1, 3U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB7:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 6475);
    t6 = (t0 + 3680);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t1, 3U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB8:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 6478);
    t6 = (t0 + 3680);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t1, 3U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB9:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6392U);
    t6 = (t0 + 6481);
    t9 = (t34 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t8 = (1 - 0);
    t3 = (t8 * 1);
    t3 = (t3 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t3;
    t39 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t6, t34);
    if (t39 != 0)
        goto LAB28;

LAB30:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6392U);
    t6 = (t0 + 6486);
    t9 = (t34 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t8 = (1 - 0);
    t3 = (t8 * 1);
    t3 = (t3 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t3;
    t39 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t6, t34);
    if (t39 != 0)
        goto LAB31;

LAB32:
LAB29:    goto LAB2;

LAB10:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 6491);
    t6 = (t0 + 3680);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t1, 3U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB20:;
LAB21:    xsi_set_current_line(59, ng0);
    t36 = (t0 + 6453);
    t41 = (t0 + 3680);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t36, 3U);
    xsi_driver_first_trans_fast_port(t41);
    goto LAB22;

LAB24:    xsi_set_current_line(61, ng0);
    t10 = (t0 + 6458);
    t13 = (t0 + 3680);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 3U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB22;

LAB26:    xsi_set_current_line(63, ng0);
    t10 = (t0 + 6463);
    t13 = (t0 + 3680);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 3U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB22;

LAB28:    xsi_set_current_line(79, ng0);
    t10 = (t0 + 6483);
    t13 = (t0 + 3680);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 3U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB29;

LAB31:    xsi_set_current_line(81, ng0);
    t10 = (t0 + 6488);
    t13 = (t0 + 3680);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 3U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB29;

}


extern void work_a_1766939528_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1766939528_3212880686_p_0,(void *)work_a_1766939528_3212880686_p_1};
	xsi_register_didat("work_a_1766939528_3212880686", "isim/washer_controller_tb_vhd_isim_beh.exe.sim/work/a_1766939528_3212880686.didat");
	xsi_register_executes(pe);
}
