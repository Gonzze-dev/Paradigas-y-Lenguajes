NEW_FILES='wildcard.o'
NEW_LIBS=${NEW_FILES}
for extra in '' fnmatch.o; do
  if test -n "${extra}"; then
    NEW_FILES="${NEW_FILES} ../gllib/${extra}"
    NEW_LIBS="${NEW_LIBS} ${extra}"
  fi
done
${MAKE-make} clisp-module \
  CC="${CC}" CPPFLAGS="${CPPFLAGS}" CFLAGS="${CFLAGS}" \
  INCLUDES="$absolute_linkkitdir"
NEW_MODULES="wildcard"
TO_LOAD='wildcard'
