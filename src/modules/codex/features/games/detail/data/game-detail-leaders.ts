import type { CodexGameLeader } from "@/modules/codex/features/games/detail/types";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { getTrainerPortraitUrl } from "@/modules/reference/features/trainers/data/trainer-portraits";
import type {
  PokemonForm,
  PokemonSpecies,
  Type,
} from "@/modules/reference/types";

/* The roles the game page lists as "Gym Leaders and Champion": the badge (or stamp) holders and whoever waits at the end. */
export const codexLeaderRoles = ["gym-leader", "kahuna", "champion"] as const;

export type CodexLeaderOpponentRow = {
  game_id: number | null;
  id: number;
  name: string;
  opponent_role: string;
  place: string | null;
  primary_type_id: number | null;
  slug: string;
  sort_order: number;
  /* Their portrait's file on the assets site; null where there is none. */
  sprite_slug: string | null;
};

export type CodexLeaderTeamMemberRow = {
  /* Set on an ally's Pokémon fighting beside the player, never the leader's own. */
  ally_opponent_id: number | null;
  /* The player's choice (usually the starter) this team follows, when the team depends on one. */
  decision_option_slug: string | null;
  form_id: number;
  game_id: number | null;
  level: number;
  milestone_id: number;
  opponent_id: number;
  slot: number;
  species_id: number;
  /* A team that depends on something Voydex doesn't record, when it does. */
  variant_slug: string | null;
};

export type CodexLeaderRows = {
  /* Which stored form reaches each battle form an opponent's Pokémon takes (Gigantamax Charizard: Charizard). */
  battleFormBases: { base_form_id: number; battle_form_id: number }[];
  forms: Pick<PokemonForm, "id" | "is_default" | "name" | "slug">[];
  members: CodexLeaderTeamMemberRow[];
  opponents: CodexLeaderOpponentRow[];
  species: Pick<PokemonSpecies, "id" | "name">[];
  types: Pick<Type, "id" | "name" | "slug">[];
};

const groupBy = <Key, Row>(
  rows: readonly Row[],
  getKey: (row: Row) => Key,
): Map<Key, Row[]> => {
  const groups = new Map<Key, Row[]>();

  for (const row of rows) {
    const group = groups.get(getKey(row)) ?? [];
    group.push(row);
    groups.set(getKey(row), group);
  }

  return groups;
};

const topLevel = (rows: readonly CodexLeaderTeamMemberRow[]) =>
  Math.max(...rows.map((member) => member.level));

/* The battles of a leader's own Pokémon, lowest top level first. */
const battlesInOrder = (members: readonly CodexLeaderTeamMemberRow[]) =>
  [
    ...groupBy(
      members.filter((member) => member.ally_opponent_id === null),
      (member) => member.milestone_id,
    ).values(),
  ].toSorted((left, right) => topLevel(left) - topLevel(right));

/*
 * The Pokémon of one battle the Codex can name without a Play: where the
 * team depends on the player's choice (Leon's team follows your starter),
 * the Pokémon every version brings; where nothing is shared, the first
 * version's team.
 */
const pickCertainMembers = (battle: readonly CodexLeaderTeamMemberRow[]) => {
  const versions = [
    ...groupBy(
      battle,
      (member) => member.decision_option_slug ?? member.variant_slug ?? "",
    ),
  ].toSorted(([left], [right]) => left.localeCompare(right));

  if (versions.length < 2) return [...battle];

  const shared = battle.filter((member) =>
    versions.every(([, rows]) =>
      rows.some((row) => row.form_id === member.form_id),
    ),
  );

  return shared.length ? shared : versions[0][1];
};

/*
 * A leader's ace: the strongest Pokémon of the first time you face them.
 * Their first battle is the one with the lowest top level (a rematch or
 * the Champion Cup comes later and higher); in it, among the Pokémon they
 * bring whatever you chose, the ace is the highest level, and the last in
 * the party when two share it. An ally's Pokémon beside you never counts.
 * Null when no team is seeded for them.
 */
