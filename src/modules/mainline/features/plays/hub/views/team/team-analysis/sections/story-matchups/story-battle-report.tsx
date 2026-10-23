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
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { getItemImageUrl } from "@/modules/reference/features/items/data/item-images";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { CornerBubble } from "@/shared/components/corner-bubble";
import { ItemIcon } from "@/shared/components/item-icon";
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
  getPowerUpSentence,
  type StoryBestHit,
  type StoryOpponentPokemon,
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

/* The words that change when the opponent is one legendary, not a team. */
const reportWording = {
  legendary: {
    doneLabel: "Done",
    doneNote:
      "Voydex keeps who you met as part of your journey. It reads matchups only for encounters still ahead: the team you travel with now isn't the one you had then.",
    levels: (range: string | null) =>
      `It's ${range}. Your team's levels aren't recorded yet.`,
    moves:
      "Its moves aren't in Voydex, so this reads its types against your recorded moves.",
    opponentTitle: "The Pokémon",
    specialty: ["Type", "Types"],
    weakness: "It's weak to",
  },
  trainer: {
    doneLabel: "Won",
    doneNote:
      "Voydex keeps who you faced as part of your journey. It reads matchups only for battles still ahead: the team you travel with now isn't the one that won this.",
    levels: (range: string | null) =>
      `Their team is ${range}. Your team's levels aren't recorded yet.`,
    moves:
      "Their moves aren't in Voydex, so this reads their types against your recorded moves.",
    opponentTitle: "Their team",
    specialty: ["Specialty", "Specialties"],
    weakness: "Some of them are weak to",
  },
} as const;

/*
 * Small marks in a card's corner for how one of their Pokémon powers up: its
 * Tera Type as that type's dot, and the item it holds as its sprite. The
 * sentence under the team says the same in words.
 */
const OpponentMarks = ({ pokemon }: { pokemon: StoryOpponentPokemon }) => {
  const teraSlug =
    pokemon.teraType && isPokemonTypeSlug(pokemon.teraType.slug)
      ? pokemon.teraType.slug
      : null;

  return (
    <>
      {teraSlug && pokemon.mechanic ? (
        <PokemonTypeBadge
          type={teraSlug}
          display="icon"
          size="md"
          label={pokemon.mechanic.label}
          className="bubble rounded-full"
        />
      ) : null}
      {pokemon.heldItem ? (
        <span
          role="img"
          aria-label={`Holds ${pokemon.heldItem.name}`}
          className="bubble bg-surface-2 grid size-5.5 place-items-center rounded-full"
        >
          <ItemIcon
            kind="held"
            name={pokemon.heldItem.name}
            src={getItemImageUrl(pokemon.heldItem.slug)}
            className="my-0 size-6"
          />
        </span>
      ) : null}
    </>
  );
};

/* Their team (v3 `.opp`): the app's Pokémon card with less on it. */
const TheirTeam = ({ party }: { party: StoryMatchupParty }) => {
  const powerUps = party.pokemon.flatMap(
    (pokemon) => getPowerUpSentence(pokemon) ?? [],
  );

  return (
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
              marks={
                pokemon.teraType || pokemon.heldItem ? (
                  <OpponentMarks pokemon={pokemon} />
                ) : null
              }
            />
          </li>
        ))}
      </ul>
      {powerUps.length ? (
        <p className="text-ink-2 text-13 font-semibold">{powerUps.join(" ")}</p>
      ) : null}
    </>
  );
};

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
  const { opponentKind, party, reading } = battle;
  const wording = reportWording[opponentKind];

  return (
    <div className="min-w-0">
      <ObjectiveEyebrow
        icon={isWon ? appIcons.status.active : appIcons.milestones.story}
      >
        {isWon ? (
          <>
            {wording.doneLabel}
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
        {battle.isOptional && opponentKind === "legendary"
          ? " · Optional"
          : null}
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

      <SheetSection className="mt-9 gap-3" title={wording.opponentTitle}>
        {battle.specialtyTypes.length ? (
          <div className="text-ink-2 text-14 mb-3 flex flex-wrap items-center gap-2 font-semibold">
            {wording.specialty[battle.specialtyTypes.length > 1 ? 1 : 0]}
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
            note="Voydex knows who you face, not their team."
          />
        )}
        {reading?.uncoveredTypes.length ? (
          <p className="text-ink-2 text-14 font-semibold">
            {wording.weakness}{" "}
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
            {wording.doneNote}
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
                  {getLevelsSentence(reading.levels, opponentKind)}
                </MatchupStateLabel>
                <div className="grid grid-cols-2 gap-2.5">
                  <StatTile
                    label="Your team"
                    value={formatLevelRange(reading.levels.team)}
                  />
                  <StatTile
                    label={battle.name}
                    value={formatLevelRange(reading.levels.their)}
                  />
                </div>
              </>
            ) : party ? (
              <p className="text-ink-2 text-14 font-semibold">
                {wording.levels(battle.partyLevels)}
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
              ? wording.moves
              : "\u201cWeak to\u201d reads their specialty against each Pokémon's own types."}
          </p>
        </>
      )}
    </div>
  );
};
