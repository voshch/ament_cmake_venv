function(venv_python)
    add_custom_command(
        TARGET "${target_venv}"
        POST_BUILD
        COMMAND_EXPAND_LISTS
        COMMAND ${venv_clean_pythonpath} "${venv_python_bin}" ${ARGN}
    )
endfunction()