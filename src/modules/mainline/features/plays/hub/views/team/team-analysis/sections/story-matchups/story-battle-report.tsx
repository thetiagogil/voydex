import { useState } from "react";

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
import {
  PokemonTypeBadge,
  PokemonTypeIcon,
} from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { getItemImageUrl } from "@/modules/reference/features/items/data/item-images";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { CornerBubble } from "@/shared/components/corner-bubble";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { ItemIcon } from "@/shared/components/item-icon";
import { PendingData } from "@/shared/components/pending-data";
import { SheetSection } from "@/shared/components/sheet-section";
import { StatTile } from "@/shared/components/stat-tile";
import { Button } from "@/shared/components/ui/button";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";
import {
  Alert,
  AlertDescription,
  AlertTitle,
} from "@/shared/components/ui/alert";

import {
  countOpponentsWithMoves,
  formatLevelRange,
  getLevelsSentence,
  getPowerUpSentence,
  type StoryBestHit,
  type StoryHitDetail,
  type StoryOpponentKind,
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

/*
 * Best hit (v3): the opponent it lands on, with how hard on a green mark,
 * and the move and target in a tooltip.
 */
const BestHit = ({ hit }: { hit: StoryBestHit }) => (
  <Tooltip>
    <TooltipTrigger render={<span className="relative inline-flex" />}>
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
    </TooltipTrigger>
    <TooltipContent>
      {hit.moveName}, {formatMultiplier(hit.multiplier)} on {hit.target.name}
    </TooltipContent>
  </Tooltip>
);

/* What one side brings: move names, or "its Fire type" where their moves aren't known. */
const formatVia = ({ byType, via }: StoryHitDetail) =>
  byType
    ? `its ${via.join(" and ")} type${via.length > 1 ? "s" : ""}`
    : via.join(", ");

/*
 * The detail behind one of your Pokémon's row (its "i"): what of theirs hits
 * it for 2× or more and with what, and whom it hits back and with which move.
 */
const MemberMatchups = ({
  lands,
  name,
  recordedMoves,
  takes,
}: {
  lands: StoryHitDetail[];
  name: string;
  recordedMoves: boolean;
  takes: StoryHitDetail[];
}) => (
  <div className="grid gap-3">
    <div className="grid gap-1">
      <p>
        <b>{name} takes 2× or more from</b>
      </p>
      {takes.length ? (
        <ul className="grid gap-0.5">
          {takes.map((hit) => (
            <li key={hit.pokemon.key}>
              <b>{hit.pokemon.name}</b>: {formatVia(hit)},{" "}
              {formatMultiplier(hit.multiplier)}
            </li>
          ))}
        </ul>
      ) : (
        <p>Nothing of theirs.</p>
      )}
    </div>
    <div className="grid gap-1">
      <p>
        <b>{name} hits</b>
      </p>
      {lands.length ? (
        <ul className="grid gap-0.5">
          {lands.map((hit) => (
            <li key={hit.pokemon.key}>
              <b>{hit.pokemon.name}</b> with {formatVia(hit)},{" "}
              {formatMultiplier(hit.multiplier)}
            </li>
          ))}
        </ul>
      ) : (
        <p>
          {recordedMoves
            ? "None of them for more than 1× with its recorded moves."
            : "Nothing yet: its moves aren't recorded."}
        </p>
      )}
    </div>
  </div>
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
    moves: {
      all: "This reads its moves against your team.",
      none: "Its moves aren't in Voydex, so this reads its types against your recorded moves.",
      /* One Pokémon: its moves are known or they aren't. */
      some: () => "This reads its moves against your team.",
    },
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
    moves: {
      all: "This reads their moves against your team.",
      none: "Their moves aren't in Voydex, so this reads their types against your recorded moves.",
      some: (known: number, count: number) =>
        `Voydex has the moves of ${known} of their ${count} Pokémon and reads the others by their types.`,
    },
    opponentTitle: "Their team",
    specialty: ["Specialty", "Specialties"],
    weakness: "Some of them are weak to",
  },
} as const;

