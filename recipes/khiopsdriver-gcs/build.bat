REM Echo all output
@echo on

REM Configure project
cmake --fresh -G Ninja -D CMAKE_BUILD_TYPE=Release -B builds\conda -S . %CMAKE_ARGS%

REM Build
cmake --build builds\conda --parallel --target khiopsdriver_file_gcs

REM Copy the lib for the driver package
copy builds\conda\bin\khiopsdriver_file_gcs.dll %LIBRARY_PREFIX%\bin\libkhiopsdriver_file_gcs.dll
