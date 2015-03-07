#!/bin/sh

ROOT="$(pwd)/.."
cd $ROOT

find    "$ROOT/arch/arm/boot/" \
        "$ROOT/arch/arm/common/" \
        "$ROOT/arch/arm/include/" \
        "$ROOT/arch/arm/kernel/" \
        "$ROOT/arch/arm/kvm/" \
        "$ROOT/arch/arm/lib/" \
        "$ROOT/arch/arm/mach-exynos/" \
        "$ROOT/virt/kvm/" \
        "$ROOT/kernel/" \
        "$ROOT/block/" \
        "$ROOT/drivers/cpufreq/" \
        "$ROOT/drivers/cpuidle/" \
        "$ROOT/drivers/clk/" \
        "$ROOT/drivers/input/" \
    -name "*.[chxsS]" -print > $ROOT/yytang/cscope/cscope.files
