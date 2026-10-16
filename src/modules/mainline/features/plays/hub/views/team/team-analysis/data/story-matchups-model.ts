import type {
  MainlinePlayMilestone,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/hub/types";
import type { PlayTeamSnapshotMember } from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";
import { getMilestoneBadgeTypeId } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { getDefensiveTypeMultiplier } from "@/modules/reference/features/pokemon/domain/type-effectiveness";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { Type } from "@/modules/reference/types";
import type { Json } from "@/shared/types/database.types";

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

/* What the reader hands the model. */
export type StoryMatchupsRows = {
  opponentGameIdById: ReadonlyMap<number, number | null>;
  orderedMilestones: StoryMatchupMilestone[];
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
export type StoryMatchupMember = {
  member: MainlinePlayTeamMember;
  /* The opponent's specialty types that hit this Pokémon super effectively. */
  weakTo: Type[];
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
 * Story matchups (v3 `matchups`): every Gym Leader, Kahuna, Elite Four
 * member and Champion the Story names, by chapter in Story's order. A battle
 * won keeps its date and the team saved with it; a battle ahead is read
 * against the active team by the opponent's specialty type, the only part of
 * their team Voydex knows. Opponents for the Play's other version are left
 * out.
 */
export const buildStoryMatchupsModel = ({
  generationOrder,
  members,
  orderedMilestones,
  playGameId,
  opponentGameIdById,
  snapshotsByMilestoneId,
  types,
}: {
  generationOrder: number;
  members: MainlinePlayTeamMember[];
  /* In Story's order. */
  orderedMilestones: StoryMatchupMilestone[];
  opponentGameIdById: ReadonlyMap<number, number | null>;
  playGameId: number | null;
  snapshotsByMilestoneId: ReadonlyMap<number, PlayTeamSnapshotMember[]>;
  types: Type[];
}): StoryMatchupsModel => {
  const typeById = new Map(types.map((type) => [type.id, type]));
  const typeOf = (id: number | null) =>
    id === null ? null : (typeById.get(id) ?? null);
  const battles: StoryMatchupBattle[] = [];

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

    battles.push({
      badgeType: badgeSlug && isPokemonTypeSlug(badgeSlug) ? badgeSlug : null,
      chapter: milestone.category_name ?? "Story",
      completedAt: milestone.completed_at,
      id: milestone.milestone_id,
      kind: battleKinds[opponents[0].opponent_role],
      members: members.map((member) => {
        const memberTypes = getTypeSlugs([
          member.primaryType,
          member.secondaryType,
        ]);

        return {
          member,
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
      specialtyTypes,
      state: milestone.is_completed ? "won" : "ahead",
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
