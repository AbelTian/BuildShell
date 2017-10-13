#!/usr/bin/env bash
# create mm link
# sudo ln -s xxx/pymake6.sh /usr/local/bin/mm




#env effect
mm set cur env 'qt.android'
#do command in this env
mm exec qqt.build
#env reset (no need)



#env effect
mm set cur env 'android.x86'
#do command in this env
mm exec qqt.build
#env reset (no need)



#env effect
mm set cur env 'android.mobile'
#do command in this env
mm exec qqt.build
#env reset (no need)




#env effect
mm set cur env 'android.x86'
mm export
source $(mm source root)/env_effect.sh
#do command in this env
java -version
#env reset (need)
source $(mm source root)/env_unset.sh



#env effect
mm set cur env 'qt.android'
#do command in this env
mm exec 'java -version'
#env reset (no need)
