"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

import { appRoutes } from "@/config/routes";
import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamRosterData,
} from "@/modules/mainline/features/plays/hub/types";
import { useMainlinePlayDetailSheetLayout } from "@/modules/mainline/features/plays/hub/shell/use-mainline-play-detail-sheet-layout";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";

import {
  AddPokemonSheet,
  type AddPokemonMode,
  type AddPokemonPreset,
} from "./sections/add-pokemon/add-pokemon-sheet";
import { TeamMemberEditorSheet } from "./sections/editor/team-member-editor-sheet";
import { TeamRosterHead } from "./sections/roster/team-roster-head";
import {
  formatTeamRosterSummary,
  getDefaultTeamMember,
  getTeamRosterSummary,
} from "./sections/roster/team-roster-model";
import { TeamRosterSection } from "./sections/roster/team-roster-section";
import {
  TeamMemberDetail,
  TeamRosterStart,
} from "./sections/selected-pokemon/team-member-detail";
import { TeamMemberDetailSheet } from "./sections/selected-pokemon/team-member-detail-sheet";

type MainlinePlayTeamRosterProps = {
  /*
   * The route's `?add=` (v3 "Add to a Play"): open Add Pokémon straight
   * away, on one species (and form) when the link names it.
   */
  addRequest?: { preset: AddPokemonPreset | null } | null;
  data: MainlinePlayTeamRosterData;
  /* The Pokémon a link asked to open on, such as an Overview sticker. */
  initialPokemonId?: string | null;
  playId: string;
};

/*
 * The Roster, as v3 draws it: the page head with Add Pokémon, the Active
 * team and the Reserve as stickers, and the selected Pokémon's profile
 * beside them (a bottom sheet on phones and tablets). Edit opens the
 * editor; Add Pokémon and Replace share one species picker.
 */
export const MainlinePlayTeamRoster = ({
  addRequest = null,
  data,
  initialPokemonId = null,
  playId,
}: MainlinePlayTeamRosterProps) => {
  const router = useRouter();
  const { mechanics, roster } = data;
  const versionGroupSlug = data.play.version_group_slug;
  const defaultMember = getDefaultTeamMember(roster, initialPokemonId);
  const [selectedMemberId, setSelectedMemberId] = useState<string | null>(
    defaultMember?.play_pokemon_id ?? null,
  );
  /* A Pokémon named by the link opens straight away in the phone sheet. */
  const [mobileDetailOpen, setMobileDetailOpen] = useState(
    Boolean(
      initialPokemonId && defaultMember?.play_pokemon_id === initialPokemonId,
    ),
  );
  const [pickerOpen, setPickerOpen] = useState(Boolean(addRequest));
  const [pickerMode, setPickerMode] = useState<AddPokemonMode>({
    kind: "add",
  });
  const [editorOpen, setEditorOpen] = useState(false);
  const usesDetailSheet = useMainlinePlayDetailSheetLayout();
  const selectedMember =
    roster.find((member) => member.play_pokemon_id === selectedMemberId) ??
    defaultMember;
  const summary = getTeamRosterSummary(roster);
  const playLabel = data.play.play_name ?? data.play.game_name ?? "This Play";

  const selectMember = (member: MainlinePlayTeamMember) => {
    setSelectedMemberId(member.play_pokemon_id);

    if (usesDetailSheet) {
      setMobileDetailOpen(true);
    }
  };

  const openAdd = () => {
    setPickerMode({ kind: "add" });
    setPickerOpen(true);
  };

  const openEditor = () => {
    setMobileDetailOpen(false);
    setEditorOpen(true);
  };

  const changePickerOpen = (open: boolean) => {
    setPickerOpen(open);

    /* The link's request is done once the sheet closes. */
    if (!open && addRequest) {
      router.replace(appRoutes.mainlinePlayTeam(playId), { scroll: false });
    }
  };

  return (
    <div className="grid min-w-0 gap-8">
      <TeamRosterHead
        canAdd={summary.activeCount < 6 || summary.reserveCount < 6}
        onAdd={openAdd}
        summary={formatTeamRosterSummary(summary)}
      />

      <div className="grid items-start gap-7 lg:grid-cols-[minmax(0,1.15fr)_minmax(0,1fr)]">
        <TeamRosterSection
          roster={roster}
          selectedMemberId={selectedMember?.play_pokemon_id ?? null}
          onSelect={selectMember}
        />
        <div className="sticky top-[calc(var(--play-dock-offset,0px)+0.75rem)] hidden min-w-0 lg:block">
          <TeamMemberDetail
            mechanics={mechanics}
            member={selectedMember}
            onAdd={openAdd}
            onEdit={openEditor}
            playId={playId}
            versionGroupSlug={versionGroupSlug}
          />
        </div>
        {selectedMember ? null : (
          <div className="lg:hidden">
            <TeamRosterStart onAdd={openAdd} playId={playId} />
          </div>
        )}
      </div>

      {/* Only in the sheet layout: widen the window and the panel takes over. */}
      <TeamMemberDetailSheet
        mechanics={mechanics}
        member={selectedMember}
        onEdit={openEditor}
        open={mobileDetailOpen && usesDetailSheet}
        onOpenChange={setMobileDetailOpen}
        versionGroupSlug={versionGroupSlug}
      />

      {selectedMember?.play_pokemon_id ? (
        <TeamMemberEditorSheet
          key={selectedMember.play_pokemon_id}
          mechanics={mechanics}
          member={selectedMember}
          open={editorOpen}
          onOpenChange={setEditorOpen}
          onReplace={() => {
            setEditorOpen(false);
            setPickerMode({
              kind: "replace",
              name: getPlayTeamMemberName(selectedMember),
              playPokemonId: selectedMember.play_pokemon_id ?? "",
            });
            setPickerOpen(true);
          }}
          playId={playId}
        />
      ) : null}

      <AddPokemonSheet
        key={pickerMode.kind === "replace" ? pickerMode.playPokemonId : "add"}
        mode={pickerMode}
        onAdded={setSelectedMemberId}
        onOpenChange={changePickerOpen}
        open={pickerOpen}
        playId={playId}
        playLabel={playLabel}
        preset={pickerMode.kind === "add" ? (addRequest?.preset ?? null) : null}
        reserveCount={summary.reserveCount}
        teamCount={summary.activeCount}
      />
    </div>
  );
};
