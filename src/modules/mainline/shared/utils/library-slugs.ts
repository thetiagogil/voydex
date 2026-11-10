import type { LibraryChoice } from "@/modules/mainline/shared/types";
import { toLibrarySlug } from "@/modules/mainline/shared/utils/library-names";

const uniqueViolation = "23505";

/* Two names that differ only in case or accents are the same name. */
export const isSameLibraryName = (left: string, right: string) =>
  left.localeCompare(right, "en", { sensitivity: "base" }) === 0;

/*
 * Writes (inserts or renames) a named row under a slug made from its name.
 * A name of only symbols takes `fallback`; a slug you already use (two names
 * that read the same, like "Mono-type" and "Mono type") gets a short suffix.
 */
export const writeWithLibrarySlug = async (
  name: string,
  {
    fallback,
    maximum,
    separator,
    write,
  }: {
    fallback: string;
    maximum: number;
    separator: "-" | "_";
    write: (slug: string) => PromiseLike<{
      data: LibraryChoice | null;
      error: { code: string } | null;
    }>;
  },
) => {
  const base =
    toLibrarySlug(name, { maximum: maximum - 5, separator }) ?? fallback;

  for (let attempt = 0; attempt < 3; attempt += 1) {
    const slug = attempt
      ? `${base}${separator}${crypto.randomUUID().slice(0, 4)}`
      : base;
    const result = await write(slug);

    if (!result.error && result.data) {
      return result.data;
    }

    if (result.error?.code !== uniqueViolation) {
      return null;
    }
  }

  return null;
};