export const pickLeaderAce = (
  members: readonly CodexLeaderTeamMemberRow[],
): CodexLeaderTeamMemberRow | null => {
  const first = battlesInOrder(members)[0];

  if (!first) return null;

  return pickCertainMembers(first).toSorted(
    (left, right) => right.level - left.level || right.slot - left.slot,
  )[0];
};

/*
 * The Gym Leaders (kahunas in Alola) and the Champion of one game, in the
 * order you meet them: the group's shared leaders and the picked game's
 * own (Bea in Sword, Allister in Shield), each with its type, its place
 * and the ace of your first battle, shown as the Pokémon you'd meet
 * outside battle (Charizard, not Gigantamax Charizard). A leader fought
 * again later under the same role (Korrina at Geosenge Town, Wallace in
 * the Delta Episode, Nanu at the Aether House) is listed once, at the
 * battle with the lowest top level, where you first meet them. Team rows
 * of another game are left out (Bea's Champion Cup team belongs to Sword).
 */
export const buildGameLeaders = (
  rows: CodexLeaderRows,
  gameId: number,
): CodexGameLeader[] => {
  const typeById = new Map(rows.types.map((type) => [type.id, type]));
  const formById = new Map(rows.forms.map((form) => [form.id, form]));
  const speciesById = new Map(
    rows.species.map((species) => [species.id, species]),
  );
  const baseFormIdByBattleFormId = new Map<number, number>();

  for (const base of rows.battleFormBases.toSorted(
    (left, right) => left.base_form_id - right.base_form_id,
  )) {
    if (!baseFormIdByBattleFormId.has(base.battle_form_id)) {
      baseFormIdByBattleFormId.set(base.battle_form_id, base.base_form_id);
    }
  }
  const inGame = <Row extends { game_id: number | null }>(row: Row) =>
    row.game_id === null || row.game_id === gameId;

  const ownMembers = (opponent: CodexLeaderOpponentRow) =>
    rows.members.filter(
      (member) => member.opponent_id === opponent.id && inGame(member),
    );
  /* Where you first meet them: the top level of their lowest battle, none last. */
  const firstTopLevel = (opponent: CodexLeaderOpponentRow) => {
    const first = battlesInOrder(ownMembers(opponent))[0];

    return first ? topLevel(first) : Number.POSITIVE_INFINITY;
  };
  const byRoleAndName = groupBy(
    rows.opponents.filter(
      (opponent) =>
        inGame(opponent) &&
        (codexLeaderRoles as readonly string[]).includes(
          opponent.opponent_role,
        ),
    ),
    (opponent) => `${opponent.opponent_role}:${opponent.name}`,
  );

  return [...byRoleAndName.values()]
    .map(
      (same) =>
        same.toSorted(
          (left, right) =>
            firstTopLevel(left) - firstTopLevel(right) ||
            left.sort_order - right.sort_order,
        )[0],
    )
    .toSorted((left, right) => left.sort_order - right.sort_order)
    .map((opponent) => {
      const type = opponent.primary_type_id
        ? (typeById.get(opponent.primary_type_id) ?? null)
        : null;
      const ace = pickLeaderAce(ownMembers(opponent));
      const aceForm = ace
        ? formById.get(baseFormIdByBattleFormId.get(ace.form_id) ?? ace.form_id)
        : undefined;
      const aceSpecies = ace ? speciesById.get(ace.species_id) : undefined;

      return {
        ace:
          aceForm && aceSpecies
            ? {
                imageUrl: getPokemonFormImageUrl(aceForm, "sm"),
                name: aceForm.is_default ? aceSpecies.name : aceForm.name,
              }
            : null,
        key: String(opponent.id),
        name: opponent.name,
        place: opponent.place,
        portraitUrl: getTrainerPortraitUrl(opponent.sprite_slug),
        role: opponent.opponent_role,
        type: type ? { name: type.name, slug: type.slug } : null,
      };
    });
};
