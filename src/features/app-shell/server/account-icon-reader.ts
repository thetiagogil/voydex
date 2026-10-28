import {
  getProfileIconPath,
  getProfileIconType,
  isProfileIconSlug,
} from "@/config/profile-icons";
import type { AccountIcon } from "@/features/app-shell/types";
import { getAssetUrl } from "@/shared/utils/asset-url";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/* The Pokémon behind your icon, or null when none is picked or it can't be read. */
export const readAccountIcon = async (
  supabase: ServerSupabaseClient,
  formId: number | null,
): Promise<AccountIcon | null> => {
  if (formId === null) {
    return null;
  }

  const { data } = await supabase
    .schema("reference")
    .from("pokemon_forms")
    .select("name, slug")
    .eq("id", formId)
    .maybeSingle();

  return data && isProfileIconSlug(data.slug)
    ? {
        name: data.name,
        typeSlug: getProfileIconType(data.slug),
        url: getAssetUrl(getProfileIconPath(data.slug)),
      }
    : null;
};
