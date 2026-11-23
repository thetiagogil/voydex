/*
 * The name the trainer step offers when you have none yet, for both your
 * display name and your trainer name: the anime's trainer.
 */
export const DEFAULT_TRAINER_NAME = "Ash";

/* Your profile as saved: each part null until you have it. */
type SavedTrainerProfile = {
  defaultTrainerName: string | null;
  displayName: string | null;
  iconFormId: number | null;
};

/* The trainer step's form: names as typed, and the picked icon. */
export type TrainerDraft = {
  defaultTrainerName: string;
  displayName: string;
  iconFormId: number | null;
};

/*
 * Whether a profile has everything a trainer needs: a display name, a
 * trainer name and one of the offered icons (`iconFormIds`). With no icons
 * to offer (they couldn't be read) the icon isn't asked for, so nobody is
 * held at a picker with nothing in it.
 */
export const isTrainerProfileComplete = (
  profile: SavedTrainerProfile,
  iconFormIds: readonly number[],
) =>
  Boolean(profile.displayName?.trim()) &&
  Boolean(profile.defaultTrainerName?.trim()) &&
  (iconFormIds.length === 0 ||
    (profile.iconFormId !== null && iconFormIds.includes(profile.iconFormId)));

/*
 * What the trainer step opens with: what you already have, and for what's
 * missing, Ash and a starter picked at random (`random` is 0 to 1).
 */
export const getTrainerDraft = (
  profile: SavedTrainerProfile,
  iconFormIds: readonly number[],
  random: () => number = Math.random,
): TrainerDraft => {
  const displayName = profile.displayName?.trim() || DEFAULT_TRAINER_NAME;
  const hasIcon =
    profile.iconFormId !== null && iconFormIds.includes(profile.iconFormId);
  const index = Math.min(
    Math.floor(random() * iconFormIds.length),
    iconFormIds.length - 1,
  );

  return {
    defaultTrainerName: profile.defaultTrainerName?.trim() || displayName,
    displayName,
    iconFormId: hasIcon ? profile.iconFormId : (iconFormIds[index] ?? null),
  };
};
