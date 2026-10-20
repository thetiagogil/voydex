"use client";

import { TextLink } from "@/shared/components/text-link";
import { useRouter } from "next/navigation";
import { useMemo, useState, useTransition } from "react";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import {
  clearPlanDraft,
  toPlanDraftPreview,
  type PlanDraft,
} from "@/modules/mainline/features/plans/planner/client/use-plan-draft";
import { usePlannerImports } from "@/modules/mainline/features/plans/planner/client/use-planner-imports";
import { usePlannerReplace } from "@/modules/mainline/features/plans/planner/client/use-planner-replace";
import { usePlanSave } from "@/modules/mainline/features/plans/planner/client/use-plan-save";
import {
  toPlanMembers,
  toPlannerSlots,
  usePlannerTeam,
} from "@/modules/mainline/features/plans/planner/client/use-planner-team";
import {
  getRandomCandidates,
  pickRandomTeam,
  type PlanRandomMode,
} from "@/modules/mainline/features/plans/planner/data/plan-random-team";
import { buildPlanTeamCheck } from "@/modules/mainline/features/plans/planner/data/plan-team-analysis";
import { keepPlannerMembersInGroup } from "@/modules/mainline/features/plans/planner/data/planner-game-switch";
import { checkPlannerGameSwitchAction } from "@/modules/mainline/features/plans/planner/server/planner-game-switch-action";
import { PlannerFollowersSection } from "@/modules/mainline/features/plans/planner/sections/planner-followers-section";
import { PlannerSwitchDialog } from "@/modules/mainline/features/plans/planner/sections/planner-switch-dialog";
import { setPlanArchivedAction } from "@/modules/mainline/features/plans/server/plan-archive-action";
import { PlannerDockSection } from "@/modules/mainline/features/plans/planner/sections/planner-dock-section";
import { PlannerDraftOfferSection } from "@/modules/mainline/features/plans/planner/sections/planner-draft-offer-section";
import {
  matchesPoolFilters,
  PlannerPoolSection,
  type PlannerPoolFilters,
} from "@/modules/mainline/features/plans/planner/sections/planner-pool-section";
import { PlannerNameDialog } from "@/modules/mainline/features/plans/planner/sections/planner-name-dialog";
import { PlannerRemoveDialog } from "@/modules/mainline/features/plans/planner/sections/planner-remove-dialog";
import { PlannerShareDialog } from "@/modules/mainline/features/plans/planner/sections/planner-share-dialog";
import { PlannerSlotSheet } from "@/modules/mainline/features/plans/planner/sections/planner-slot-sheet";
import { PlannerTeamCheckSheet } from "@/modules/mainline/features/plans/planner/sections/planner-team-check-sheet";
import { PlannerTopSection } from "@/modules/mainline/features/plans/planner/sections/planner-top-section";
import {
  encodePlanShare,
  toPlanShare,
} from "@/modules/mainline/features/plans/planner/utils/plan-share-code";
import {
  clearUnsupportedBuildFields,
  hasPlanMemberDetails,
} from "@/modules/mainline/features/plans/planner/utils/plan-build-fields";
import { untitledPlanName } from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import type {
  PlanMember,
  PlannerPageData,
  PlannerPokemon,
} from "@/modules/mainline/features/plans/types";
import { PageBand } from "@/shared/components/page-band";

type PlannerWorkspaceProps = {
  data: PlannerPageData;
};

const defaultFilters: PlannerPoolFilters = {
  dex: "",
  fullyEvolved: false,
  query: "",
  type: "",
};

/*
 * The Team Planner (v3 `planner`): pick a version group, build six slots
 * from its Pokédexes, read the Team check and save the Plan. A new Plan is
 * kept in this browser until it is saved; a shared link opens as a new one.
 */
