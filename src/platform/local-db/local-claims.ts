import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Who the readers and commands act for on the device: its one user, in the
 * shape the API's session claims have (`data.claims.sub`), so the code that
 * asked the server "who is signed in?" asks the device the same way.
 */
export const readLocalClaims = (client: ServerSupabaseClient) =>
  client.auth.getClaims();
