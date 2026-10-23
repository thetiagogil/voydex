import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMemberRow,
  MainlinePlayTeamMove,
  MainlinePlayTeamRows,
} from "@/modules/mainline/features/plays/hub/types";
import type {
  MoveAttribute,
  PokemonAttributes,
} from "@/modules/reference/types";
import { resolveAbilityAttributes } from "@/modules/reference/features/pokemon/data/ability-effects";
import { toBaseStats } from "@/modules/reference/features/pokemon/domain/battle-math";
import type { Json } from "@/shared/types/database.types";
import { byId, uniqueNumberIds } from "@/shared/utils/collections";

type JsonRecord = Record<string, Json>;

const isJsonRecord = (value: Json): value is JsonRecord => {
  return Boolean(value && typeof value === "object" && !Array.isArray(value));
};

type StoredMainlinePlayMove = Pick<
  MainlinePlayTeamMove,
  "id" | "name" | "slot" | "slug"
>;

const getStoredMainlinePlayMoves = (
  value: Json | null,
): StoredMainlinePlayMove[] => {
  if (!Array.isArray(value)) {
    return [];
  }

  return value.flatMap((move) => {
    if (!isJsonRecord(move)) {
      return [];
    }

    const id = move.move_id;
    const name = move.name;
    const slot = move.slot;
    const slug = move.slug;

    return typeof id === "number" &&
      typeof name === "string" &&
      typeof slot === "number" &&
      slot >= 1 &&
      slot <= 4 &&
      typeof slug === "string"
      ? [{ id, name, slot, slug }]
      : [];
  });
};

export const getMainlinePlayTeamMoveIds = (
  members: MainlinePlayTeamMemberRow[],
): number[] => {
  return uniqueNumberIds(
    members.flatMap((member) =>
      getStoredMainlinePlayMoves(member.moves).map((move) => move.id),
    ),
  );
};

export const resolveLatestAttributesByForm = (
  attributes: PokemonAttributes[],
): Map<number, PokemonAttributes> => {
  const latestAttributesByForm = new Map<number, PokemonAttributes>();

  for (const attribute of attributes) {
    const currentAttribute = latestAttributesByForm.get(attribute.form_id);

    if (
      !currentAttribute ||
      attribute.generation_start_id > currentAttribute.generation_start_id
    ) {
      latestAttributesByForm.set(attribute.form_id, attribute);
    }
  }

  return latestAttributesByForm;
};

export const resolveLatestAttributesByMove = (
  attributes: MoveAttribute[],
): Map<number, MoveAttribute> => {
  const latestAttributesByMove = new Map<number, MoveAttribute>();

  for (const attribute of attributes) {
    const currentAttribute = latestAttributesByMove.get(attribute.move_id);

    if (
      !currentAttribute ||
      attribute.generation_start_id > currentAttribute.generation_start_id
    ) {
      latestAttributesByMove.set(attribute.move_id, attribute);
    }
  }

  return latestAttributesByMove;
};

export const buildMainlinePlayTeamPreview = (
  rows: MainlinePlayTeamRows,
): MainlinePlayTeamMember[] => {
  const latestAttributesByForm = resolveLatestAttributesByForm(rows.attributes);
  const latestAttributesByAbility = resolveAbilityAttributes(
    rows.abilityAttributes,
    rows.versionGroupId,
    rows.versionGroups,
  );
  const latestAttributesByMove = resolveLatestAttributesByMove(
    rows.moveAttributes,
  );
  const typeById = byId(rows.types);
  const natureById = byId(rows.natures);
  const validBallItemIds = new Set(rows.validBallItemIds);

  return rows.members.map((member) => {
    const abilityAttributes = member.ability_id
      ? latestAttributesByAbility.get(member.ability_id)
      : null;
    const attributes = member.form_id
      ? latestAttributesByForm.get(member.form_id)
      : null;
    const hasValidBall = member.ball_item_id
      ? validBallItemIds.has(member.ball_item_id)
      : false;
    const moves = getStoredMainlinePlayMoves(member.moves).map((move) => {
      const moveAttributes = latestAttributesByMove.get(move.id) ?? null;

      return {
        ...move,
        attributes: moveAttributes,
        type: moveAttributes
          ? (typeById.get(moveAttributes.type_id) ?? null)
          : null,
      };
    });
    const nature = member.nature_id
      ? (natureById.get(member.nature_id) ?? null)
      : null;

    return {
      ...member,
      abilityEffectSummary: abilityAttributes?.effect_summary ?? null,
      baseStats: attributes ? toBaseStats(attributes) : null,
      heldItemEffectSummary: member.held_item_id
        ? (rows.heldItemEffects?.[member.held_item_id] ?? null)
        : null,
      heldItemSlug: member.held_item_id
        ? (rows.itemSlugs?.[member.held_item_id] ?? null)
        : null,
      ball_item_id: hasValidBall ? member.ball_item_id : null,
      ball_item_name: hasValidBall ? member.ball_item_name : null,
      ballItemSlug:
        hasValidBall && member.ball_item_id
          ? (rows.itemSlugs?.[member.ball_item_id] ?? null)
          : null,
      moves,
      natureDecreasedStat: nature?.decreased_stat ?? null,
      natureIncreasedStat: nature?.increased_stat ?? null,
      primaryType: attributes
        ? (typeById.get(attributes.primary_type_id) ?? null)
        : null,
      secondaryType: attributes?.secondary_type_id
        ? (typeById.get(attributes.secondary_type_id) ?? null)
        : null,
    };
  });
};
