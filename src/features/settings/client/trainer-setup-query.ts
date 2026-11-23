import { readProfileIconChoices } from "@/features/settings/client/profile-icon-choices-query";
import {
  readProfileSettings,
  type ProfileSettings,
} from "@/features/settings/client/profile-settings-query";
import type { ProfileIconChoice } from "@/features/settings/types";
import { isTrainerProfileComplete } from "@/features/settings/utils/trainer-profile";
import { getLocalQueryClient } from "@/platform/local-db/open-local-db";

export type TrainerSetup = {
  choices: ProfileIconChoice[];
  /* Whether your profile has everything: then the trainer step stays shut. */
  complete: boolean;
  profile: ProfileSettings;
};

/* Your profile on this device and the icons on offer, for the trainer step. */
export const readTrainerSetup = async (): Promise<TrainerSetup> => {
  const supabase = await getLocalQueryClient();
  const [profile, choices] = await Promise.all([
    readProfileSettings(),
    readProfileIconChoices(supabase),
  ]);

  return {
    choices,
    complete: isTrainerProfileComplete(
      profile,
      choices.map((choice) => choice.formId),
    ),
    profile,
  };
};
