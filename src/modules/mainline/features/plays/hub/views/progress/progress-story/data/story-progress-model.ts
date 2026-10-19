import {
  compareMilestoneCategories,
  compareMilestonesInCategory,
  isBlockingPrerequisiteKind,
  pickNextMilestone,
} from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { getMilestoneBadgeTypeId } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import {
  parsePlayTeamSnapshot,
  type PlayTeamSnapshotMember,
} from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";

import type {
  MainlinePlayProgressStoryData,
  StoryDecisionOption,
  StoryMilestone,
  StoryMilestoneIncompletionImpact,
  StoryMilestonePrerequisite,
  StoryProgressModel,
  StoryScope,
  StorySection,
} from "../types";
import { buildStoryStamps } from "./story-stamps";

type UnknownRecord = Record<string, unknown>;

const isRecord = (value: unknown): value is UnknownRecord => {
  return Boolean(value) && typeof value === "object" && !Array.isArray(value);
};

const toFiniteNumber = (value: unknown, fallback = 0) => {
  const number = typeof value === "number" ? value : Number(value);
  return Number.isFinite(number) ? number : fallback;
};

const toStringValue = (value: unknown) => {
  return typeof value === "string" && value.trim() ? value : null;
};

const parseDecisionOptions = (
  value: unknown,
  formSlugByFormId: Map<number, string | null>,
): StoryDecisionOption[] => {
  if (!Array.isArray(value)) {
    return [];
  }

  return value.flatMap((option) => {
    if (!isRecord(option)) {
      return [];
    }

    const id = toFiniteNumber(option.decision_option_id, Number.NaN);
    const label = toStringValue(option.label);
    const formId = toFiniteNumber(option.pokemon_form_id, Number.NaN);
    const formName = toStringValue(option.pokemon_form_name);
    const speciesName = toStringValue(option.pokemon_species_name);
    const formSlug = formSlugByFormId.get(formId) ?? null;

    return Number.isFinite(id) && label
      ? [
          {
            id,
            imageUrl:
              speciesName && formSlug
                ? getPokemonFormImageUrl({
                    name: formName ?? speciesName,
                    slug: formSlug,
                  })
                : null,
            label,
            speciesName,
          },
        ]
      : [];
  });
};

const parsePrerequisites = (
  value: unknown,
  completedMilestoneIds: Set<number>,
): StoryMilestonePrerequisite[] => {
  if (!Array.isArray(value)) {
    return [];
  }

  return value.flatMap((prerequisite) => {
    if (!isRecord(prerequisite)) {
      return [];
    }

    const id = toFiniteNumber(
      prerequisite.prerequisite_milestone_id,
      Number.NaN,
    );
    const name = toStringValue(prerequisite.prerequisite_milestone_name);
    const kindSlug =
      toStringValue(prerequisite.prerequisite_kind_slug) ?? "suggested";

    return Number.isFinite(id) && name
      ? [
          {
            completed: completedMilestoneIds.has(id),
            id,
            kindSlug,
            name,
          },
        ]
      : [];
  });
};

const isBlockingPrerequisite = (prerequisite: StoryMilestonePrerequisite) =>
  isBlockingPrerequisiteKind(prerequisite.kindSlug);

const emptyIncompletionImpact = (): StoryMilestoneIncompletionImpact => ({
  affectedMilestones: [],
  decisionCount: 0,
  historyEventCount: 0,
  noteCount: 0,
  snapshotCount: 0,
});