/*
 * Marks on a card's level line for how one of their Pokémon powers up: its
 * Tera Type as a Tera jewel (the type's icon on a diamond in its colour, so
 * it never reads as one of its own round type dots), and the item it holds
 * as its sprite. The sentence under the team says the same in words.
 */
const OpponentMarks = ({ pokemon }: { pokemon: StoryOpponentPokemon }) => {
  const teraSlug =
    pokemon.teraType && isPokemonTypeSlug(pokemon.teraType.slug)
      ? pokemon.teraType.slug
      : null;

  return (
    <>
      {teraSlug && pokemon.mechanic ? (
        <span
          role="img"
          aria-label={pokemon.mechanic.label}
          style={getPokemonTypeCssVariables(teraSlug)}
          className="relative grid size-5 place-items-center"
        >
          <span
            aria-hidden
            className="absolute size-3.5 rotate-45 rounded-[3px] bg-(--t)"
          />
          <PokemonTypeIcon
            type={teraSlug}
            className="relative size-2.5 text-white"
          />
        </span>
      ) : null}
      {pokemon.heldItem ? (
        <span role="img" aria-label={`Holds ${pokemon.heldItem.name}`}>
          <ItemIcon
            kind="held"
            name={pokemon.heldItem.name}
            src={getItemImageUrl(pokemon.heldItem.slug)}
            className="my-0 size-5"
          />
        </span>
      ) : null}
    </>
  );
};

/*
 * The back of one of their cards: what it knows, each move on its type's
 * icon, at the card's own size so flipping never moves the row.
 */
const OpponentMoves = ({ pokemon }: { pokemon: StoryOpponentPokemon }) => (
  <div className="plain-card flex h-full min-w-0 flex-col gap-1 rounded-xl px-2 pt-2 pb-2 text-left">
    {/* Its level stays on the front; the back names whose moves these are. */}
    <p className="text-ink-3 text-12 truncate px-1 font-extrabold">
      {pokemon.name}
    </p>
    {pokemon.moves.length ? (
      <ul className="grid gap-0.5">
        {pokemon.moves.map((move) => {
          const typeSlug =
            move.type && isPokemonTypeSlug(move.type.slug)
              ? move.type.slug
              : null;

          return (
            <li
              key={move.slug}
              style={getPokemonTypeCssVariables(typeSlug)}
              className="text-12 flex min-w-0 items-center gap-1.5 rounded-md bg-[color-mix(in_oklab,var(--t)_12%,var(--surface))] px-1.5 py-0.5 leading-tight font-extrabold"
            >
              {typeSlug ? (
                /* On phones the tint carries the type; the icon's name stays for screen readers. */
                <PokemonTypeBadge
                  type={typeSlug}
                  label={move.type?.name}
                  display="icon"
                  size="sm"
                  className="max-sm:sr-only"
                />
              ) : null}
              <span className="min-w-0 wrap-break-word">{move.name}</span>
            </li>
          );
        })}
      </ul>
    ) : (
      <p className="text-ink-3 text-12 px-1 font-semibold">
        Its moves aren&apos;t in Voydex.
      </p>
    )}
  </div>
);

/*
 * Their team (v3 `.opp`): the app's Pokémon card with less on it. With
 * `showMoves` each card flips over to what it knows; the face away from you
 * is hidden from screen readers and the keyboard, and the card keeps its
 * place, lifting with both faces.
 */
