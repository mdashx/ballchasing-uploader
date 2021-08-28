SET filename=%~dp0%api_key.txt
FOR /F "tokens=* delims=" %%x in (%filename%) DO SET api_key=%api_key%%%x
curl -v -F file=@%1 -H Authorization:%api_key% "https://ballchasing.com/api/v2/upload?visibility=public"
echo %api_key%
timeout /t 1