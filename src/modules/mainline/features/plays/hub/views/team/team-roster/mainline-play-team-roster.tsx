"use client";

import { useOptimistic, useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamRosterData,
} from "@/modules/mainline/features/plays/hub/types";
import { useBottomSheetLayout } from "@/shared/hooks/use-bottom-sheet-layout";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { useStickyPanel } from "@/shared/hooks/use-sticky-panel";

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
  getTeamRosterSheetKeys,
  getMemberRuleWarnings,
  getTeamRosterSummary,
} from "./sections/roster/team-roster-model";
import { TeamRosterSection } from "./sections/roster/team-roster-section";
import {
  TeamMemberDetail,
  TeamRosterStart,
} from "./sections/selected-pokemon/team-member-detail";
import { TeamMemberDetailSheet } from "./sections/selected-pokemon/team-member-detail-sheet";
import { battleFormMechanics } from "@/modules/reference/features/pokemon/data/battle-mechanics";

import { moveMainlinePlayPokemonAction } from "./server/team-member-mutation-actions";
import {
  applyRosterMove,
  describeRosterMove,
  getRosterMove,
} from "./utils/roster-moves";

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
 * editor; Add Pokémon and Replace share one species picker. A Pokémon moves
 * by dragging it onto another slot (at once) or from the editor's Slot (on
 * Save), and the roster redraws at once while the move saves.
 */
export const MainlinePlayTeamRoster = ({
  addRequest = null,
  data,
  initialPokemonId = null,
  playId,
}: MainlinePlayTeamRosterProps) => {
  const router = useRouter();
  const { mechanics } = data;
  const [roster, showMove] = useOptimistic(
    data.roster,
    (current, move: { playPokemonId: string; toSlot: number }) =>
      applyRosterMove(current, move.playPokemonId, move.toSlot),
  );
  const [isMoving, startMoving] = useTransition();
  const versionGroupSlug = data.play.version_group_slug;
  const defaultMember = getDefaultTeamMember(roster, initialPokemonId);
  const [detailPanelStyle, bindDetailPanel] = useStickyPanel<HTMLDivElement>();
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
  const usesDetailSheet = useBottomSheetLayout();
  const selectedMember =
    roster.find((member) => member.play_pokemon_id === selectedMemberId) ??
    defaultMember;
  const selectedBattle = selectedMember?.play_pokemon_id
    ? (data.battles[selectedMember.play_pokemon_id] ?? null)
    : null;
  const summary = getTeamRosterSummary(roster);
  const selectedWarnings = selectedMember
    ? getMemberRuleWarnings(selectedMember, data.ruleChecks)
    : [];
  const brokenRulesById = Object.fromEntries(
    roster.map((member) => [
      member.play_pokemon_id ?? "",
      getMemberRuleWarnings(member, data.ruleChecks).map(
        (warning) => warning.ruleName,
      ),
    ]),
  );
  const playLabel = data.play.play_name ?? data.play.game_name ?? "This Play";

  const selectMember = (member: MainlinePlayTeamMember) => {
    setSelectedMemberId(member.play_pokemon_id);

    if (usesDetailSheet) {
      setMobileDetailOpen(true);
    }
  };

  /* Saves a move; the roster shows it at once and settles when it lands. */
  const saveMove = (
    playPokemonId: string,
    toSlot: number,
    onSaved: () => void,
  ) => {
    startMoving(async () => {
      showMove({ playPokemonId, toSlot });
      const result = await moveMainlinePlayPokemonAction({
        playId,
        playPokemonId,
        toSlot,
      });

      if (result.status === "error") {
        toast.error(result.message);
        /* The roster may have changed elsewhere; show it as it is now. */
        router.refresh();
        return;
      }

      onSaved();
      router.refresh();
    });
  };

  /* A drop, or the editor's Slot once saved; the toast's Undo moves it back. */
  const moveMember = (playPokemonId: string, toSlot: number) => {
    const member = roster.find(
      (candidate) => candidate.play_pokemon_id === playPokemonId,
    );
    const fromSlot = member?.slot;
    const move = getRosterMove(roster, playPokemonId, toSlot);

    if (!member || !fromSlot || move.kind === "stay") {
      return;
    }

    if (move.kind === "blocked") {
      toast.error(move.reason);
      return;
    }

    saveMove(playPokemonId, toSlot, () =>
      toast.success(describeRosterMove(member, move), {
        action: {
          label: "Undo",
          onClick: () =>
            saveMove(playPokemonId, fromSlot, () =>
              toast.success("Moved back"),
            ),
        },
      }),
    );
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
  const sheetKeys = getTeamRosterSheetKeys(
    selectedMember?.play_pokemon_id ?? "",
    pickerMode,
  );

  return (
    <div className="grid min-w-0 gap-8">
      <TeamRosterHead
        canAdd={summary.activeCount < 6 || summary.reserveCount < 6}
        onAdd={openAdd}
        summary={formatTeamRosterSummary(summary)}
      />

      <div className="grid items-start gap-7 lg:grid-cols-[minmax(0,1.15fr)_minmax(0,1fr)]">
        <TeamRosterSection
          brokenRulesById={brokenRulesById}
          isMoving={isMoving}
          onMove={moveMember}
          roster={roster}
          selectedMemberId={selectedMember?.play_pokemon_id ?? null}
          onSelect={selectMember}
        />
        <div
          ref={bindDetailPanel}
          style={detailPanelStyle}
          className="sticky-panel hidden min-w-0 lg:block"
        >
          <TeamMemberDetail
            battle={selectedBattle}
            mechanics={mechanics}
            member={selectedMember}
            onAdd={openAdd}
            onEdit={openEditor}
            playId={playId}
            versionGroupSlug={versionGroupSlug}
            warnings={selectedWarnings}
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
        battle={selectedBattle}
        mechanics={mechanics}
        member={selectedMember}
        onEdit={openEditor}
        open={mobileDetailOpen && usesDetailSheet}
        onOpenChange={setMobileDetailOpen}
        versionGroupSlug={versionGroupSlug}
        warnings={selectedWarnings}
      />

      {selectedMember?.play_pokemon_id ? (
        <TeamMemberEditorSheet
          key={sheetKeys.editor}
          canGigantamax={
            selectedBattle?.forms.some(
              (form) => form.mechanic === battleFormMechanics.dynamax,
            ) ?? false
          }
          mechanics={mechanics}
          member={selectedMember}
          onMove={moveMember}
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
          roster={roster}
        />
      ) : null}

      <AddPokemonSheet
        key={sheetKeys.picker}
        mechanics={mechanics}
        mode={pickerMode}
        onAdded={setSelectedMemberId}
        onOpenChange={changePickerOpen}
        open={pickerOpen}
        playId={playId}
        playLabel={playLabel}
        preset={pickerMode.kind === "add" ? (addRequest?.preset ?? null) : null}
        reserveCount={summary.reserveCount}
        ruleChecks={data.ruleChecks}
        teamCount={summary.activeCount}
      />
    </div>
  );
};
