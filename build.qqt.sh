#!/usr/bin/env bash


#env effect
mm set cur env 'macOS'
#do command in this env
mm exec qqt.build
#env reset (no need)



#env effect
mm export qt4 qt4
source $(mm source root)/qt4_effect.sh
#do command in this env
#env reset (need)
source $(mm source root)/qt4_unset.sh

mm set cur env qt4
mm exec qqt.build

#env effect
mm set cur env 'android.mobile'
#do command in this env
mm exec qqt.build
#env reset (no need)



#env effect
mm set cur env 'android.x86'
#do command in this env
mm exec qqt.build
#env reset (no need)

mm set cur env iOSSimulator
mm exec qqt.build

mm set cur env macOS
