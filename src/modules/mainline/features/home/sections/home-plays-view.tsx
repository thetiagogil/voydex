"use client";

import { useState, type ReactNode } from "react";

import { HomeDataNote } from "@/modules/mainline/features/home/components/home-data-note";
import { HomeBandSection } from "@/modules/mainline/features/home/sections/home-band-section";
import { HomeMomentsSection } from "@/modules/mainline/features/home/sections/home-moments-section";
import type { HomeBand } from "@/modules/mainline/features/home/types";

type HomePlaysViewProps = {
  bands: HomeBand[];
  /* The Play the address asked for, or the latest. */
  currentPlayId: string;
  greeting: string;
  isFirstPlay: boolean;
  subtitle: ReactNode;
};

/*
 * Home with Plays: the band and the latest moments of the current Play.
 * Every shelf Play arrives with the page, so picking one switches at once;
 * the address follows (`?play=`) without a round trip, so a reload or a
 * shared link opens on the same Play.
 */
export const HomePlaysView = ({
  bands,
  currentPlayId,
  greeting,
  isFirstPlay,
  subtitle,
}: HomePlaysViewProps) => {
  const [selectedPlayId, setSelectedPlayId] = useState(currentPlayId);
  const [servedPlayId, setServedPlayId] = useState(currentPlayId);

  // A new address from the server (a link to another Play) wins.
  if (currentPlayId !== servedPlayId) {
    setServedPlayId(currentPlayId);
    setSelectedPlayId(currentPlayId);
  }

  const band = bands.find(({ play }) => play.id === selectedPlayId) ?? bands[0];

  const selectPlay = (playId: string) => {
    const url = new URL(window.location.href);

    url.searchParams.set("play", playId);
    window.history.replaceState(null, "", url);
    setSelectedPlayId(playId);
  };

  return (
    <div className="flex flex-col">
      <HomeBandSection
        current={band.play}
        plays={bands.map(({ play }) => play)}
        onSelectPlay={selectPlay}
        isFirstPlay={isFirstPlay}
        partnerChoice={band.partnerChoice}
        greeting={greeting}
        subtitle={subtitle}
      />
      <HomeMomentsSection moments={band.moments} play={band.play} />
      <HomeDataNote />
    </div>
  );
};
