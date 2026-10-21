import type {
  MainlinePlayMilestone,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/hub/types";
import type { PlayTeamSnapshotMember } from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";
import { getMilestoneBadgeTypeId } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
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
  /* The Play's choice this team follows ("10001/bulbasaur"); null when it follows none. */
  choiceKey: string | null;
  formSlug: string;
  /* Set when the team is one game's of its version group. */
  gameId: number | null;
  level: number;
  /* The Story battle this team is for. */
  milestoneId: number;
  name: string;
  opponentId: number;
  primaryTypeId: number | null;
  secondaryTypeId: number | null;
  slot: number;
  /* A team for something Voydex doesn't record, such as how an earlier battle went. */
  variantKey: string | null;
  /* The choice's name ("Bulbasaur") or the variant's. */
  variantLabel: string | null;
};

/* The key a Play's recorded choice and a team that follows it share. */
export const getStoryChoiceKey = (milestoneId: number, optionSlug: string) =>
  `${milestoneId}/${optionSlug}`;

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

export type StoryMatchupBattle = {
  /* A gym's badge type, so a battle won wears its badge. */
  badgeType: PokemonTypeSlug | null;
  chapter: string;
  completedAt: string | null;
  /* The story point and opponent ("10005/1002"): a story point can hold several battles. */
  id: string;
  /* "Gym Leader", "Champion" and so on. */
  kind: string;
  members: StoryMatchupMember[];
  /* The story point the battle belongs to. */
  milestoneName: string;
  /* The opponent's name. */
  name: string;
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

export type StoryMatchupChapter = {
  battles: StoryMatchupBattle[];
  key: string;
  name: string;
  wonCount: number;
};

export type StoryMatchupsModel = {
  battleCount: number;
  chapters: StoryMatchupChapter[];
  /* The battle the report opens on: the next one, else the last. */
  defaultBattleId: string | null;
  wonCount: number;
};

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
) => {
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

    party.pokemon.push({
      formSlug: row.formSlug,
      imageUrl: getPokemonFormImageUrl({ name: row.name, slug: row.formSlug }),
      key: `${battleOpponentKey}-${key}-${row.slot}`,
      level: row.level,
      name: row.name,
      types: [typeOf(row.primaryTypeId), typeOf(row.secondaryTypeId)].filter(
        (type): type is Type => type !== null,
      ),
    });
  }

  return partiesByBattleOpponent;
};

/*
 * An opponent's team in one battle, picked by the Play's recorded choice.
 * Null when Voydex doesn't have it.
 */
const resolveParty = (
  battleOpponentKey: string,
  partiesByBattleOpponent: ReturnType<typeof groupParties>,
  chosenChoiceKeys: ReadonlySet<string>,
): StoryMatchupParty | null => {
  const parties = [
    ...(partiesByBattleOpponent.get(battleOpponentKey)?.values() ?? []),
  ];
  const chosen =
    parties.find(
      (party) =>
        party.choiceKey !== null && chosenChoiceKeys.has(party.choiceKey),
    ) ?? (parties.length === 1 ? parties[0] : null);
  const party = chosen ?? parties[0];

  if (!party) {
    return null;
  }

  const note =
    chosen || !party.label
      ? null
      : party.choiceKey
        ? `Their team depends on a choice this Play hasn't recorded, so this reads the one for ${party.label}.`
        : `Their team depends on something Voydex doesn't record, so this reads one way it can go: ${party.label}.`;

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
 * left out.
 */
export const buildStoryMatchupsModel = ({
  chosenChoiceKeys,
  generationOrder,
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
        partiesByBattleOpponent,
        chosenChoiceKeys,
      );
      const reading =
        party && !isWon
          ? readStoryBattle({
              generationOrder,
              members,
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
        kind: battleKinds[ref.opponent_role],
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

  const nextBattle = battles.find((battle) => battle.state !== "won");

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
        battles: [battle],
        key: `${battle.chapter}-${chapters.length}`,
        name: battle.chapter,
        wonCount: 0,
      });
    }
  }

  for (const chapter of chapters) {
    chapter.wonCount = chapter.battles.filter(
      (battle) => battle.state === "won",
    ).length;
  }

  return {
    battleCount: battles.length,
    chapters,
    defaultBattleId: nextBattle?.id ?? battles.at(-1)?.id ?? null,
    wonCount: battles.filter((battle) => battle.state === "won").length,
  };
};
