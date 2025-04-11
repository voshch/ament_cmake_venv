function(venv_install)
    cmake_path(GET venv_install_dir PARENT_PATH target_dir)
    install(
        FILES "${venv_dir}"
        DESTINATION "${target_dir}"
    )
endfunction()