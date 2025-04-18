function(venv_script script_name script_cmd)
    set(options)
    set(oneValueArgs PYTHONPATH)
    set(multiValueArgs)
    cmake_parse_arguments(PARSE_ARGV 0 arg
        "${options}" "${oneValueArgs}" "${multiValueArgs}"
    )

    if(NOT DEFINED arg_PYTHONPATH)
        set(arg_PYTHONPATH "")
    endif()

    file(GENERATE
        OUTPUT "${CMAKE_CURRENT_BINARY_DIR}/scripts/${script_name}"
        CONTENT
            "#!/usr/bin/env sh
PYTHONPATH='${arg_PYTHONPATH}' ${venv_install_python} ${script_cmd} \"$@\""
        FILE_PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE
    )
    install(
        PROGRAMS "${CMAKE_CURRENT_BINARY_DIR}/scripts/${script_name}"
        DESTINATION "lib/${PROJECT_NAME}"
    )
endfunction()