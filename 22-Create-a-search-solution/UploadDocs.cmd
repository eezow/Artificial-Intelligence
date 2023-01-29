@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=9ac49eca-94d1-44d5-bbea-056cf9600818
set azure_storage_account=storageaws777
set azure_storage_key=R0NcDnQh636BeLlBlyql9ifaLdQTxXw/m5WyXLfTO5wjLFTUDVnmXlgBPb8Tw2Umv1njEkK912YN+AStCC5SHA==


echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --public-access blob --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
