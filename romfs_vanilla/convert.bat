for /R %%A in ("*") do parcel diff "%%A" "%%~dpA%%~nAmod%%~xA" "%%~dpA%%~nA%%~xAxml" -h ParamLabels.csv -t xml
organize run --tags wubor
pause