const addIncompletionImpacts = (milestones: StoryMilestone[]) => {
  const dependentsByPrerequisiteId = new Map<number, StoryMilestone[]>();

  for (const milestone of milestones) {
    for (const prerequisite of milestone.blockingPrerequisites) {
      const dependents = dependentsByPrerequisiteId.get(prerequisite.id) ?? [];
      dependents.push(milestone);
      dependentsByPrerequisiteId.set(prerequisite.id, dependents);
    }
  }

  for (const milestone of milestones) {
    const dependentClosure = new Set<number>([milestone.id]);
    const pendingIds = [milestone.id];

    while (pendingIds.length) {
      const prerequisiteId = pendingIds.shift();

      if (prerequisiteId === undefined) {
        continue;
      }

      for (const dependent of dependentsByPrerequisiteId.get(prerequisiteId) ??
        []) {
        if (dependentClosure.has(dependent.id)) {
          continue;
        }

        dependentClosure.add(dependent.id);
        pendingIds.push(dependent.id);
      }
    }

    const affectedMilestones = milestones.filter(
      (candidate) =>
        candidate.isCompleted && dependentClosure.has(candidate.id),
    );

    milestone.incompletionImpact = {
      affectedMilestones: affectedMilestones.map((affectedMilestone) => ({
        id: affectedMilestone.id,
        name: affectedMilestone.name,
      })),
      decisionCount: affectedMilestones.filter(
        (affectedMilestone) =>
          affectedMilestone.selectedDecisionId !== null ||
          Boolean(affectedMilestone.selectedDecisionLabel?.trim()),
      ).length,
      historyEventCount: affectedMilestones.filter(
        (affectedMilestone) => affectedMilestone.hasHistoryEvent,
      ).length,
      noteCount: affectedMilestones.filter((affectedMilestone) =>
        Boolean(affectedMilestone.notes?.trim()),
      ).length,
      snapshotCount: affectedMilestones.filter(
        (affectedMilestone) => affectedMilestone.snapshotCount > 0,
      ).length,
    };
  }
};

/* What to record next, by the rule Overview and Plays use too. */
const findNextMilestone = (milestones: StoryMilestone[]) =>
  pickNextMilestone(milestones, (milestone) => milestone);

