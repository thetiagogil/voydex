"use client";

import { useRouter } from "next/navigation";
import { useEffect, useMemo, useRef, useState, useTransition } from "react";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import {
  clearPlanDraft,
  usePlanDraft,
  type PlanDraft,
} from "@/modules/mainline/features/plans/planner/client/use-plan-draft";
import {
  newPlanMember,
  toPlanMembers,
  toPlannerSlots,
  usePlannerTeam,
} from "@/modules/mainline/features/plans/planner/client/use-planner-team";
import { buildPlanIssues } from "@/modules/mainline/features/plans/planner/data/plan-build-check";
import {
  pickRandomTeam,
  type PlanRandomMode,
} from "@/modules/mainline/features/plans/planner/data/plan-random-team";
import {
  buildPlanCoverage,
  buildPlanMatchups,
  getPlanTeamTip,
} from "@/modules/mainline/features/plans/planner/data/plan-team-analysis";
import { PlannerDockSection } from "@/modules/mainline/features/plans/planner/sections/planner-dock-section";
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
import { savePlanAction } from "@/modules/mainline/features/plans/planner/server/save-plan-action";
import {
  decodePlanShare,
  encodePlanShare,
  type PlanShare,
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
import { PlanTeamStrip } from "@/modules/mainline/features/plans/components/plan-team-strip";
import { PageBand } from "@/shared/components/page-band";
import { Button } from "@/shared/components/ui/button";

type PlannerWorkspaceProps = {
  data: PlannerPageData;
};

/* The address mark that opens the unsaved Plan on arrival. */
const continueDraftHash = "draft";

const replaceToastId = "planner-replace";

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
   * new one, a draft) drop the choices this group doesn't have.
   */
  const fitToVersionGroup = (planMembers: PlanMember[]) =>
    planMembers.map((member) =>
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
  const [replacingId, setReplacingId] = useState<number | null>(null);
  const [swapIndex, setSwapIndex] = useState<number | null>(null);
  const [openSlot, setOpenSlot] = useState<number | null>(null);
  /* The slot whose filled-in Pokémon waits on "Remove …?". */
  const [confirmRemoveIndex, setConfirmRemoveIndex] = useState<number | null>(
    null,
  );
  const [isCheckOpen, setIsCheckOpen] = useState(false);
  const [isShareOpen, setIsShareOpen] = useState(false);
  const [isNameOpen, setIsNameOpen] = useState(false);
  const [randomMode, setRandomMode] = useState<PlanRandomMode>("all");
  const [isSaving, startSaving] = useTransition();
  const [origin, setOrigin] = useState("");

  const members = toPlanMembers(team.slots);
  const teamPokemon = members.flatMap((member) => {
    const pokemon = byId.get(member.speciesId);
    return pokemon ? [pokemon] : [];
  });
  const issues = buildPlanIssues({
    includedExpansionIds: expansions,
    team: teamPokemon,
    versionGroup: context.versionGroup,
  });
  const matchups = buildPlanMatchups({
    generationOrder: context.versionGroup.generationOrder,
    team: teamPokemon,
    types: context.types,
  });
  const coverage = buildPlanCoverage({
    generationOrder: context.versionGroup.generationOrder,
    team: teamPokemon,
    types: context.types,
  });
  const tip = getPlanTeamTip({ issues, matchups, team: teamPokemon });
  const slotBySpeciesId = new Map(
    members.map((member) => [member.speciesId, member.slot]),
  );
  const isFull = members.length === 6;
  const draft: PlanDraft = {
    expansionVersionGroupIds: expansions,
    members,
    name,
    preview: members.flatMap((member) => {
      const pokemon = byId.get(member.speciesId);
      return pokemon
        ? [
            {
              imageUrl: pokemon.imageUrl,
              name: pokemon.name,
              slot: member.slot,
              typeSlug: pokemon.types[0]?.slug ?? null,
            },
          ]
        : [];
    }),
    versionGroupName: context.versionGroup.name,
    versionGroupSlug: context.versionGroup.slug,
  };
  const { dismissOffer, offered } = usePlanDraft({
    draft,
    enabled: !plan,
    trainerId: data.trainerId,
  });
  /* Set when Continue opened the Planner on the draft's own game. */
  const continueOnArrival = useRef(false);

  /*
   * Continue: a draft for this game fills the Planner at once; one for
   * another game opens that game's Planner, which fills itself on arrival
   * (`#draft`), so one tap is enough either way.
   */
  const continueDraft = (draftToOpen: PlanDraft) => {
    if (draftToOpen.versionGroupSlug !== context.versionGroup.slug) {
      router.push(
        `${appRoutes.mainlinePlanNew(draftToOpen.versionGroupSlug)}#${continueDraftHash}`,
      );
      return;
    }

    team.setSlots(toPlannerSlots(fitToVersionGroup(draftToOpen.members)));
    setName(draftToOpen.name);
    setExpansions(draftToOpen.expansionVersionGroupIds);
    dismissOffer();
  };

  useEffect(() => {
    if (
      offered &&
      continueOnArrival.current &&
      offered.versionGroupSlug === context.versionGroup.slug
    ) {
      continueOnArrival.current = false;
      continueDraft(offered);
    }
    // Only when the stored draft has been read.
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [offered]);
  /*
   * What was last saved, so Save changes only wakes up for a change,
   * including opening the Plan in another version group.
   */
  const [savedSnapshot, setSavedSnapshot] = useState(() =>
    plan
      ? JSON.stringify({
          expansions: plan.expansionVersionGroupIds.toSorted(),
          members: toPlanMembers(toPlannerSlots(plan.members)),
          name: plan.name,
          versionGroupSlug: plan.versionGroupSlug,
        })
      : null,
  );
  const isDirty =
    savedSnapshot === null ||
    savedSnapshot !==
      JSON.stringify({
        expansions: expansions.toSorted(),
        members,
        name,
        versionGroupSlug: context.versionGroup.slug,
      });

  const applyShare = (share: PlanShare) => {
    /* A shared Plan always opens as a new one, never over a saved Plan. */
    if (plan || share.versionGroupSlug !== context.versionGroup.slug) {
      router.push(
        `${appRoutes.mainlinePlanNew(share.versionGroupSlug)}#${encodePlanShare(share)}`,
      );
      return;
    }

    const missing = share.slots.filter(
      (slot) => slot && !bySlug.has(slot.species),
    ).length;

    team.setSlots(
      share.slots.map((slot) => {
        const pokemon = slot ? bySlug.get(slot.species) : undefined;
        return pokemon
          ? { ...newPlanMember(pokemon), role: slot?.role ?? null }
          : null;
      }),
    );
    setIsShareOpen(false);
    toast.success(
      missing
        ? `Plan imported. ${missing} Pokémon aren't in ${context.versionGroup.name}.`
        : "Plan imported as a new, unsaved Plan",
    );
  };

  /* A shared link's Plan, opened from the address once the page is ready. */
  useEffect(() => {
    // eslint-disable-next-line react-hooks/set-state-in-effect -- the address only exists in the browser
    setOrigin(window.location.origin);

    if (plan) return;

    if (window.location.hash === `#${continueDraftHash}`) {
      continueOnArrival.current = true;
      window.history.replaceState(
        null,
        "",
        window.location.pathname + window.location.search,
      );
      return;
    }

    const share = decodePlanShare(window.location.hash);

    if (!share) return;

    window.history.replaceState(
      null,
      "",
      window.location.pathname + window.location.search,
    );
    applyShare(share);
    // Only on arrival.
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

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

  /*
   * A full team: the team's Pokémon wiggle until one is tapped, the team
   * comes into view, and a toast says what to do until it is done.
   */
  const askWhichToReplace = (pokemon: PlannerPokemon) => {
    setReplacingId(pokemon.speciesId);
    toast(`Team is full`, {
      action: { label: "Cancel", onClick: () => cancelReplace() },
      description: `Tap the Pokémon ${pokemon.name} should replace.`,
      duration: Infinity,
      id: replaceToastId,
    });
    document.getElementById("planner-team")?.scrollIntoView({
      behavior: window.matchMedia("(prefers-reduced-motion: reduce)").matches
        ? "auto"
        : "smooth",
      block: "center",
    });
  };

  /* The toast waits on this page only. */
  useEffect(
    () => () => {
      toast.dismiss(replaceToastId);
    },
    [],
  );

  const cancelReplace = () => {
    toast.dismiss(replaceToastId);
    setReplacingId(null);
    setSwapIndex(null);
  };

  const place = (index: number) => {
    const pokemon = replacingId === null ? undefined : byId.get(replacingId);

    if (pokemon) team.putInSlot(index, pokemon);
    toast.dismiss(replaceToastId);
    setReplacingId(null);
  };

  const random = () => {
    /* "Random from filters" keeps to the Pokédex shown, too. */
    const candidates = context.sections
      .filter(
        (section) =>
          randomMode !== "filtered" ||
          !filters.dex ||
          section.key === filters.dex,
      )
      .flatMap((section) =>
        section.speciesIds.flatMap((speciesId) => {
          const pokemon = byId.get(speciesId);
          return pokemon &&
            (randomMode !== "filtered" || matchesPoolFilters(pokemon, filters))
            ? [pokemon]
            : [];
        }),
      );

    team.applyRandom(
      pickRandomTeam({
        candidates,
        mode: randomMode,
        slots: team.slots.map((member) => member?.speciesId ?? null),
      }),
      byId,
    );
  };

  /* A Plan without a name asks for one before it is saved. */
  const save = () => {
    if (!name.trim()) {
      setIsNameOpen(true);
      return;
    }

    saveAs(name);
  };

  const saveAs = (planName: string) => {
    startSaving(async () => {
      const result = await savePlanAction({
        expansionVersionGroupIds: expansions,
        members,
        name: planName,
        planId: plan?.id ?? null,
        versionGroupSlug: context.versionGroup.slug,
      });

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      const savedName = planName.trim() || untitledPlanName;

      if (result.created) {
        clearPlanDraft(data.trainerId);
        toast.success(`${savedName} saved to My Plans`);
        router.replace(appRoutes.mainlinePlan(result.planId));
        return;
      }

      setSavedSnapshot(
        JSON.stringify({
          expansions: expansions.toSorted(),
          members,
          name: planName,
          versionGroupSlug: context.versionGroup.slug,
        }),
      );
      toast.success(`${savedName} saved`);
      router.refresh();
    });
  };

  const changeVersionGroup = (slug: string) => {
    if (slug === context.versionGroup.slug) return;

    router.push(
      plan
        ? appRoutes.mainlinePlan(plan.id, slug)
        : appRoutes.mainlinePlanNew(slug),
    );
  };

  const shareLink = `${origin}${appRoutes.mainlinePlanNew(context.versionGroup.slug)}#${encodePlanShare(
    {
      slots: team.slots.map((member) => {
        const pokemon = member ? byId.get(member.speciesId) : undefined;
        return pokemon
          ? { role: member?.role ?? null, species: pokemon.speciesSlug }
          : null;
      }),
      versionGroupSlug: context.versionGroup.slug,
    },
  )}`;

  return (
    <div className="flex flex-col gap-6 sm:gap-8">
      <PageBand className="flex flex-col gap-6 sm:gap-7">
        <PlannerTopSection
          canSave={members.length > 0 && isDirty}
          isSaved={Boolean(plan)}
          isSaving={isSaving}
          linkedPlayCount={plan?.linkedPlayCount ?? 0}
          name={name}
          onNameChange={setName}
          onSave={save}
          onShare={() => setIsShareOpen(true)}
          onVersionGroupChange={changeVersionGroup}
          planCount={data.planCount}
          versionGroup={context.versionGroup}
          versionGroups={data.versionGroups}
        />

        {offered ? (
          <section
            aria-label="Unsaved Plan"
            data-slot="card"
            className="bg-surface shadow-card flex flex-wrap items-center gap-x-5 gap-y-3 rounded-2xl px-5 py-4"
          >
            <div className="flex min-w-0 flex-1 basis-60 flex-col gap-1">
              <p className="text-ink-3 text-13 font-extrabold">
                Continue your unsaved Plan?
              </p>
              <p className="text-ink text-16 font-extrabold">
                {offered.name.trim() || untitledPlanName}
              </p>
              <p className="text-ink-2 text-13 font-semibold">
                {[offered.versionGroupName, `${offered.members.length} Pokémon`]
                  .filter(Boolean)
                  .join(" · ")}
              </p>
            </div>
            {offered.preview.length ? (
              <PlanTeamStrip
                members={offered.preview}
                className="w-full max-w-64 sm:w-64"
              />
            ) : null}
            <div className="flex gap-2 max-sm:w-full max-sm:*:flex-1">
              <Button
                type="button"
                variant="outline"
                size="sm"
                onClick={() => {
                  clearPlanDraft(data.trainerId);
                  dismissOffer();
                }}
              >
                Start fresh
              </Button>
              <Button
                type="button"
                size="sm"
                onClick={() => continueDraft(offered)}
              >
                Continue
              </Button>
            </div>
          </section>
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
          replacing={
            replacingId === null ? null : (byId.get(replacingId) ?? null)
          }
          slots={team.slots}
          tip={tip}
        />

        {swapIndex !== null ? (
          <p role="status" className="text-ink text-15 font-semibold">
            Pick the Pokémon for slot {swapIndex + 1}.{" "}
            <Button
              type="button"
              variant="link"
              size="sm"
              className="h-auto px-0"
              onClick={() => setSwapIndex(null)}
            >
              Cancel
            </Button>
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
        onRemove={team.removeSlot}
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

      <PlannerShareDialog
        link={shareLink}
        onImport={applyShare}
        onOpenChange={setIsShareOpen}
        open={isShareOpen}
      />
    </div>
  );
};
