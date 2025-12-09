EXEC sp_create_plan_guide 
    @name = N'QuickAccessGuide', 
    @stmt = N'SELECT FirstName, LastName FROM Employees WHERE Department = ''HR'';', 
    @type = N'SQL', 
    @params = NULL, 
    @hints = N'OPTION (RECOMPILE)';
