REM Echo all output
@echo on

REM Configure project
cmake --fresh -G Ninja -D CMAKE_BUILD_TYPE=Release -B builds\conda -S .

REM Build
cmake --build builds\conda --parallel --target khiopsdriver_file_s3

REM Copy the lib for the driver package
copy builds\conda\bin\khiopsdriver_file_s3.dll %LIBRARY_BIN%\libkhiopsdriver_file_s3.dll