export const PlannerWorkspace = ({ data }: PlannerWorkspaceProps) => {
  const router = useRouter();
  const { context, plan } = data;
  const byId = useMemo(
    () =>
      new Map(context.pokemon.map((pokemon) => [pokemon.speciesId, pokemon])),
    [context.pokemon],
  );
  const bySlug = useMemo(
    () =>
      new Map(context.pokemon.map((pokemon) => [pokemon.speciesSlug, pokemon])),
    [context.pokemon],
  );
  const getName = (speciesId: number) => byId.get(speciesId)?.name ?? "Pokémon";
  /*
   * Pokémon arriving from another version group (a saved Plan opened in a
   * new one, a draft, a shared link) keep to the ones this group has, and
   * drop the choices it doesn't have.
   */
  const fitToVersionGroup = (planMembers: PlanMember[]) =>
    keepPlannerMembersInGroup(planMembers, context.sections).map((member) =>
      clearUnsupportedBuildFields(member, context.buildFields),
    );
  const team = usePlannerTeam({
    getName,
    initialSlots: toPlannerSlots(fitToVersionGroup(plan?.members ?? [])),
  });
  const [name, setName] = useState(plan?.name ?? "");
  const [expansions, setExpansions] = useState<number[]>(
    plan?.expansionVersionGroupIds ??
      context.versionGroup.expansions.map(
        (expansion) => expansion.versionGroupId,
      ),
  );
  const [filters, setFilters] = useState(defaultFilters);
  const [swapIndex, setSwapIndex] = useState<number | null>(null);
  const [openSlot, setOpenSlot] = useState<number | null>(null);
  /* The slot whose filled-in Pokémon waits on "Remove …?". */
  const [confirmRemoveIndex, setConfirmRemoveIndex] = useState<number | null>(
    null,
  );
  const [isCheckOpen, setIsCheckOpen] = useState(false);
  const [isShareOpen, setIsShareOpen] = useState(false);
  const [randomMode, setRandomMode] = useState<PlanRandomMode>("all");
  /* A game switch that would drop Pokémon, waiting on its confirm. */
  const [pendingSwitch, setPendingSwitch] = useState<{
    names: string[];
    slug: string;
    versionGroupName: string;
  } | null>(null);
  const [isCheckingSwitch, startCheckingSwitch] = useTransition();
  const [isArchiving, startArchiving] = useTransition();
  const { askWhichToReplace, cancelReplace, place, replacing, replacingId } =
    usePlannerReplace({
      byId,
      onCancel: () => setSwapIndex(null),
      putInSlot: team.putInSlot,
    });

  const members = toPlanMembers(team.slots);
  const teamPokemon = members.flatMap((member) => {
    const pokemon = byId.get(member.speciesId);
    return pokemon ? [pokemon] : [];
  });
  const { coverage, issues, matchups, tip } = buildPlanTeamCheck({
    includedExpansionIds: expansions,
    team: teamPokemon,
    types: context.types,
    versionGroup: context.versionGroup,
  });
  const slotBySpeciesId = new Map(
    members.map((member) => [member.speciesId, member.slot]),
  );
  const isFull = members.length === 6;
  const draft: PlanDraft = {
    expansionVersionGroupIds: expansions,
    members,
    name,
    preview: toPlanDraftPreview(members, byId),
    versionGroupName: context.versionGroup.name,
    versionGroupSlug: context.versionGroup.slug,
  };
  const { applyShare, continueDraft, dismissOffer, offered, origin } =
    usePlannerImports({
      bySlug,
      draft,
      fitToVersionGroup,
      hasSavedPlan: Boolean(plan),
      onDraftContinued: (continued) => {
        setName(continued.name);
        setExpansions(continued.expansionVersionGroupIds);
      },
      onShareImported: () => setIsShareOpen(false),
      setSlots: team.setSlots,
      trainerId: data.trainerId,
      versionGroup: context.versionGroup,
    });
  const { isDirty, isNameOpen, isSaving, save, saveAs, setIsNameOpen } =
    usePlanSave({
      contents: {
        expansions,
        members,
        name,
        versionGroupSlug: context.versionGroup.slug,
      },
      planId: plan?.id ?? null,
      savedContents: plan
        ? {
            expansions: plan.expansionVersionGroupIds,
            members: toPlanMembers(toPlannerSlots(plan.members)),
            name: plan.name,
            versionGroupSlug: plan.versionGroupSlug,
          }
        : null,
      trainerId: data.trainerId,
    });

  /* Off the team at once, unless you filled in its build: then ask first. */
  const requestRemove = (index: number) => {
    const member = team.slots[index];

    if (member && hasPlanMemberDetails(member)) {
      setConfirmRemoveIndex(index);
      return;
    }

    team.removeSlot(index);
  };

  const pick = (pokemon: PlannerPokemon) => {
    if (swapIndex !== null) {
      team.putInSlot(swapIndex, pokemon);
      setSwapIndex(null);
      return;
    }

    const slot = slotBySpeciesId.get(pokemon.speciesId);

    /* Tapping one already on the team takes it off; its card opens it. */
    if (slot !== undefined) {
      requestRemove(slot - 1);
      return;
    }

    if (!team.addToNextOpen(pokemon)) {
      askWhichToReplace(pokemon);
    }
  };

  const random = () => {
    /* "Random from filters" keeps to the Pokédex shown, too. */
    const candidates = getRandomCandidates({
      byId,
      dex: filters.dex,
      isShown: (pokemon) => matchesPoolFilters(pokemon, filters),
      mode: randomMode,
      sections: context.sections,
    });

    team.applyRandom(
      pickRandomTeam({
        candidates,
        mode: randomMode,
        slots: team.slots.map((member) => member?.speciesId ?? null),
      }),
      byId,
    );
  };

  const switchVersionGroup = (slug: string) =>
    router.push(
      plan
        ? appRoutes.mainlinePlan(plan.id, slug)
        : appRoutes.mainlinePlanNew(slug),
    );

  /* Straight to the new game, unless it would drop Pokémon: then ask first. */
  const changeVersionGroup = (slug: string) => {
    if (slug === context.versionGroup.slug || isCheckingSwitch) return;

    if (!members.length) {
      switchVersionGroup(slug);
      return;
    }

    startCheckingSwitch(async () => {
      const check = await checkPlannerGameSwitchAction({
        speciesIds: members.map((member) => member.speciesId),
        versionGroupSlug: slug,
      });

      if (check.status === "error") {
        toast.error(check.message);
        return;
      }

      if (!check.missingSpeciesIds.length) {
        switchVersionGroup(slug);
        return;
      }

      setPendingSwitch({
        names: check.missingSpeciesIds.map(getName),
        slug,
        versionGroupName: check.versionGroupName,
      });
    });
  };

  const archive = () => {
    if (!plan) return;

    startArchiving(async () => {
      const result = await setPlanArchivedAction(plan.id, true);

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      toast.success(`${plan.name} archived`);
      router.refresh();
    });
  };

  const shareLink = `${origin}${appRoutes.mainlinePlanNew(context.versionGroup.slug)}#${encodePlanShare(
    toPlanShare(team.slots, byId, context.versionGroup.slug),
  )}`;

  return (
    <div className="flex flex-col gap-6 sm:gap-8">
      <PageBand className="flex flex-col gap-6 sm:gap-7">
        <PlannerTopSection
          canSave={members.length > 0 && isDirty}
          /* Archive keeps the saved Plan, so unsaved changes come first. */
          onArchive={plan ? archive : undefined}
          canArchive={!isDirty && !isArchiving}
          isSaved={Boolean(plan)}
          isSaving={isSaving}
          name={name}
          onNameChange={setName}
          onSave={save}
          onShare={() => setIsShareOpen(true)}
          onVersionGroupChange={changeVersionGroup}
          planCount={data.planCount}
          versionGroup={context.versionGroup}
          versionGroups={data.versionGroups}
        />

        {plan?.followers.length ? (
          <PlannerFollowersSection followers={plan.followers} />
        ) : null}

        {offered ? (
          <PlannerDraftOfferSection
            draft={offered}
            onContinue={() => continueDraft(offered)}
            onStartFresh={() => {
              clearPlanDraft(data.trainerId);
              dismissOffer();
            }}
          />
        ) : null}

        <PlannerDockSection
          byId={byId}
          issues={issues}
          onCancelReplace={cancelReplace}
          onClear={team.clearSlots}
          onMove={team.moveSlot}
          onOpenCheck={() => setIsCheckOpen(true)}
          onOpenSlot={setOpenSlot}
          onPlace={place}
          onRandom={random}
          onRandomModeChange={setRandomMode}
          onRemove={requestRemove}
          randomMode={randomMode}
          replacing={replacing}
          slots={team.slots}
          tip={tip}
        />

        {swapIndex !== null ? (
          <p role="status" className="text-ink text-15 font-semibold">
            Pick the Pokémon for slot {swapIndex + 1}.{" "}
            <TextLink onClick={() => setSwapIndex(null)}>Cancel</TextLink>
          </p>
        ) : null}
      </PageBand>

      <PlannerPoolSection
        byId={byId}
        filters={filters}
        isFull={isFull}
        onFiltersChange={setFilters}
        onPick={pick}
        replacingId={replacingId}
        sections={context.sections}
        slotBySpeciesId={slotBySpeciesId}
        types={context.types}
        versionGroup={context.versionGroup}
      />

      <PlannerSlotSheet
        buildFields={context.buildFields}
        byId={byId}
        index={openSlot}
        natures={context.natures}
        onClose={() => setOpenSlot(null)}
        onMove={(from, to) => {
          team.moveSlot(from, to);
          setOpenSlot(to);
        }}
        onRemove={requestRemove}
        onSwap={(index) => {
          setOpenSlot(null);
          setSwapIndex(index);
          document.getElementById("planner-pool")?.scrollIntoView({
            behavior: "smooth",
          });
        }}
        onUpdate={team.updateSlot}
        slots={team.slots}
        versionGroup={context.versionGroup}
      />

      <PlannerRemoveDialog
        name={
          confirmRemoveIndex === null
            ? ""
            : (byId.get(team.slots[confirmRemoveIndex]?.speciesId ?? -1)
                ?.name ?? "this Pokémon")
        }
        open={confirmRemoveIndex !== null}
        onOpenChange={(open) => {
          if (!open) setConfirmRemoveIndex(null);
        }}
        onConfirm={() => {
          if (confirmRemoveIndex !== null) {
            team.removeSlot(confirmRemoveIndex);
          }

          setConfirmRemoveIndex(null);
        }}
      />

      <PlannerTeamCheckSheet
        coverage={coverage}
        issues={issues}
        matchups={matchups}
        onIncludeExpansion={(versionGroupId) =>
          setExpansions((current) => [...new Set([...current, versionGroupId])])
        }
        onOpenChange={setIsCheckOpen}
        open={isCheckOpen}
        planName={name.trim() || untitledPlanName}
        team={teamPokemon}
        versionGroup={context.versionGroup}
      />

      <PlannerNameDialog
        gameName={context.versionGroup.name}
        open={isNameOpen}
        onOpenChange={setIsNameOpen}
        onSave={(planName) => {
          setName(planName);
          setIsNameOpen(false);
          saveAs(planName);
        }}
      />

      <PlannerSwitchDialog
        names={pendingSwitch?.names ?? []}
        open={pendingSwitch !== null}
        onOpenChange={(open) => {
          if (!open) setPendingSwitch(null);
        }}
        onConfirm={() => {
          if (pendingSwitch) switchVersionGroup(pendingSwitch.slug);

          setPendingSwitch(null);
        }}
        versionGroupName={pendingSwitch?.versionGroupName ?? ""}
      />

      <PlannerShareDialog
        link={shareLink}
        onImport={applyShare}
        onOpenChange={setIsShareOpen}
        open={isShareOpen}
      />
    </div>
  );
};
