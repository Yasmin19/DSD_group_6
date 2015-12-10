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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_2592010699;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3801681515_3212880686_init();
    work_a_3006959317_4118255912_init();
    work_a_2973221874_3724122606_init();
    work_a_4042774200_3308697103_init();
    work_a_2483091423_3613534632_init();
    work_a_0153626076_0578964516_init();
    work_a_0020942060_3212880686_init();
    work_a_0091457252_3212880686_init();
    work_a_1350106605_3212880686_init();
    work_a_1515468384_3212880686_init();
    work_a_2235468347_3212880686_init();
    work_a_2951549607_3212880686_init();
    work_a_1167627079_3212880686_init();
    work_a_4179008108_3212880686_init();
    work_a_2735068677_1984648856_init();
    work_a_3112044328_0422240219_init();
    work_a_1361769544_3983956115_init();
    work_a_0624302061_2402964856_init();
    work_a_0528995784_2193661277_init();
    work_a_2933832656_3212880686_init();
    work_a_1078287758_3212880686_init();
    work_a_3129324475_3212880686_init();
    work_a_1710532550_3212880686_init();
    work_a_0413558560_3212880686_init();
    ieee_p_1242562249_init();
    work_a_2614767529_3212880686_init();
    work_a_1691359891_3212880686_init();
    work_a_2474565320_3212880686_init();
    work_a_2668029113_3212880686_init();
    work_a_2161459538_3212880686_init();
    work_a_0650178061_3212880686_init();
    work_a_0227342785_3212880686_init();
    work_a_3585557085_2372691052_init();


    xsi_register_tops("work_a_3585557085_2372691052");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
