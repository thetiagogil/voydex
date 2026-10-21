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
import { TypeName } from "@/modules/mainline/shared/components/type-name";
import { PokemonCard } from "@/modules/reference/features/pokemon/components/pokemon-card";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { CornerBubble } from "@/shared/components/corner-bubble";
import { PendingData } from "@/shared/components/pending-data";
import { SheetSection } from "@/shared/components/sheet-section";
import { StatTile } from "@/shared/components/stat-tile";
import {
  Alert,
  AlertDescription,
  AlertTitle,
} from "@/shared/components/ui/alert";

import {
  formatLevelRange,
  getLevelsSentence,
  type StoryBestHit,
} from "../../data/story-battle-reading";
import type {
  StoryMatchupBattle,
  StoryMatchupParty,
} from "../../data/story-matchups-model";
import { MatchupStateLabel, matchupStates } from "./story-matchup-state";

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
  <PokemonAvatar
    name={name}
    className="size-12 shrink-0"
    imageUrl={imageUrl}
    typeSlug={typeSlug}
  />
);

const formatMultiplier = (multiplier: number) => `${multiplier}×`;

/* Best hit (v3): the opponent it lands on, with how hard on a green mark. */
const BestHit = ({ hit }: { hit: StoryBestHit }) => (
  <span
    className="relative inline-flex"
    title={`${hit.moveName}, ${formatMultiplier(hit.multiplier)} on ${hit.target.name}`}
  >
    <PokemonAvatar
      decorative
      name={hit.target.name}
      className="size-10 shrink-0"
      imageUrl={hit.target.imageUrl}
      typeSlug={hit.target.types[0]?.slug ?? null}
    />
    <CornerBubble corner="bottom">
      <span
        aria-hidden
        className="bubble bg-ok-deep text-12 rounded-full px-1.5 leading-5 font-extrabold text-white tabular-nums"
      >
        {formatMultiplier(hit.multiplier)}
      </span>
    </CornerBubble>
    <span className="sr-only">
      {hit.moveName}, {formatMultiplier(hit.multiplier)} on {hit.target.name}
    </span>
  </span>
);

/* A list of types in a sentence: "Ice, Ground, Fire or Fighting". */
const TypeNames = ({ types }: { types: { name: string; slug: string }[] }) =>
  types.map((type, index) => (
    <span key={type.slug}>
      {index === 0 ? null : index === types.length - 1 ? " or " : ", "}
      <TypeName size="sm" type={type} className="align-[-1px]" />
    </span>
  ));

/* Their team (v3 `.opp`): the app's Pokémon card with less on it. */
const TheirTeam = ({ party }: { party: StoryMatchupParty }) => (
  <>
    {party.note ? (
      <p className="text-ink-2 text-13 font-semibold">{party.note}</p>
    ) : null}
    <ul className="grid grid-cols-3 gap-2.5">
      {party.pokemon.map((pokemon) => (
        <li key={pokemon.key} className="min-w-0">
          <PokemonCard
            state="plain"
            size="sm"
            imageAlt=""
            imageUrl={pokemon.imageUrl}
            name={pokemon.name}
            number={`Lv. ${pokemon.level}`}
            types={pokemon.types}
          />
        </li>
      ))}
    </ul>
  </>
);

/*
 * One battle's report (v3 `.enc-report`). A battle won keeps who you faced,
 * their team and the team you had then, and no reading. A battle ahead
 * reads your active team against their team: the verdict, each of your
 * Pokémon's role and best hit, and the levels. Where Voydex doesn't have
 * their team, it reads the opponent's specialty only.
 */
export const StoryBattleReport = ({
  battle,
  titleId,
}: {
  battle: StoryMatchupBattle;
  titleId: string;
}) => {
  const isWon = battle.state === "won";
  const { party, reading } = battle;

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

      {isWon ? null : reading?.state ? (
        <Alert
          role="status"
          variant={matchupStates[reading.state].alert}
          className="mt-5"
        >
          <AppIcon icon={matchupStates[reading.state].icon} />
          <AlertTitle className="text-16">
            {matchupStates[reading.state].label}
          </AlertTitle>
          <AlertDescription className="text-ink-2 text-14 font-semibold">
            {reading.summary}
          </AlertDescription>
        </Alert>
      ) : party ? null : (
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
        {party ? (
          <TheirTeam party={party} />
        ) : (
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
        )}
        {reading?.uncoveredTypes.length ? (
          <p className="text-ink-2 text-14 font-semibold">
            Some of them are weak to{" "}
            <TypeNames types={reading.uncoveredTypes.slice(0, 4)} />, and none
            of your moves is one of those types.
          </p>
        ) : null}
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
                    <th scope="col" className="w-[38%] pb-2 font-extrabold">
                      <span className="sr-only">Pokémon</span>
                    </th>
                    {party ? (
                      <th scope="col" className="w-[24%] pb-2 font-extrabold">
                        Role
                      </th>
                    ) : null}
                    <th scope="col" className="pb-2 font-extrabold">
                      Best hit
                    </th>
                    <th scope="col" className="pb-2 font-extrabold">
                      Weak to
                    </th>
                  </tr>
                </thead>
                <tbody className="divide-line divide-y">
                  {battle.members.map(({ bestHit, member, role, weakTo }) => {
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
                        {party ? (
                          <td className="text-13 py-2">
                            {role ? (
                              <MatchupStateLabel state={role}>
                                {matchupStates[role].role}
                              </MatchupStateLabel>
                            ) : (
                              <span className="text-ink-3 font-bold">
                                Not recorded
                              </span>
                            )}
                          </td>
                        ) : null}
                        <td className="py-2">
                          {bestHit ? (
                            <BestHit hit={bestHit} />
                          ) : party ? (
                            <span className="text-ink-3 text-13 font-bold">
                              None
                            </span>
                          ) : (
                            /* TODO(v3-data): best hit needs the opponent's team, which Voydex doesn't have for this game. */
                            <PendingData variant="inline" label="Not yet" />
                          )}
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
            {reading?.levels ? (
              <>
                <MatchupStateLabel
                  state={reading.levels.state}
                  className="text-15"
                >
                  {getLevelsSentence(reading.levels)}
                </MatchupStateLabel>
                <div className="grid grid-cols-2 gap-2.5">
                  <StatTile
                    label="Your team"
                    value={formatLevelRange(reading.levels.team)}
                  />
                  <StatTile
                    label={battle.opponents.length === 1 ? battle.name : "Them"}
                    value={formatLevelRange(reading.levels.their)}
                  />
                </div>
              </>
            ) : party ? (
              <p className="text-ink-2 text-14 font-semibold">
                Their team is {battle.partyLevels}. Your team&apos;s levels
                aren&apos;t recorded yet.
              </p>
            ) : (
              <PendingData
                label="Their levels aren't in Voydex yet"
                note="Your team's levels show beside each Pokémon above."
              />
            )}
          </SheetSection>
          <p className="text-ink-3 text-13 mt-5 font-semibold">
            {party
              ? "Their moves aren't in Voydex, so this reads their types against your recorded moves."
              : "\u201cWeak to\u201d reads their specialty against each Pokémon's own types."}
          </p>
        </>
      )}
    </div>
  );
};