export const buildStoryProgressModel = ({
  badgeTypes,
  categories,
  decisionForms,
  milestones,
  snapshotEvents,
}: MainlinePlayProgressStoryData): StoryProgressModel => {
  const completedMilestoneIds = new Set(
    milestones
      .filter((milestone) => milestone.is_completed)
      .map((milestone) => toFiniteNumber(milestone.milestone_id))
      .filter((id) => id > 0),
  );
  const sequenceByScopeId = new Map<number, number>();
  const formSlugByDecisionFormId = new Map(
    decisionForms.map((form) => [form.id, form.slug]),
  );
  const badgeTypeById = new Map(
    badgeTypes.flatMap((type): [number, PokemonTypeSlug][] =>
      isPokemonTypeSlug(type.slug) ? [[type.id, type.slug]] : [],
    ),
  );
  const snapshotMembersByMilestoneId = new Map<
    number,
    PlayTeamSnapshotMember[]
  >();

  for (const event of snapshotEvents) {
    const milestoneId = toFiniteNumber(event.milestone_id, Number.NaN);

    if (
      Number.isFinite(milestoneId) &&
      !snapshotMembersByMilestoneId.has(milestoneId)
    ) {
      snapshotMembersByMilestoneId.set(
        milestoneId,
        parsePlayTeamSnapshot(event.team_snapshots),
      );
    }
  }

  const sections = [...categories]
    .filter((category) => toFiniteNumber(category.milestone_count) > 0)
    .sort(compareMilestoneCategories)
    .map<StorySection>((category) => {
      const categoryId = toFiniteNumber(category.category_id);
      const scopeId = toFiniteNumber(category.version_group_id);
      const trackMilestones = milestones
        .filter(
          (milestone) =>
            toFiniteNumber(milestone.category_id) === categoryId &&
            toFiniteNumber(milestone.version_group_id) ===
              toFiniteNumber(category.version_group_id),
        )
        .sort(compareMilestonesInCategory)
        .map<StoryMilestone>((milestone) => {
          const sequence = (sequenceByScopeId.get(scopeId) ?? 0) + 1;
          sequenceByScopeId.set(scopeId, sequence);
          const prerequisites = parsePrerequisites(
            milestone.prerequisites,
            completedMilestoneIds,
          );
          const blockingPrerequisites = prerequisites.filter(
            isBlockingPrerequisite,
          );
          const isCompleted = Boolean(milestone.is_completed);

          return {
            badgeType:
              badgeTypeById.get(
                getMilestoneBadgeTypeId(milestone.badge_refs) ?? -1,
              ) ?? null,
            blockingPrerequisites,
            categoryId,
            completedAt: milestone.completed_at,
            decisionOptions: parseDecisionOptions(
              milestone.decision_options,
              formSlugByDecisionFormId,
            ),
            description: milestone.description,
            hasHistoryEvent: Boolean(milestone.completion_event_id),
            id: toFiniteNumber(milestone.milestone_id),
            incompletionImpact: emptyIncompletionImpact(),
            isAvailable:
              isCompleted ||
              blockingPrerequisites.every(
                (prerequisite) => prerequisite.completed,
              ),
            isCompleted,
            isRequired: Boolean(milestone.is_required_for_completion),
            name: milestone.milestone_name ?? "Unnamed milestone",
            notes: milestone.progress_notes,
            prerequisites,
            selectedDecisionId: milestone.selected_decision_option_id ?? null,
            selectedDecisionLabel:
              milestone.selected_decision_option_label ?? null,
            sequence,
            snapshotCount: toFiniteNumber(
              milestone.completion_event_team_snapshot_count,
            ),
            snapshotMembers:
              snapshotMembersByMilestoneId.get(
                toFiniteNumber(milestone.milestone_id),
              ) ?? [],
            snapshotPolicySlug: milestone.snapshot_policy_slug ?? "none",
            typeName: milestone.milestone_type_name ?? "Story",
            typeSlug: milestone.milestone_type_slug ?? "story",
          };
        });

      return {
        completedCount: toFiniteNumber(
          category.completed_required_milestone_count,
        ),
        id: categoryId,
        milestones: trackMilestones,
        name: category.category_name ?? "Story",
        slug: category.category_slug ?? `category-${categoryId}`,
        totalCount: toFiniteNumber(category.required_milestone_count),
      };
    });

  const categoryById = new Map(
    categories.map((category) => [
      toFiniteNumber(category.category_id),
      category,
    ]),
  );
  const scopesById = new Map<number, StoryScope>();

  for (const section of sections) {
    const category = categoryById.get(section.id);
    const scopeId = toFiniteNumber(category?.version_group_id);
    const existingScope = scopesById.get(scopeId);

    if (existingScope) {
      existingScope.sections.push(section);
      existingScope.completedCount += section.completedCount;
      existingScope.milestoneCount += section.milestones.length;
      existingScope.totalCount += section.totalCount;
      continue;
    }

    const isBase = toFiniteNumber(category?.content_scope_sort_order) === 1;

    scopesById.set(scopeId, {
      completedCount: section.completedCount,
      id: scopeId,
      label: isBase
        ? "Main game"
        : (category?.version_group_name ?? "Main game"),
      milestoneCount: section.milestones.length,
      nextMilestone: null,
      sections: [section],
      stamps: null,
      totalCount: section.totalCount,
    });
  }

  const scopes = [...scopesById.values()];
  const orderedMilestones = scopes.flatMap((scope) =>
    scope.sections.flatMap((section) => section.milestones),
  );
  addIncompletionImpacts(orderedMilestones);

  for (const scope of scopes) {
    scope.nextMilestone = findNextMilestone(
      scope.sections.flatMap((section) => section.milestones),
    );
    scope.stamps = buildStoryStamps(scope.sections);
  }

  return {
    nextMilestone: findNextMilestone(orderedMilestones),
    scopes,
  };
};

/* One milestone of the Story model by id, wherever its scope and section. */
export const findStoryMilestone = (
  model: StoryProgressModel,
  milestoneId: number,
): StoryMilestone | null => {
  for (const scope of model.scopes) {
    for (const section of scope.sections) {
      const milestone = section.milestones.find(
        (candidate) => candidate.id === milestoneId,
      );

      if (milestone) {
        return milestone;
      }
    }
  }

  return null;
};
