import { getGenerationSortOrder } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-generation-utils";
import { applyMoveVersionGroupOverrides } from "@/modules/reference/features/pokemon/data/move-attribute-overrides";
import { byId } from "@/modules/reference/reference-data";
import type {
  Game,
  Generation,
  LearnMethod,
  Move,
  MoveAttribute,
  MoveVersionGroupAttribute,
  PokemonDetailData,
  ResolvedPokemonLearnset,
  Type,
  VersionGroup,
} from "@/modules/reference/types";

type PokemonLearnsetSummariesParams = {
  games: Game[];
  generations: Generation[];
  learnMethods: LearnMethod[];
  learnsetRows: ResolvedPokemonLearnset[];
  moveAttributes: MoveAttribute[];
  moveOverrides: MoveVersionGroupAttribute[];
  moves: Move[];
  typeById: Map<number, Type>;
  versionGroups: VersionGroup[];
};

const groupMoveAttributesByMoveId = (moveAttributes: MoveAttribute[]) => {
  const attributesByMoveId = new Map<number, MoveAttribute[]>();

  for (const attributes of moveAttributes) {
    const currentAttributes = attributesByMoveId.get(attributes.move_id) ?? [];

    currentAttributes.push(attributes);
    attributesByMoveId.set(attributes.move_id, currentAttributes);
  }

  return attributesByMoveId;
};

const getLearnsetMoveAttributes = ({
  generationById,
  learnsetRow,
  moveAttributesByMoveId,
  versionGroupById,
}: {
  generationById: Map<number, Generation>;
  learnsetRow: ResolvedPokemonLearnset;
  moveAttributesByMoveId: Map<number, MoveAttribute[]>;
  versionGroupById: Map<number, VersionGroup>;
}) => {
  if (!learnsetRow.move_id) {
    return null;
  }

  const versionGroupId =
    learnsetRow.target_version_group_id ?? learnsetRow.source_version_group_id;
  const versionGroup = versionGroupId
    ? versionGroupById.get(versionGroupId)
    : null;
  const referenceGenerationSortOrder = versionGroup
    ? getGenerationSortOrder(versionGroup.generation_id, generationById)
    : Number.POSITIVE_INFINITY;

  return (
    (moveAttributesByMoveId.get(learnsetRow.move_id) ?? [])
      .filter((attributes) => {
        return (
          getGenerationSortOrder(
            attributes.generation_start_id,
            generationById,
          ) <= referenceGenerationSortOrder
        );
      })
      .sort((firstAttributes, secondAttributes) => {
        return (
          getGenerationSortOrder(
            secondAttributes.generation_start_id,
            generationById,
          ) -
          getGenerationSortOrder(
            firstAttributes.generation_start_id,
            generationById,
          )
        );
      })[0] ?? null
  );
};

export const buildPokemonLearnsetSummaries = ({
  games,
  generations,
  learnMethods,
  learnsetRows,
  moveAttributes,
  moveOverrides,
  moves,
  typeById,
  versionGroups,
}: PokemonLearnsetSummariesParams): PokemonDetailData["learnsets"] => {
  const gameById = byId(games);
  const generationById = byId(generations);
  const learnMethodById = byId(learnMethods);
  const moveById = byId(moves);
  const moveAttributesByMoveId = groupMoveAttributesByMoveId(moveAttributes);
  const versionGroupById = byId(versionGroups);

  return learnsetRows.flatMap((learnsetRow) => {
    const move = learnsetRow.move_id
      ? (moveById.get(learnsetRow.move_id) ?? null)
      : null;

    if (!move) {
      return [];
    }

    const generationAttributes = getLearnsetMoveAttributes({
      generationById,
      learnsetRow,
      moveAttributesByMoveId,
      versionGroupById,
    });
    const [attributes = null] = generationAttributes
      ? applyMoveVersionGroupOverrides(
          [generationAttributes],
          moveOverrides,
          learnsetRow.target_version_group_id ??
            learnsetRow.source_version_group_id,
        )
      : [];

    return {
      attributes,
      game: learnsetRow.game_id
        ? (gameById.get(learnsetRow.game_id) ?? null)
        : null,
      learnset: learnsetRow,
      method: learnsetRow.learn_method_id
        ? (learnMethodById.get(learnsetRow.learn_method_id) ?? null)
        : null,
      move,
      sourceVersionGroup: learnsetRow.source_version_group_id
        ? (versionGroupById.get(learnsetRow.source_version_group_id) ?? null)
        : null,
      targetVersionGroup: learnsetRow.target_version_group_id
        ? (versionGroupById.get(learnsetRow.target_version_group_id) ?? null)
        : null,
      type: attributes ? (typeById.get(attributes.type_id) ?? null) : null,
    };
  });
};
