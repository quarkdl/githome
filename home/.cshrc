#  This is a dirty hack to run bash instead of tcsh,
#  because my university doesn't allow me to chsh

if ( $?tcsh && $?prompt ) then
  exec /bin/bash
  SHELL=`ps -hp $$| awk '{echo $5}'`
endif

