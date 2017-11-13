#!/usr/bin/env bash


#env effect
mm set cur env 'macOS'
#do command in this env
mm exec daily.qqt
#env reset (no need)

mm set cur env qt4
mm exec daily.qqt

#env effect
mm set cur env 'android.mobile'
#do command in this env
mm exec daily.qqt
#env reset (no need)

#env effect
mm set cur env 'android.x86'
#do command in this env
mm exec daily.qqt
#env reset (no need)

mm set cur env iOS
mm exec daily.qqt

mm set cur env iOSSimulator
mm exec daily.qqt

mm set cur env macOS
