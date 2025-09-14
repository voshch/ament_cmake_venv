include("${ament_cmake_venv_DIR}/venv_script.cmake")

function(venv_install)
    cmake_path(GET venv_install_dir PARENT_PATH target_dir)
    install(
        FILES "${venv_dir}"
        DESTINATION "${target_dir}"
    )
    venv_script("python" "")
endfunction()