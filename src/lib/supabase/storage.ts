import { createClient } from "./server";

export async function getGameCoverUrl(
  gameSlug: string,
): Promise<string | null> {
  const supabase = await createClient();

  const extensions = ["png", "jpg"];

  for (const ext of extensions) {
    const path = `${gameSlug}.${ext}`;

    try {
      const { data: downloaded, error: downloadError } = await supabase.storage
        .from("games")
        .download(path);

      if (!downloadError && downloaded) {
        const { data } = supabase.storage.from("games").getPublicUrl(path);
        if (data?.publicUrl) return data.publicUrl;
      }
    } catch {}
  }

  return null;
}

export async function getGameCoverUrls(
  gameSlugs: string[],
): Promise<Record<string, string | null>> {
  const urls: Record<string, string | null> = {};

  for (const slug of gameSlugs) {
    urls[slug] = await getGameCoverUrl(slug);
  }

  return urls;
}
