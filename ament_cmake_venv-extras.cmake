set(venv_build_dir "${CMAKE_CURRENT_BINARY_DIR}/venv_build")
set(venv_dir "${CMAKE_CURRENT_BINARY_DIR}/venv")
set(venv_install_dir "${CMAKE_INSTALL_PREFIX}/venv")

set(target_venv "VENV_CREATED")

separate_arguments(venv_clean_pythonpath NATIVE_COMMAND "${CMAKE_COMMAND} -E env --unset=PYTHONPATH")
set(venv_python_bin "${venv_dir}/bin/python")
set(venv_install_python "${venv_install_dir}/bin/python")

include("${ament_cmake_venv_DIR}/venv_create.cmake")
include("${ament_cmake_venv_DIR}/venv_install.cmake")
include("${ament_cmake_venv_DIR}/venv_pip.cmake")
include("${ament_cmake_venv_DIR}/venv_script.cmake")
include("${ament_cmake_venv_DIR}/venv_python.cmake")