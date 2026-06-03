import type {
  PlayCollectible,
  PlayCollectibleSummary,
} from "@/features/play/types";

export const toCollectiblesSummary = (
  collectibles: PlayCollectible[],
): PlayCollectibleSummary[] => {
  return collectibles.map((collectible) => ({
    id: collectible.id,
    slug: collectible.slug,
    name: collectible.name,
    collectibleType: collectible.collectibleType,
    totalCount: collectible.totalCount,
    spriteUrl: collectible.spriteUrl,
    collectedCount: collectible.collectedCount,
    totalEntries: collectible.entries.length,
    versionGroupId: collectible.versionGroupId,
    versionGroupName: collectible.versionGroupName,
    isDlc: collectible.isDlc,
  }));
};
