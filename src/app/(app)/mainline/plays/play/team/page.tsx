"use client";

import { useSearchParams } from "next/navigation";

import { usePlayId } from "@/modules/mainline/features/plays/hub/client/use-play-id";
import { PlayTeamRosterRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

/*
 * `?pokemon=` opens the Roster on that Pokémon. `?add=` opens Add Pokémon
 * (`appRoutes.mainlinePlayTeamAdd`): empty for the picker, a species slug
 * (with an optional `&form=`) for that Pokémon.
 */
export default function Page() {
  const playId = usePlayId();
  const query = useSearchParams();

  return (
    <PlayTeamRosterRoute
      add={query.get("add") ?? undefined}
      form={query.get("form") ?? undefined}
      playId={playId}
      pokemon={query.get("pokemon") ?? undefined}
    />
  );
}
