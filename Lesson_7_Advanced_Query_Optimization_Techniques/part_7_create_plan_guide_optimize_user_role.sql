EXEC sp_create_plan_guide 
    @name = N'OptimizeUserRoleQuery', 
    @stmt = N'SELECT * FROM Users WHERE UserRole = ''Admin'';', 
    @type = N'SQL', 
    @hints = N'OPTION (OPTIMIZE FOR (@Role = ''Admin''))';
