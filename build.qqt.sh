#!/usr/bin/env bash


#env effect
mm set cur env 'macOS'
#do command in this env
mm exec build.qqt
#env reset (no need)



#env effect
mm export qt4 qt4
source $(mm source root)/qt4_effect.sh
#do command in this env
#env reset (need)
source $(mm source root)/qt4_unset.sh

mm set cur env qt4
mm exec build.qqt

#env effect
mm set cur env 'android.mobile'
#do command in this env
mm exec build.qqt
#env reset (no need)



#env effect
mm set cur env 'android.x86'
#do command in this env
mm exec build.qqt
#env reset (no need)

mm set cur env iOS
mm exec build.qqt

mm set cur env iOSSimulator
mm exec build.qqt

mm set cur env macOS
