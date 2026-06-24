import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";

export const revalidateMainlinePlay = (playId: string) => {
  revalidatePath(appRoutes.mainlineDashboard);
  revalidatePath(appRoutes.mainlinePlays);
  revalidatePath(appRoutes.mainlinePlay(playId));
  revalidatePath(appRoutes.mainlinePlayProgress(playId));
  revalidatePath(appRoutes.mainlinePlayStory(playId));
  revalidatePath(appRoutes.mainlinePlayPokedex(playId));
  revalidatePath(appRoutes.mainlinePlayCollectibles(playId));
};
