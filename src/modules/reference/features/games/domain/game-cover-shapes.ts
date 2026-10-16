/*
 * The shape of a game's box, set by the platform it first came out on: the
 * Game Boy family's square cartridge boxes, the DS and 3DS cases (a little
 * wider than tall) and the Switch's tall cases. Knowing it before the cover
 * loads lets a cover hold its place from the first paint.
 */
export type GameCoverShape = "landscape" | "portrait" | "square";

/* Width over height, matching the stored cover art (720px wide). */
export const gameCoverAspectRatios: Record<GameCoverShape, number> = {
  /* DS and 3DS cases: 720 by 640 to 657. */
  landscape: 28 / 25,
  /* Switch cases: 720 by 1170. */
  portrait: 8 / 13,
  /* Game Boy, Game Boy Color and Game Boy Advance boxes. */
  square: 1,
};

const coverShapeByPlatformSlug: Record<string, GameCoverShape> = {
  "game-boy": "square",
  "game-boy-advance": "square",
  "game-boy-color": "square",
  "nintendo-3ds": "landscape",
  "nintendo-ds": "landscape",
  "nintendo-switch": "portrait",
  "nintendo-switch-2": "portrait",
};

/*
 * The box shape of a game's first platform (its native release). A platform
 * Voydex doesn't know yet takes today's tall case.
 */
export const getGameCoverShape = (
  firstPlatformSlug: string | undefined,
): GameCoverShape =>
  (firstPlatformSlug && coverShapeByPlatformSlug[firstPlatformSlug]) ||
  "portrait";
