#!/bin/bash
# Generate code
# argbash -o setup setup.m4

# m4_ignore(
echo "This is just a script template, not the script (yet) - pass it to 'argbash' to fix this." >&2 && exit 11
#)Created by argbash-init v2.8.1
# ARG_OPTIONAL_SINGLE([target], [t], [Select setup target: role, vars, cookiecutterrc or self], [role])
# ARG_DEFAULTS_POS
# ARG_HELP([<The general help message of my script>])
# ARGBASH_GO

# [ <-- needed because of Argbash

if [[ ${_arg_target} = vars ]]; then
  cookiecutter -f templates/vars
elif [[ ${_arg_target} = cookiecutterrc ]]; then
  cookiecutter --output-dir /home -f templates/cookiecutterrc
elif [[ ${_arg_target} = self ]]; then
  argbash -o setup setup.m4
else
  cookiecutter --output-dir roles templates/role
fi

# ] <-- needed because of Argbash
