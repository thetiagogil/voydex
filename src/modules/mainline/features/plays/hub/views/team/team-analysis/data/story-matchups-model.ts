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
 * One Pokémon on an opponent's team in its first battle. A team that depends
 * on a Play's choice (usually the starter) has one set of rows per choice.
 */
export type StoryOpponentPartyRow = {
  /* The Play's choice this team follows ("10001/bulbasaur"); null when it follows none. */
  choiceKey: string | null;
  formSlug: string;
  /* Set when the team is one game's of its version group. */
  gameId: number | null;
  level: number;
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

export type StoryMatchupOpponent = {
  id: number;
  name: string;
  primaryType: Type | null;
  role: string;
  secondaryType: Type | null;
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
  id: number;
  /* "Gym Leader", "Champion" and so on. */
  kind: string;
  members: StoryMatchupMember[];
  milestoneName: string;
  name: string;
  opponents: StoryMatchupOpponent[];
  /* Their team, or null where Voydex doesn't have it. */
  party: StoryMatchupParty | null;
  /* Their team's levels ("Lv. 19–20"), for the battle's row. */
  partyLevels: string | null;
  /* The reading of a battle ahead against their team; null once won or without their team. */
  reading: Omit<StoryBattleReading, "members"> | null;
  /* The types the opponents specialise in, without repeats. */
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
  defaultBattleId: number | null;
  wonCount: number;
};

/* The battles Story matchups reads (v3: every Gym Leader and the Champion). */
const battleKinds: Record<string, string> = {
  champion: "Champion",
  "elite-four": "Elite Four",
  "gym-leader": "Gym Leader",
  kahuna: "Kahuna",
};

type OpponentRef = {
  opponent_id: number;
  name: string;
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

/*
 * An opponent's teams by the choice each follows, in the order Voydex lists
 * them, so the first is the one read while the choice isn't recorded.
 */
const groupParties = (
  rows: StoryOpponentPartyRow[],
  typeOf: (id: number | null) => Type | null,
) => {
  const partiesByOpponentId = new Map<
    number,
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
    const parties =
      partiesByOpponentId.get(row.opponentId) ??
      partiesByOpponentId.set(row.opponentId, new Map()).get(row.opponentId)!;
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
      key: `${row.opponentId}-${key}-${row.slot}`,
      level: row.level,
      name: row.name,
      types: [typeOf(row.primaryTypeId), typeOf(row.secondaryTypeId)].filter(
        (type): type is Type => type !== null,
      ),
    });
  }

  return partiesByOpponentId;
};

/*
 * Every opponent's team in one battle, each picked by the Play's recorded
 * choice. Null unless Voydex has a team for every opponent in it.
 */
const resolveParty = (
  opponentIds: number[],
  partiesByOpponentId: ReturnType<typeof groupParties>,
  chosenChoiceKeys: ReadonlySet<string>,
): StoryMatchupParty | null => {
  const pokemon: StoryOpponentPokemon[] = [];
  const assumedLabels: string[] = [];

  for (const opponentId of opponentIds) {
    const parties = [...(partiesByOpponentId.get(opponentId)?.values() ?? [])];
    const chosen =
      parties.find(
        (party) =>
          party.choiceKey !== null && chosenChoiceKeys.has(party.choiceKey),
      ) ?? (parties.length === 1 ? parties[0] : null);
    const party = chosen ?? parties[0];

    if (!party) {
      return null;
    }

    if (!chosen && party.label) {
      assumedLabels.push(party.label);
    }

    pokemon.push(...party.pokemon);
  }

  return {
    note: assumedLabels.length
      ? `Their team depends on a choice this Play hasn't recorded, so this reads the one for ${assumedLabels.join(" and ")}.`
      : null,
    pokemon,
  };
};

/*
 * Story matchups (v3 `matchups`): every Gym Leader, Kahuna, Elite Four
 * member and Champion the Story names, by chapter in Story's order. A battle
 * won keeps its date and the team saved with it; a battle ahead is read
 * against the active team by the opponent's specialty type, the only part of
 * their team Voydex knows. Opponents for the Play's other version are left
 * out.
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
  const partiesByOpponentId = groupParties(
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

    if (!opponents.length) {
      continue;
    }

    const specialtyTypes = [
      ...new Map(
        opponents
          .flatMap((ref) => [
            typeOf(ref.primary_type_id),
            typeOf(ref.secondary_type_id),
          ])
          .filter((type): type is Type => type !== null)
          .map((type) => [type.id, type]),
      ).values(),
    ];

    const badgeSlug = typeOf(
      getMilestoneBadgeTypeId(milestone.badge_refs),
    )?.slug;

    const isWon = Boolean(milestone.is_completed);
    const party = resolveParty(
      opponents.map((ref) => ref.opponent_id),
      partiesByOpponentId,
      chosenChoiceKeys,
    );
    const reading =
      party && !isWon
        ? readStoryBattle({
            generationOrder,
            members,
            opponentName: opponents.length === 1 ? opponents[0].name : null,
            their: party.pokemon,
            types,
          })
        : null;
    const partyRange = party
      ? getLevelRange(party.pokemon.map((pokemon) => pokemon.level))
      : null;

    battles.push({
      badgeType: badgeSlug && isPokemonTypeSlug(badgeSlug) ? badgeSlug : null,
      chapter: milestone.category_name ?? "Story",
      completedAt: milestone.completed_at,
      id: milestone.milestone_id,
      kind: battleKinds[opponents[0].opponent_role],
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
      name:
        opponents.length === 1
          ? opponents[0].name
          : (milestone.milestone_name ?? opponents[0].name),
      opponents: opponents.map((ref) => ({
        id: ref.opponent_id,
        name: ref.name,
        primaryType: typeOf(ref.primary_type_id),
        role: ref.opponent_role,
        secondaryType: typeOf(ref.secondary_type_id),
      })),
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
      where: milestone.description ?? milestone.category_name ?? null,
    });
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
