-- The preceding migration was already deployed with a locally generated
-- timestamp. Keep this correction ordered immediately after it on both fresh
-- databases and the linked project.
DO $migration$
DECLARE
    v_function_signature regprocedure := to_regprocedure('gameplay.complete_mainline_play_milestone(uuid,integer,timestamptz,text,integer,integer[],boolean,text,text,timestamptz,boolean,boolean,boolean)');
    v_function_definition text;
    v_ambiguous_fragment constant text := E'WHERE play_id = p_play_id\n            AND milestone_id = p_milestone_id;';
    v_qualified_fragment constant text := E'WHERE mainline_play_milestone_decisions.play_id = p_play_id\n            AND mainline_play_milestone_decisions.milestone_id = p_milestone_id;';
BEGIN
    IF v_function_signature IS NULL THEN
        RAISE EXCEPTION 'Required gameplay.complete_mainline_play_milestone function is missing';
    END IF;
    v_function_definition := pg_get_functiondef(v_function_signature);
    IF STRPOS(v_function_definition, v_qualified_fragment) > 0 THEN
        NULL;
    ELSIF STRPOS(v_function_definition, v_ambiguous_fragment) > 0 THEN
        EXECUTE REPLACE(v_function_definition, v_ambiguous_fragment, v_qualified_fragment);
    ELSE
        RAISE EXCEPTION 'Unable to locate the milestone decision delete predicate';
    END IF;
END;
$migration$;
