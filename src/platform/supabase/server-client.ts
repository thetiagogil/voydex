import type { SupabaseClient } from "@supabase/supabase-js";

import type { Database } from "@/shared/types/database.types";

/*
 * The query client every reader, loader and command takes: Supabase's
 * client shape, which the device database's query client
 * (`createLocalQueryClient`) speaks. Only the shape is left: no page talks
 * to a server of ours, and the name stays until the architecture pass
 * (#202) renames it everywhere at once.
 */
export type ServerSupabaseClient = SupabaseClient<Database>;
