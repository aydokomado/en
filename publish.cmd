
git add .
@if %errorlevel% neq 0 goto error

@set /P cm="Any comment on changes? [enter] if nothing: "
git commit --allow-empty-message -m "%cm%"
@if %errorlevel% neq 0 goto error

git push
@if %errorlevel% neq 0 goto error
@echo PUBLISHED OK
@goto end

:error
@echo ERROR!!

:end
@pause
