import { useState, type ReactNode } from "react";
import { Link } from "@/shared/components/link";

import {
  HomeBand,
  HomeBandGround,
  HomeBandHeading,
} from "@/modules/mainline/features/home/components/home-band-parts";
import {
  HomePartnerChoiceButton,
  HomePartnerChoiceCast,
  useHomePartnerChoice,
} from "@/modules/mainline/features/home/components/home-partner-choice";
import { HomeDataNote } from "@/modules/mainline/features/home/components/home-data-note";
import {
  getHomeContinue,
  getHomePlayStatusLine,
  type HomeTeamMember,
} from "@/modules/mainline/features/home/data/home-play-model";
import type { HomeBand as HomeBandData } from "@/modules/mainline/features/home/types";
import { MeadowPokemon } from "@/modules/mainline/features/plays/shared/components/meadow-pokemon";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";

type HomeBandSectionProps = {
  band: HomeBandData;
  greeting: string;
  subtitle: ReactNode;
};

/* The partner on the band: tapping picks it for Continue, again clears it. */
const PickablePartner = ({
  member,
  onPick,
  pickedId,
}: {
  member: HomeTeamMember;
  onPick: (member: HomeTeamMember) => void;
  pickedId: string | null;
}) => {
  const isPicked = pickedId === member.id;

  return (
    <MeadowPokemon
      name={member.name}
      imageUrl={member.imageUrl}
      typeSlug={member.typeSlug}
      size="xl"
      selected={isPicked}
      hop={isPicked}
      onClick={() => onPick(member)}
      label={`Pick ${member.name}`}
    />
  );
};

/*
 * Home for a brand-new first Play (v3 `homefirst`): the greeting, the Play's
 * partner standing on the band, and the line saying where it stands with
 * Continue. Tapping the partner picks it, and Continue becomes "Continue
 * with {name}", which opens it in the Roster. A Play with nothing recorded
 * shows its game's first partners instead: tap one, then "Choose {name}" (in
 * Continue's place) records it.
 */
export const HomeBandSection = ({
  band,
  greeting,
  subtitle,
}: HomeBandSectionProps) => {
  const { partnerChoice, play: current } = band;
  const partnerState = useHomePartnerChoice(partnerChoice);
  const partner = current.team.find((member) => member !== null) ?? null;
  const [pickedId, setPickedId] = useState<string | null>(null);
  const picked = partner && partner.id === pickedId ? partner : null;
  const continueTo = getHomeContinue(current, picked);
  const togglePick = (member: HomeTeamMember) =>
    setPickedId(pickedId === member.id ? null : member.id);
  const cast = partnerChoice ? (
    <HomePartnerChoiceCast choice={partnerChoice} state={partnerState} />
  ) : partner ? (
    <PickablePartner member={partner} onPick={togglePick} pickedId={pickedId} />
  ) : null;
  const detail = [
    getHomePlayStatusLine(current),
    partnerChoice
      ? "Which Pokémon did you choose? Tap your partner"
      : partner
        ? `${partner.name} is your partner`
        : null,
  ]
    .filter(Boolean)
    .join(" · ");

  return (
    /* The band runs to the foot of the page, over the room the page keeps there. */
    <section
      aria-labelledby="home-greeting"
      className="-mb-12 flex flex-1 flex-col lg:-mb-18"
    >
      <HomeBand
        note={<HomeDataNote />}
        castClassName="min-h-56 sm:min-h-64"
        cast={cast}
        ground={
          <HomeBandGround
            title={current.name}
            detail={detail}
            action={
              partnerChoice && partnerState.pickedName ? (
                <HomePartnerChoiceButton state={partnerState} />
              ) : (
                <Link href={continueTo.href} className={buttonVariants()}>
                  {current.statusSlug === "completed" ? null : (
                    <AppIcon icon={appIcons.actions.continue} inline="start" />
                  )}
                  {continueTo.label}
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
      </HomeBand>
    </section>
  );
};
