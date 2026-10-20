import { appRoutes } from "@/config/routes";
import type { LibraryPlay } from "@/modules/mainline/features/library/types";
import { TextLink } from "@/shared/components/text-link";

/*
 * The Plays that keep a rule or wear a tag, each a link to the Play, or a
 * line saying none do yet.
 */
export const LibraryUsedIn = ({ plays }: { plays: LibraryPlay[] }) => (
  <section aria-label="Used in" className="grid gap-2">
    <h3 className="text-13 text-ink-2 font-bold">Used in</h3>
    {plays.length ? (
      <ul className="grid gap-1.5">
        {plays.map((play) => (
          <li key={play.id}>
            <TextLink standalone href={appRoutes.mainlinePlay(play.id)}>
              {play.name}
            </TextLink>
          </li>
        ))}
      </ul>
    ) : (
      <p className="text-ink-3 text-14 font-semibold">No Play uses it yet.</p>
    )}
  </section>
);
