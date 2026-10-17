import type { ReactNode } from "react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import {
  HomeBandGround,
  HomeBandHeading,
} from "@/modules/mainline/features/home/components/home-band-parts";
import {
  HomePartnerChoiceButton,
  HomePartnerChoiceCast,
  useHomePartnerChoice,
} from "@/modules/mainline/features/home/components/home-partner-choice";
import { HomePlayShelf } from "@/modules/mainline/features/home/components/home-play-shelf";
import {
  getHomePlayStatusLine,
  type HomePlay,
} from "@/modules/mainline/features/home/data/home-play-model";
import type { HomePartnerChoice } from "@/modules/mainline/features/home/types";
import { MeadowPokemon } from "@/modules/mainline/features/plays/shared/components/meadow-pokemon";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { MeadowScene } from "@/shared/components/meadow-scene";
import { buttonVariants } from "@/shared/components/ui/button";

type HomeBandSectionProps = {
  current: HomePlay;
  greeting: string;
  /* A brand-new first Play: its partner stands alone, or waits to be tapped. */
  isFirstPlay: boolean;
  onSelectPlay: (playId: string) => void;
  partnerChoice: HomePartnerChoice | null;
  plays: HomePlay[];
  subtitle: ReactNode;
};

const TeamOnMeadow = ({ play }: { play: HomePlay }) => (
  <ul
    aria-label="Team"
    className="grid w-[min(880px,calc(100%-2.25rem))] grid-cols-6 items-end justify-items-center gap-0.5 pb-1.5 sm:gap-5.5 sm:pb-0"
  >
    {play.team.map((member, index) => (
      <li key={member?.id ?? `open-${index}`} className="max-w-full min-w-0">
        {member ? (
          <MeadowPokemon
            name={member.name}
            imageUrl={member.imageUrl}
            size="md"
            href={appRoutes.mainlinePlayTeamPokemon(play.id, member.id)}
            label={`Open ${member.name}`}
            className="[&>span:last-child]:max-sm:sr-only"
          />
        ) : (
          <MeadowPokemon
            name="Open slot"
            imageUrl={null}
            open
            className="[&>span:last-child]:max-sm:sr-only"
          />
        )}
      </li>
    ))}
  </ul>
);

/*
 * Home's meadow band (v3 `homeback`, `homefirst`): the greeting, the shelf
 * of your Plays, the current Play's team standing on the meadow in its
 * game's colour, and the line saying where it stands with Continue. A Play
 * with nothing recorded shows its first partners instead: tap one, then
 * "Choose {name}" (in Continue's place) records it.
 */
export const HomeBandSection = ({
  current,
  greeting,
  isFirstPlay,
  onSelectPlay,
  partnerChoice,
  plays,
  subtitle,
}: HomeBandSectionProps) => {
  const partnerState = useHomePartnerChoice(partnerChoice);
  const partner = current.team.find((member) => member !== null) ?? null;
  const cast = partnerChoice ? (
    <HomePartnerChoiceCast choice={partnerChoice} state={partnerState} />
  ) : isFirstPlay && partner ? (
    <MeadowPokemon
      name={partner.name}
      imageUrl={partner.imageUrl}
      size="xl"
      href={appRoutes.mainlinePlayTeamPokemon(current.id, partner.id)}
      label={`Open ${partner.name}`}
    />
  ) : (
    <TeamOnMeadow play={current} />
  );
  const detail = partnerChoice
    ? [
        getHomePlayStatusLine(current),
        "Which Pokémon did you choose? Tap your partner",
      ]
        .filter(Boolean)
        .join(" · ")
    : isFirstPlay && partner
      ? [getHomePlayStatusLine(current), `${partner.name} is your partner`]
          .filter(Boolean)
          .join(" · ")
      : getHomePlayStatusLine(current);

  return (
    <section aria-labelledby="home-greeting">
      <MeadowScene
        form="band"
        sceneClassName={
          partnerChoice || isFirstPlay ? "h-56 sm:h-64" : "h-32 sm:h-54"
        }
        cast={cast}
        ground={
          <HomeBandGround
            title={current.label}
            detail={detail}
            action={
              partnerChoice && partnerState.pickedName ? (
                <HomePartnerChoiceButton state={partnerState} />
              ) : (
                <Link
                  href={appRoutes.mainlinePlay(current.id)}
                  className={buttonVariants()}
                >
                  {current.statusSlug === "completed" ? null : (
                    <AppIcon icon={appIcons.actions.continue} inline="start" />
                  )}
                  {current.statusSlug === "completed" ? "Open" : "Continue"}
                </Link>
              )
            }
          />
        }
      >
        <HomeBandHeading
          id="home-greeting"
          greeting={greeting}
          subtitle={subtitle}
        />
        <HomePlayShelf
          currentPlayId={current.id}
          onSelect={onSelectPlay}
          plays={plays}
        />
      </MeadowScene>
    </section>
  );
};
