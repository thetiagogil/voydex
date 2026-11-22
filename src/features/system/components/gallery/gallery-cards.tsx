"use client";

import { useState } from "react";

import { appIcons } from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { EmptyState } from "@/shared/components/empty-state";
import { OfferCard } from "@/shared/components/offer-card";
import { SectionHead } from "@/shared/components/section-head";
import { SettingsRow } from "@/shared/components/settings-row";
import { SettingsSwitchRow } from "@/shared/components/settings-switch-row";
import { StatTile } from "@/shared/components/stat-tile";
import { StatusBadge } from "@/shared/components/status-badge";
import { Button } from "@/shared/components/ui/button";
import { Card, CardContent } from "@/shared/components/ui/card";

import { GalleryGroup, GallerySection, Specimen } from "./gallery-parts";

/* Section heads and every kind of card. */
export const GalleryCards = () => {
  const [motion, setMotion] = useState(true);

  return (
    <>
      <GallerySection
        id="heads"
        title="Section heads"
        description="A section opens with a SectionHead. The page's own head is the band at the top of this page."
      >
        <GalleryGroup title="Section head">
          <Specimen
            label="SectionHead"
            note="On the page ground, above a grid"
            ground="ground"
            className="items-stretch"
          >
            <SectionHead
              className="w-full"
              title="Latest moments"
              description="The last things you recorded in this Play."
              more={{ href: "#heads", label: "Open History" }}
            />
          </Specimen>
          <Specimen
            label="SectionHead with an icon, an aside and an action"
            ground="ground"
            className="items-stretch"
          >
            <SectionHead
              className="w-full"
              icon={appIcons.actions.settings}
              title="Team check"
              aside="Read at level 50"
              action={
                <Button variant="secondary" size="sm">
                  Edit
                </Button>
              }
            />
          </Specimen>
        </GalleryGroup>
      </GallerySection>

      <GallerySection
        id="cards"
        title="Cards"
        description="A section is flat with a thin line. A card you can open has a small edge."
      >
        <GalleryGroup title="Card" columns={3}>
          <Specimen label="default" ground="ground" className="items-stretch">
            <Card className="w-full">
              <CardContent>
                <p className="title-card">A section card</p>
                <p className="text-ink-2 mt-1 font-semibold">
                  White on the page ground.
                </p>
              </CardContent>
            </Card>
          </Specimen>
          <Specimen
            label="interactive"
            note="Opens something; hover it"
            ground="ground"
            className="items-stretch"
          >
            <Card variant="interactive" className="w-full">
              <CardContent>
                <p className="title-card">A card that opens</p>
                <p className="text-ink-2 mt-1 font-semibold">
                  It rises a little under the pointer.
                </p>
              </CardContent>
            </Card>
          </Specimen>
          <Specimen
            label='size="sm" and inset'
            ground="ground"
            className="items-stretch"
          >
            <Card size="sm" className="w-full">
              <CardContent>
                <p className="title-card">Small card</p>
                <Card variant="inset" size="sm" className="mt-3">
                  <CardContent>
                    <p className="text-ink-2 font-semibold">An inset tile</p>
                  </CardContent>
                </Card>
              </CardContent>
            </Card>
          </Specimen>
        </GalleryGroup>

        <GalleryGroup title="Section cards">
          <Specimen
            label="DetailSectionCard"
            note="A section as one quiet card"
            ground="ground"
            className="items-stretch"
          >
            <DetailSectionCard
              className="w-full"
              title="Team check"
              description="How your six cover each other."
              more={{ href: "#cards", label: "Open Analysis" }}
            >
              <div className="grid grid-cols-3 gap-3">
                <StatTile label="Weak to" value="3" />
                <StatTile label="Resists" value="11" />
                <StatTile label="Average level" value="49">
                  <span className="text-ink-2 copy-meta">
                    2 above the next battle
                  </span>
                </StatTile>
              </div>
            </DetailSectionCard>
          </Specimen>
          <Specimen
            label="OfferCard"
            note="Offered once: take it or put it aside"
            ground="ground"
            className="items-stretch"
          >
            <OfferCard
              aria-label="Unsaved Plan"
              className="w-full"
              actions={
                <>
                  <Button variant="secondary">Discard</Button>
                  <Button>Continue</Button>
                </>
              }
            >
              <p className="title-card">You have an unsaved Plan</p>
              <p className="text-ink-2 font-semibold">
                Sword / Shield, four Pokémon picked.
              </p>
            </OfferCard>
          </Specimen>
        </GalleryGroup>

        <GalleryGroup title="Settings rows and empty states">
          <Specimen
            label="SettingsRow and SettingsSwitchRow"
            ground="ground"
            className="items-stretch"
          >
            <Card className="w-full">
              <CardContent className="divide-line divide-y">
                <SettingsRow
                  title="Status"
                  description="Where this Play stands."
                >
                  <StatusBadge tone="warn">Paused</StatusBadge>
                </SettingsRow>
                <SettingsSwitchRow
                  title="Motion"
                  description="Small movements as things open and settle."
                  checked={motion}
                  onCheckedChange={setMotion}
                />
                <SettingsRow
                  title="Delete this Play"
                  description="This can't be undone."
                >
                  <Button variant="destructive" size="sm">
                    Delete
                  </Button>
                </SettingsRow>
              </CardContent>
            </Card>
          </Specimen>
          <Specimen
            label="EmptyState, card and bare"
            ground="ground"
            className="flex-col items-stretch"
          >
            <EmptyState
              title="Nothing here yet"
              description="Every Pokémon that joins one of your teams gets a place here."
              action={<Button>Start a Play</Button>}
            />
            <EmptyState variant="bare" title="Nothing matches." />
          </Specimen>
        </GalleryGroup>
      </GallerySection>
    </>
  );
};
