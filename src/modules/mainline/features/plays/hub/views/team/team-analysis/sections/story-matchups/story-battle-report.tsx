import {
  ObjectiveEyebrow,
  ObjectiveWhere,
  objectiveTitleClassNames,
} from "@/modules/mainline/features/plays/shared/components/objective-card";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { appIcons } from "@/shared/components/app-icon";
import { PendingData } from "@/shared/components/pending-data";
import { SheetSection } from "@/shared/components/sheet-section";

import type { StoryMatchupBattle } from "../../data/story-matchups-model";

/* A small owned Pokémon (v3 `.dh-mon`): its art on the type-tinted sticker. */
const SmallSticker = ({
  imageUrl,
  name,
  typeSlug,
}: {
  imageUrl: string | null;
  name: string;
  typeSlug: string | null;
}) => (
  <span
    className="sticker grid size-12 shrink-0 place-items-center rounded-md"
    style={getPokemonTypeCssVariables(
      typeSlug && isPokemonTypeSlug(typeSlug) ? typeSlug : null,
    )}
  >
    {imageUrl ? (
      // eslint-disable-next-line @next/next/no-img-element
      <img src={imageUrl} alt={name} className="size-11" />
    ) : (
      <span className="sr-only">{name}</span>
    )}
  </span>
);

/*
 * One battle's report (v3 `.enc-report`). A battle won keeps who you faced
 * and the team you had then, and no reading. A battle ahead reads your
 * active team against the opponent's specialty; their team, the verdict and
 * the level comparison wait for opponent parties.
 */
export const StoryBattleReport = ({
  battle,
  titleId,
}: {
  battle: StoryMatchupBattle;
  titleId: string;
}) => {
  const isWon = battle.state === "won";

  return (
    <div className="min-w-0">
      <ObjectiveEyebrow
        icon={isWon ? appIcons.status.active : appIcons.milestones.story}
      >
        {isWon ? (
          <>
            Won
            {battle.completedAt ? (
              <>
                {" "}
                <PlayMomentTime value={battle.completedAt} format="date" />
              </>
            ) : null}
          </>
        ) : battle.state === "next" ? (
          "Next objective"
        ) : (
          "Still ahead"
        )}{" "}
        · {battle.kind}
      </ObjectiveEyebrow>
      <h2 id={titleId} tabIndex={-1} className={objectiveTitleClassNames.md}>
        {battle.name}
      </h2>
      {battle.where ? <ObjectiveWhere>{battle.where}</ObjectiveWhere> : null}

      {isWon ? null : (
        /* TODO(v3-data): the battle verdict (Strong, Balanced, Challenging) and its sentence need opponent parties (species, levels, moves per opponent). */
        <PendingData
          className="mt-4"
          label="No reading yet"
          note="How you'd fare needs their team, which isn't in Voydex yet."
        />
      )}

      <SheetSection className="mt-9 gap-3" title="Their team">
        {battle.specialtyTypes.length ? (
          <div className="text-ink-2 text-14 mb-3 flex flex-wrap items-center gap-2 font-semibold">
            {battle.opponents.length > 1 ? "Specialties" : "Specialty"}
            <PokemonTypeList
              types={battle.specialtyTypes}
              badgeDisplay="icon-label"
              badgeSize="sm"
              className="contents"
            />
          </div>
        ) : null}
        {/* TODO(v3-data): each opponent's party (species, level, moves) for the "Their team" cards; no opponent party tables exist. */}
        <PendingData
          label="Their Pokémon aren't in Voydex yet"
          note={
            battle.opponents.length > 1
              ? `Voydex knows who you face (${battle.opponents
                  .map((opponent) => opponent.name)
                  .join(", ")}), not their teams.`
              : "Voydex knows who you face, not their team."
          }
        />
      </SheetSection>

      {isWon ? (
        <>
          {battle.teamThen.length ? (
            <SheetSection className="mt-9 gap-3" title="Your team then">
              <ul className="flex flex-wrap gap-2">
                {battle.teamThen.map((member) => (
                  <li key={member.position}>
                    <SmallSticker
                      imageUrl={member.imageUrl}
                      name={member.formName ?? member.speciesName}
                      typeSlug={null}
                    />
                  </li>
                ))}
              </ul>
            </SheetSection>
          ) : null}
          <p className="text-ink-3 text-13 mt-5 font-semibold">
            Voydex keeps who you faced as part of your journey. It reads
            matchups only for battles still ahead: the team you travel with now
            isn&apos;t the one that won this.
          </p>
        </>
      ) : (
        <>
          <SheetSection className="mt-9 gap-3" title="Your team">
            {battle.members.length ? (
              <table className="w-full table-fixed border-collapse text-left">
                <thead>
                  <tr className="text-ink-3 text-12 font-extrabold">
                    <th scope="col" className="w-[42%] pb-2 font-extrabold">
                      <span className="sr-only">Pokémon</span>
                    </th>
                    <th scope="col" className="pb-2 font-extrabold">
                      Best hit
                    </th>
                    <th scope="col" className="pb-2 font-extrabold">
                      Weak to
                    </th>
                  </tr>
                </thead>
                <tbody className="divide-line divide-y">
                  {battle.members.map(({ member, weakTo }) => {
                    const name = getPlayTeamMemberName(member);

                    return (
                      <tr key={member.play_pokemon_id} className="align-middle">
                        <th scope="row" className="py-2 pr-2 font-normal">
                          <span className="flex min-w-0 items-center gap-2.5">
                            <SmallSticker
                              imageUrl={getPlayTeamMemberImageUrl(member)}
                              name=""
                              typeSlug={member.primaryType?.slug ?? null}
                            />
                            <span className="grid min-w-0">
                              <b className="text-14 truncate font-extrabold">
                                {name}
                              </b>
                              {member.level ? (
                                <span className="text-ink-3 text-12 font-semibold tabular-nums">
                                  Lv. {member.level}
                                </span>
                              ) : null}
                            </span>
                          </span>
                        </th>
                        <td className="py-2">
                          {/* TODO(v3-data): best hit needs the opponents' species to score your moves against. */}
                          <PendingData variant="inline" label="Not yet" />
                        </td>
                        <td className="py-2">
                          {weakTo.length ? (
                            <PokemonTypeList
                              types={weakTo}
                              badgeDisplay="icon"
                              badgeSize="sm"
                              className="flex gap-1"
                            />
                          ) : (
                            <span className="text-ink-3 text-13 font-bold">
                              None
                            </span>
                          )}
                        </td>
                      </tr>
                    );
                  })}
                </tbody>
              </table>
            ) : (
              <p className="text-ink-2 text-14 font-semibold">
                Add Pokémon to your active team to read this battle.
              </p>
            )}
          </SheetSection>
          <SheetSection className="mt-9 gap-3" title="Levels">
            {/* TODO(v3-data): the level comparison needs opponent party levels. */}
            <PendingData
              label="Their levels aren't in Voydex yet"
              note="Your team's levels show beside each Pokémon above."
            />
          </SheetSection>
          <p className="text-ink-3 text-13 mt-5 font-semibold">
            &ldquo;Weak to&rdquo; reads their specialty against each
            Pokémon&apos;s own types.
          </p>
        </>
      )}
    </div>
  );
};
