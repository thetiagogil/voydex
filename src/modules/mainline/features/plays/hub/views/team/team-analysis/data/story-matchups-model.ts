import type {
  MainlinePlayLevelCap,
  MainlinePlayMilestone,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/hub/types";
import type { PlayTeamSnapshotMember } from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";
import { getMilestoneBadgeTypeId } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import {
  gameMechanics,
  resolveGameMechanics,
  supportsGameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";
import {
  battleFormMechanicLabels,
  battleFormMechanics,
  hasBattleFormMechanic,
  type BattleFormMechanic,
} from "@/modules/reference/features/pokemon/data/battle-mechanics";
import type { LegendaryRarity } from "@/modules/reference/features/pokemon/types";
import { getDefensiveTypeMultiplier } from "@/modules/reference/features/pokemon/domain/type-effectiveness";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { Type } from "@/modules/reference/types";
import type { Json } from "@/shared/types/database.types";

import {
  formatLevelRange,
  getLevelRange,
  readStoryBattle,
  type StoryBattleReading,
  type StoryMemberReading,
  type StoryOpponentKind,
  type StoryOpponentMechanic,
  type StoryOpponentMechanicKind,
  type StoryOpponentPokemon,
} from "./story-battle-reading";

export type StoryMatchupMilestone = Pick<
  MainlinePlayMilestone,
  | "badge_refs"
  | "category_id"
  | "category_name"
  | "completed_at"
  | "description"
  | "is_completed"
  | "is_required_for_completion"
  | "milestone_id"
  | "milestone_name"
  | "opponent_refs"
  | "sort_order"
>;

/*
 * One Pokémon on an opponent's team in one Story battle. A team that depends
 * on a Play's choice (usually the starter) has one set of rows per choice.
 */
export type StoryOpponentPartyRow = {
  /* The mechanic its stored form needs (a Mega, a Gigantamax form); null for any other form. */
  battleFormMechanic: BattleFormMechanic | null;
  /* The Play's choice this team follows ("10001/bulbasaur"); null when it follows none. */
  choiceKey: string | null;
  /* It Dynamaxes in this battle. */
  dynamaxes: boolean;
  formSlug: string;
  /* Set when the team is one game's of its version group. */
  gameId: number | null;
  heldItem: { isZCrystal: boolean; name: string; slug: string } | null;
  /* Set when the species is Legendary or Mythical. */
  legendary: LegendaryRarity | null;
  level: number;
  /* The Story battle this team is for. */
  milestoneId: number;
  name: string;
  opponentId: number;
  primaryTypeId: number | null;
  secondaryTypeId: number | null;
  slot: number;
  /* The Tera Type it Terastallizes into; `typeId` is null for Stellar. */
  teraType: { name: string; typeId: number | null } | null;
  /* A team for something Voydex doesn't record, such as how an earlier battle went. */
  variantKey: string | null;
  /* The choice's name ("Bulbasaur") or the variant's. */
  variantLabel: string | null;
};

/* The key a Play's recorded choice and a team that follows it share. */
export const getStoryChoiceKey = (milestoneId: number, optionSlug: string) =>
  `${milestoneId}/${optionSlug}`;

/* The choice milestone a choice key belongs to ("10001/bulbasaur" -> "10001"). */
const getChoiceMilestoneKey = (choiceKey: string) =>
  choiceKey.slice(0, choiceKey.indexOf("/"));

/* What the reader hands the model. */
export type StoryMatchupsRows = {
  /* The choices the Play has recorded, such as its starter, by `getStoryChoiceKey`. */
  chosenChoiceKeys: ReadonlySet<string>;
  opponentGameIdById: ReadonlyMap<number, number | null>;
  orderedMilestones: StoryMatchupMilestone[];
  partyRows: StoryOpponentPartyRow[];
  snapshotsByMilestoneId: ReadonlyMap<number, PlayTeamSnapshotMember[]>;
};

/* One of your active Pokémon against a battle still ahead. */
export type StoryMatchupMember = Pick<
  StoryMemberReading,
  "bestHit" | "role"
> & {
  member: MainlinePlayTeamMember;
  /*
   * Their types that hit this Pokémon super effectively: their team's when
   * Voydex has it, else the opponent's specialty.
   */
  weakTo: Type[];
};

/* Who you face, when Voydex has their team. */
export type StoryMatchupParty = {
  /* Said when the team depends on a choice the Play hasn't recorded. */
  note: string | null;
  pokemon: StoryOpponentPokemon[];
};

/*
 * A legendary encounter: the Story's boss battle where the opponent is one
 * Legendary or Mythical Pokémon, not a trainer's team.
 */
const getLegendaryRarity = (
  role: string,
  pokemon: StoryOpponentPokemon[] | undefined,
): LegendaryRarity | null =>
  role === "boss" && pokemon?.length === 1 ? pokemon[0].legendary : null;

export type StoryMatchupBattle = {
  /* A gym's badge type, so a battle won wears its badge. */
  badgeType: PokemonTypeSlug | null;
  chapter: string;
  completedAt: string | null;
  /* The story point and opponent ("10005/1002"): a story point can hold several battles. */
  id: string;
  /* "Gym Leader", "Champion" and so on; "Legendary" or "Mythical" for those encounters. */
  kind: string;
  members: StoryMatchupMember[];
  /* The story point the battle belongs to. */
  milestoneName: string;
  /* The opponent's name. */
  name: string;
  /* A legendary is met as one Pokémon, so it reads as "it" and not "them". */
  opponentKind: StoryOpponentKind;
  /* Not needed to finish the Story, such as a roaming legendary you may skip. */
  isOptional: boolean;
  /* Their team, or null where Voydex doesn't have it. */
  party: StoryMatchupParty | null;
  /* Their team's levels ("Lv. 19–20"), for the battle's row. */
  partyLevels: string | null;
  /* The reading of a battle ahead against their team; null once won or without their team. */
  reading: Omit<StoryBattleReading, "members"> | null;
  /* The types the opponent specialises in. */
  specialtyTypes: Type[];
  state: "ahead" | "next" | "won";
  /* "Your team then": the team saved when the battle was recorded. */
  teamThen: PlayTeamSnapshotMember[];
  where: string | null;
};

/*
 * A chapter's battles won, of the battles that count; an optional legendary
 * is a catch you may skip, so it has its own tally.
 */
export type StoryMatchupChapter = {
  battleCount: number;
  battles: StoryMatchupBattle[];
  key: string;
  name: string;
  optionalCount: number;
  optionalDoneCount: number;
  wonCount: number;
};

export type StoryMatchupsModel = {
  /* Battles that count: an optional legendary encounter doesn't. */
  battleCount: number;
  chapters: StoryMatchupChapter[];
  /* The battle the report opens on: the next one, else the last. */
  defaultBattleId: string | null;
  wonCount: number;
};

/* An optional legendary is met, caught or not, never won: it isn't a battle to win. */
const isOptionalLegendary = (battle: StoryMatchupBattle) =>
  battle.opponentKind === "legendary" && battle.isOptional;

/*
 * The battles Story matchups reads: v3's Gym Leaders and Champion, and every
 * other fight the Story names (rivals, bosses, Legends' nobles, titans).
 */
const battleKinds: Record<string, string> = {
  boss: "Boss",
  champion: "Champion",
  "elite-four": "Elite Four",
  "gym-leader": "Gym Leader",
  kahuna: "Kahuna",
  noble: "Noble",
  rival: "Rival",
  "team-star-boss": "Team Star boss",
  titan: "Titan",
  "trial-captain": "Trial captain",
  /* Legends: Z-A's promotion matches and Jacinthe's tournament. */
  "za-royale": "Z-A Royale",
};

type OpponentRef = {
  opponent_id: number;
  name: string;
  /* Where the battle happens, when it isn't the story point's own event. */
  notes: string | null;
  opponent_role: string;
  primary_type_id: number | null;
  secondary_type_id: number | null;
};

const readOpponentRefs = (value: Json | null): OpponentRef[] =>
  Array.isArray(value)
    ? value.flatMap((ref): OpponentRef[] => {
        if (!ref || typeof ref !== "object" || Array.isArray(ref)) {
          return [];
        }

        return typeof ref.opponent_id === "number" &&
          typeof ref.name === "string" &&
          typeof ref.opponent_role === "string"
          ? [
              {
                name: ref.name,
                notes: typeof ref.notes === "string" ? ref.notes : null,
                opponent_id: ref.opponent_id,
                opponent_role: ref.opponent_role,
                primary_type_id:
                  typeof ref.primary_type_id === "number"
                    ? ref.primary_type_id
                    : null,
                secondary_type_id:
                  typeof ref.secondary_type_id === "number"
                    ? ref.secondary_type_id
                    : null,
              },
            ]
          : [];
      })
    : [];

const getTypeSlugs = (types: (Type | null)[]) =>
  types.flatMap((type): PokemonTypeSlug[] =>
    type && isPokemonTypeSlug(type.slug) ? [type.slug] : [],
  );

const battleFormMechanicKinds: Record<
  BattleFormMechanic,
  StoryOpponentMechanicKind
> = {
  [battleFormMechanics.dynamax]: "gigantamax",
  [battleFormMechanics.megaEvolution]: "mega",
  [battleFormMechanics.primalReversion]: "primal",
  [battleFormMechanics.ultraBurst]: "ultra-burst",
};

/*
 * How one of their Pokémon powers up, where the Play's game has that
 * mechanic: it Terastallizes, battles in its Mega or Gigantamax form,
 * Dynamaxes, or holds a Z-Crystal.
 */
const getOpponentMechanic = (
  row: StoryOpponentPartyRow,
  mechanics: GameMechanicsProfile,
): StoryOpponentMechanic | null => {
  if (row.teraType && supportsGameMechanic(mechanics, gameMechanics.terastal)) {
    return { kind: "tera", label: `Tera ${row.teraType.name}` };
  }

  if (
    row.battleFormMechanic &&
    hasBattleFormMechanic(mechanics, row.battleFormMechanic)
  ) {
    return {
      kind: battleFormMechanicKinds[row.battleFormMechanic],
      label: battleFormMechanicLabels[row.battleFormMechanic],
    };
  }

  if (row.dynamaxes && supportsGameMechanic(mechanics, gameMechanics.dynamax)) {
    return { kind: "dynamax", label: "Dynamax" };
  }

  return row.heldItem?.isZCrystal &&
    supportsGameMechanic(mechanics, gameMechanics.zMoves)
    ? { kind: "z-move", label: "Z-Move" }
    : null;
};

/* The key one opponent's teams in one battle share. */
const getBattleOpponentKey = (milestoneId: number, opponentId: number) =>
  `${milestoneId}/${opponentId}`;

/*
 * Each opponent's teams in each battle by the choice each follows, in the
 * order Voydex lists them, so the first is the one read while the choice
 * isn't recorded.
 */
const groupParties = (
  rows: StoryOpponentPartyRow[],
  typeOf: (id: number | null) => Type | null,
  mechanics: GameMechanicsProfile,
) => {
  const hasHeldItems = supportsGameMechanic(mechanics, gameMechanics.heldItems);

  const partiesByBattleOpponent = new Map<
    string,
    Map<
      string,
      {
        choiceKey: string | null;
        label: string | null;
        pokemon: StoryOpponentPokemon[];
      }
    >
  >();

  for (const row of [...rows].sort((left, right) => left.slot - right.slot)) {
    const battleOpponentKey = getBattleOpponentKey(
      row.milestoneId,
      row.opponentId,
    );
    const parties =
      partiesByBattleOpponent.get(battleOpponentKey) ??
      partiesByBattleOpponent
        .set(battleOpponentKey, new Map())
        .get(battleOpponentKey)!;
    const key = `${row.gameId ?? ""}:${row.choiceKey ?? ""}:${row.variantKey ?? ""}`;
    const party =
      parties.get(key) ??
      parties
        .set(key, {
          choiceKey: row.choiceKey,
          label: row.variantLabel,
          pokemon: [],
        })
        .get(key)!;

    const mechanic = getOpponentMechanic(row, mechanics);

    party.pokemon.push({
      formSlug: row.formSlug,
      heldItem:
        hasHeldItems && row.heldItem
          ? { name: row.heldItem.name, slug: row.heldItem.slug }
          : null,
      imageUrl: getPokemonFormImageUrl({ name: row.name, slug: row.formSlug }),
      key: `${battleOpponentKey}-${key}-${row.slot}`,
      legendary: row.legendary,
      level: row.level,
      mechanic,
      name: row.name,
      teraType:
        mechanic?.kind === "tera" ? typeOf(row.teraType?.typeId ?? null) : null,
      types: [typeOf(row.primaryTypeId), typeOf(row.secondaryTypeId)].filter(
        (type): type is Type => type !== null,
      ),
    });
  }

  return partiesByBattleOpponent;
};

/*
 * An opponent's team in one battle, picked by the Play's recorded choice.
 * Null when Voydex doesn't have it, or "skip" when the battle only happens
 * after a choice the Play made differently (the roaming bird your starter
 * picks).
 */
const resolveParty = (
  battleOpponentKey: string,
  role: string,
  partiesByBattleOpponent: ReturnType<typeof groupParties>,
  chosenChoiceKeys: ReadonlySet<string>,
): StoryMatchupParty | "skip" | null => {
  const parties = [
    ...(partiesByBattleOpponent.get(battleOpponentKey)?.values() ?? []),
  ];
  const matched = parties.find(
    (party) =>
      party.choiceKey !== null && chosenChoiceKeys.has(party.choiceKey),
  );
  const recordedChoiceMilestones = new Set(
    [...chosenChoiceKeys].map(getChoiceMilestoneKey),
  );

  if (
    !matched &&
    parties.length > 0 &&
    parties.every(
      (party) =>
        party.choiceKey !== null &&
        recordedChoiceMilestones.has(getChoiceMilestoneKey(party.choiceKey)),
    )
  ) {
    return "skip";
  }

  const chosen =
    matched ??
    (parties.length === 1 && parties[0].choiceKey === null ? parties[0] : null);
  /* Never fall back to a team a recorded choice has already ruled out. */
  const party =
    chosen ??
    parties.find(
      (candidate) =>
        candidate.choiceKey === null ||
        !recordedChoiceMilestones.has(
          getChoiceMilestoneKey(candidate.choiceKey),
        ),
    ) ??
    parties[0];

  if (!party) {
    return null;
  }

  const isLegendary = Boolean(getLegendaryRarity(role, party.pokemon));
  const note =
    chosen || !party.label
      ? null
      : !party.choiceKey
        ? `${isLegendary ? "It depends" : "Their team depends"} on something Voydex doesn't record, so this reads one way it can go: ${party.label}.`
        : parties.length === 1
          ? `You ${isLegendary ? "meet it" : "face them"} only if you chose ${party.label}, and this Play hasn't recorded that choice.`
          : `${isLegendary ? "It depends" : "Their team depends"} on a choice this Play hasn't recorded, so this reads the one for ${party.label}.`;

  return { note, pokemon: party.pokemon };
};

/*
 * Story matchups (v3 `matchups`): every battle the Story names (Gym
 * Leaders, Kahunas, the Elite Four, Champions, rivals and bosses), by
 * chapter in Story's order, each opponent of a story point its own battle. A battle won keeps its date, their team and the
 * team saved with it; a battle ahead is read against the active team and
 * their team in that battle, or, where Voydex doesn't have it, the
 * opponent's specialty type only. Each battle has its own team, so a rematch
 * reads the team you face then. Opponents for the Play's other version are
 * left out, as is a battle that only happens after a choice the Play made
 * differently.
 */
export const buildStoryMatchupsModel = ({
  chosenChoiceKeys,
  generationOrder,
  mechanics,
  members,
  orderedMilestones,
  partyRows,
  playGameId,
  opponentGameIdById,
  snapshotsByMilestoneId,
  types,
}: {
  chosenChoiceKeys: ReadonlySet<string>;
  generationOrder: number;
  /* The Play's game: their mechanics and held items show only where it has them. */
  mechanics: GameMechanicsProfile;
  members: MainlinePlayTeamMember[];
  /* In Story's order. */
  orderedMilestones: StoryMatchupMilestone[];
  opponentGameIdById: ReadonlyMap<number, number | null>;
  partyRows: StoryOpponentPartyRow[];
  playGameId: number | null;
  snapshotsByMilestoneId: ReadonlyMap<number, PlayTeamSnapshotMember[]>;
  types: Type[];
}): StoryMatchupsModel => {
  const typeById = new Map(types.map((type) => [type.id, type]));
  const typeOf = (id: number | null) =>
    id === null ? null : (typeById.get(id) ?? null);
  const battles: StoryMatchupBattle[] = [];
  /* A team for the Play's other version is left out, as its leaders are. */
  const partiesByBattleOpponent = groupParties(
    partyRows.filter((row) => row.gameId === null || row.gameId === playGameId),
    typeOf,
    mechanics,
  );

  for (const milestone of orderedMilestones) {
    if (milestone.milestone_id === null) {
      continue;
    }

    const opponents = readOpponentRefs(milestone.opponent_refs).filter(
      (ref) => {
        const gameId = opponentGameIdById.get(ref.opponent_id) ?? null;

        return (
          ref.opponent_role in battleKinds &&
          (gameId === null || gameId === playGameId)
        );
      },
    );
    const badgeSlug = typeOf(
      getMilestoneBadgeTypeId(milestone.badge_refs),
    )?.slug;
    const isWon = Boolean(milestone.is_completed);

    /* A story point can hold several battles, such as a rival before a Gym. */
    for (const ref of opponents) {
      const specialtyTypes = [
        typeOf(ref.primary_type_id),
        typeOf(ref.secondary_type_id),
      ].filter((type): type is Type => type !== null);
      const party = resolveParty(
        getBattleOpponentKey(milestone.milestone_id, ref.opponent_id),
        ref.opponent_role,
        partiesByBattleOpponent,
        chosenChoiceKeys,
      );

      if (party === "skip") {
        continue;
      }
      const legendary = getLegendaryRarity(ref.opponent_role, party?.pokemon);
      const opponentKind: StoryOpponentKind = legendary
        ? "legendary"
        : "trainer";
      const reading =
        party && !isWon
          ? readStoryBattle({
              generationOrder,
              members,
              opponentKind,
              opponentName: ref.name,
              their: party.pokemon,
              types,
            })
          : null;
      const partyRange = party
        ? getLevelRange(party.pokemon.map((pokemon) => pokemon.level))
        : null;

      battles.push({
        badgeType:
          ref.opponent_role === "gym-leader" &&
          badgeSlug &&
          isPokemonTypeSlug(badgeSlug)
            ? badgeSlug
            : null,
        chapter: milestone.category_name ?? "Story",
        completedAt: milestone.completed_at,
        id: getBattleOpponentKey(milestone.milestone_id, ref.opponent_id),
        isOptional: !milestone.is_required_for_completion,
        kind: legendary ?? battleKinds[ref.opponent_role],
        members: members.map((member, index) => {
          const memberReading = reading?.members[index];

          if (memberReading) {
            return {
              bestHit: memberReading.bestHit,
              member,
              role: memberReading.role,
              weakTo: memberReading.weakTo,
            };
          }

          const memberTypes = getTypeSlugs([
            member.primaryType,
            member.secondaryType,
          ]);

          return {
            bestHit: null,
            member,
            role: null,
            weakTo: memberTypes.length
              ? specialtyTypes.filter(
                  (type) =>
                    isPokemonTypeSlug(type.slug) &&
                    getDefensiveTypeMultiplier(
                      type.slug,
                      memberTypes,
                      generationOrder,
                    ) >= 2,
                )
              : [],
          };
        }),
        milestoneName: milestone.milestone_name ?? "Battle",
        name: ref.name,
        opponentKind,
        party,
        partyLevels: partyRange ? formatLevelRange(partyRange) : null,
        reading: reading
          ? {
              levels: reading.levels,
              state: reading.state,
              summary: reading.summary,
              uncoveredTypes: reading.uncoveredTypes,
            }
          : null,
        specialtyTypes,
        state: isWon ? "won" : "ahead",
        teamThen: snapshotsByMilestoneId.get(milestone.milestone_id) ?? [],
        where:
          ref.notes ?? milestone.description ?? milestone.category_name ?? null,
      });
    }
  }

  /* An optional legendary is a side catch, so the next objective is a real battle when one is left. */
  const nextBattle =
    battles.find(
      (battle) => battle.state !== "won" && !isOptionalLegendary(battle),
    ) ?? battles.find((battle) => battle.state !== "won");

  if (nextBattle) {
    nextBattle.state = "next";
  }

  const chapters: StoryMatchupChapter[] = [];

  for (const battle of battles) {
    const current = chapters.at(-1);

    if (current?.name === battle.chapter) {
      current.battles.push(battle);
    } else {
      chapters.push({
        battleCount: 0,
        battles: [battle],
        /* Doubles as an element id, so no spaces. */
        key: `${battle.chapter.toLowerCase().replace(/[^a-z0-9]+/g, "-")}-${chapters.length}`,
        name: battle.chapter,
        optionalCount: 0,
        optionalDoneCount: 0,
        wonCount: 0,
      });
    }
  }

  for (const chapter of chapters) {
    const optional = chapter.battles.filter(isOptionalLegendary);
    const counted = chapter.battles.filter(
      (battle) => !isOptionalLegendary(battle),
    );

    chapter.battleCount = counted.length;
    chapter.optionalCount = optional.length;
    chapter.optionalDoneCount = optional.filter(
      (battle) => battle.state === "won",
    ).length;
    chapter.wonCount = counted.filter(
      (battle) => battle.state === "won",
    ).length;
  }

  return {
    battleCount: chapters.reduce(
      (sum, chapter) => sum + chapter.battleCount,
      0,
    ),
    chapters,
    defaultBattleId: nextBattle?.id ?? battles.at(-1)?.id ?? null,
    wonCount: chapters.reduce((sum, chapter) => sum + chapter.wonCount, 0),
  };
};

/* The battles Level caps takes its cap from; Z-A's promotion matches stand in for gyms. */
const levelCapKinds = new Set([
  battleKinds["gym-leader"],
  battleKinds.kahuna,
  battleKinds["elite-four"],
  battleKinds.champion,
  battleKinds["za-royale"],
]);

/* The story point a battle belongs to ("10005/1002" -> "10005"). */
const getBattleMilestoneKey = (battleId: string) =>
  battleId.slice(0, battleId.indexOf("/"));

const toCapBattle = ({ kind, name }: StoryMatchupBattle) => ({
  isPromotionMatch: kind === battleKinds["za-royale"],
  kind,
  name,
});

const getPartyAce = (battle: StoryMatchupBattle) =>
  battle.party?.pokemon.length
    ? Math.max(...battle.party.pokemon.map((pokemon) => pokemon.level))
    : null;

/*
 * Level caps' cap: the highest level on the team of the first Gym Leader,
 * Kahuna, Elite Four member, Champion or Z-A promotion match still ahead in
 * Story, read as Story matchups reads that battle (its game's team, the one
 * the Play's choice picks). Where that story point holds several such
 * battles in a row, such as Jacinthe's tournament, the cap is the strongest
 * of them.
 */
export const getStoryLevelCap = (
  model: StoryMatchupsModel,
): MainlinePlayLevelCap => {
  const capBattles = model.chapters
    .flatMap((chapter) => chapter.battles)
    .filter(
      (candidate) =>
        candidate.state !== "won" && levelCapKinds.has(candidate.kind),
    );
  const first = capBattles[0];

  if (!first) {
    return { status: "no-battle" };
  }

  const milestoneKey = getBattleMilestoneKey(first.id);
  let capped: { battle: StoryMatchupBattle; level: number } | null = null;

  for (const battle of capBattles) {
    if (getBattleMilestoneKey(battle.id) !== milestoneKey) {
      break;
    }

    const level = getPartyAce(battle);

    if (level !== null && (!capped || level > capped.level)) {
      capped = { battle, level };
    }
  }

  return capped
    ? {
        battle: toCapBattle(capped.battle),
        level: capped.level,
        status: "capped",
      }
    : { battle: toCapBattle(first), status: "no-team" };
};

/* Level caps' cap from the Play's Story rows; no team of yours is read. */
export const buildStoryLevelCap = ({
  playGameId,
  rows,
}: {
  playGameId: number | null;
  rows: StoryMatchupsRows;
}) =>
  getStoryLevelCap(
    buildStoryMatchupsModel({
      ...rows,
      generationOrder: 0,
      /* Levels only: no mechanic is read. */
      mechanics: resolveGameMechanics({
        gameId: null,
        generationId: null,
        versionGroupId: null,
      }),
      members: [],
      playGameId,
      types: [],
    }),
  );
