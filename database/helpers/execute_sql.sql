-- Helper function to execute raw SQL (for seed scripts)
CREATE OR REPLACE FUNCTION execute_sql(sql_query text)
RETURNS text
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
BEGIN
  EXECUTE sql_query;
  RETURN 'Success';
EXCEPTION
  WHEN others THEN
    RETURN SQLERRM;
END;
$$;