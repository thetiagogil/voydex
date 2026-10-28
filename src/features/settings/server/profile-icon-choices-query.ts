import {
  getProfileIconPath,
  isProfileIconSlug,
  profileIconSlugs,
} from "@/config/profile-icons";
import type { ProfileIconChoice } from "@/features/settings/types";
import { getAssetUrl } from "@/shared/utils/asset-url";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The Pokémon a trainer can pick as their icon, in the picker's order. A
 * required read: a failure throws to the page's error boundary instead of
 * showing a picker with no icons.
 */
export const readProfileIconChoices = async (
  supabase: ServerSupabaseClient,
): Promise<ProfileIconChoice[]> => {
  const { data, error } = await supabase
    .schema("reference")
    .from("pokemon_forms")
    .select("id, name, slug")
    .in("slug", [...profileIconSlugs]);

  if (error) {
    throw new Error("The icons couldn't be loaded.");
  }

  const formsBySlug = new Map(data.map((form) => [form.slug, form]));

  return profileIconSlugs.flatMap((slug) => {
    const form = formsBySlug.get(slug);

    return form
      ? [
          {
            formId: form.id,
            name: form.name,
            url: getAssetUrl(getProfileIconPath(slug)),
          },
        ]
      : [];
  });
};

/* Whether a form is one of the icons a trainer can pick. */
export const isProfileIconForm = async (
  supabase: ServerSupabaseClient,
  formId: number,
): Promise<boolean> => {
  const { data, error } = await supabase
    .schema("reference")
    .from("pokemon_forms")
    .select("slug")
    .eq("id", formId)
    .maybeSingle();

  if (error) {
    throw new Error("The icon couldn't be checked.");
  }

  return isProfileIconSlug(data?.slug);
};