const TheirTeam = ({
  party,
  showMoves,
}: {
  party: StoryMatchupParty;
  showMoves: boolean;
}) => {
  const powerUps = party.pokemon.flatMap(
    (pokemon) => getPowerUpSentence(pokemon) ?? [],
  );
  /* Without any of their moves there is no back to turn to. */
  const hasBacks = countOpponentsWithMoves(party.pokemon) > 0;

  return (
    <>
      {party.note ? (
        <p className="text-ink-2 text-13 font-semibold">{party.note}</p>
      ) : null}
      <ul className="grid grid-cols-3 gap-2.5">
        {party.pokemon.map((pokemon) => (
          <li
            key={pokemon.key}
            className="min-w-0 transition-transform duration-150 perspective-[60rem] hover:-translate-y-0.75"
          >
            <div
              className={cn(
                "grid h-full grid-cols-1 transition-transform duration-500 ease-out transform-3d",
                showMoves && "transform-[rotateY(180deg)]",
              )}
            >
              <div
                aria-hidden={showMoves || undefined}
                inert={showMoves}
                /* An explicit turn keeps the front in the 3D scene, so its back hides. */
                className="min-w-0 transform-[rotateY(0deg)] [grid-area:1/1] backface-hidden"
              >
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
                  /* The card's place lifts instead, carrying both faces. */
                  className="hover:translate-y-0"
                />
              </div>
              {hasBacks ? (
                <div
                  aria-hidden={!showMoves || undefined}
                  inert={!showMoves}
                  className="min-w-0 transform-[rotateY(180deg)] [grid-area:1/1] backface-hidden"
                >
                  <OpponentMoves pokemon={pokemon} />
                </div>
              ) : null}
            </div>
          </li>
        ))}
      </ul>
      {powerUps.length ? (
        <p className="text-ink-2 text-13 font-semibold">{powerUps.join(" ")}</p>
      ) : null}
    </>
  );
};

/* The footnote on what the reading reads them by: their moves, their types, or both. */
const getMovesNote = (
  notes: (typeof reportWording)[StoryOpponentKind]["moves"],
  their: StoryOpponentPokemon[],
) => {
  const known = countOpponentsWithMoves(their);

  return known === 0
    ? notes.none
    : known === their.length
      ? notes.all
      : notes.some(known, their.length);
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
  /* Which battle's cards are turned to their moves, so another battle opens on its faces. */
  const [movesShownFor, setMovesShownFor] = useState<string | null>(null);
  const showMoves = movesShownFor === battle.id;
  const hasMoves = party ? countOpponentsWithMoves(party.pokemon) > 0 : false;

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

      <SheetSection
        className="mt-9 gap-3"
        title={wording.opponentTitle}
        action={
          hasMoves ? (
            <Button
              variant="secondary"
              size="sm"
              aria-pressed={showMoves}
              onClick={() => setMovesShownFor(showMoves ? null : battle.id)}
            >
              Show moves
            </Button>
          ) : null
        }
      >
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
          <TheirTeam party={party} showMoves={showMoves} />
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
                    {party ? (
                      <th scope="col" className="w-8 pb-2">
                        <span className="sr-only">Matchups</span>
                      </th>
                    ) : null}
                  </tr>
                </thead>
                <tbody className="divide-line divide-y">
                  {battle.members.map(
                    ({ bestHit, lands, member, role, takes, weakTo }) => {
                      const name = getPlayTeamMemberName(member);

                      return (
                        <tr
                          key={member.play_pokemon_id}
                          className="align-middle"
                        >
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
                                className="flex flex-wrap gap-1"
                              />
                            ) : (
                              <span className="text-ink-3 text-13 font-bold">
                                None
                              </span>
                            )}
                          </td>
                          {party ? (
                            <td className="py-2 text-right">
                              <ExplanatoryTip
                                triggerVariant="subtle"
                                triggerLabel={`How ${name} matches up`}
                                side="left"
                                content={
                                  <MemberMatchups
                                    lands={lands}
                                    name={name}
                                    recordedMoves={member.moves.length > 0}
                                    takes={takes}
                                  />
                                }
                              />
                            </td>
                          ) : null}
                        </tr>
                      );
                    },
                  )}
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
              ? getMovesNote(wording.moves, party.pokemon)
              : "\u201cWeak to\u201d reads their specialty against each Pokémon's own types."}
          </p>
        </>
      )}
    </div>
  );
};
