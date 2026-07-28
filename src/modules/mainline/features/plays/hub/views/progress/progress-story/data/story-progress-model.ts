import type {
  MainlinePlayProgressStoryData,
  StoryCategorySource,
  StoryDecisionOption,
  StoryMilestone,
  StoryMilestoneIncompletionImpact,
  StoryMilestonePrerequisite,
  StoryMilestoneSource,
  StoryProgressModel,
  StoryScope,
  StorySection,
  StoryTeamSnapshotMember,
} from "../types";
import {
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
} from "@/modules/reference/features/pokemon/data/pokemon-images";

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

const parseTeamSnapshot = (value: unknown): StoryTeamSnapshotMember[] => {
  if (!Array.isArray(value)) {
    return [];
  }

  return value
    .flatMap((member) => {
      if (!isRecord(member)) {
        return [];
      }

      const position = toFiniteNumber(member.position, Number.NaN);
      const speciesName = toStringValue(member.species_name);
      const formName = toStringValue(member.form_name);
      const spriteSlug = toStringValue(member.sprite_slug);
      const isShiny = member.is_shiny === true;

      if (!Number.isFinite(position) || !speciesName) {
        return [];
      }

      const imageForm = {
        name: formName ?? speciesName,
        sprite_slug: spriteSlug,
      };

      return [
        {
          formName,
          imageUrl: isShiny
            ? getPokemonFormShinyImageUrl(imageForm)
            : getPokemonFormImageUrl(imageForm),
          isShiny,
          position,
          speciesName,
        },
      ];
    })
    .sort((first, second) => first.position - second.position);
};

const parseDecisionOptions = (
  value: unknown,
  spriteSlugByFormId: Map<number, string | null>,
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
    const spriteSlug = spriteSlugByFormId.get(formId) ?? null;

    return Number.isFinite(id) && label
      ? [
          {
            formName,
            id,
            imageUrl:
              speciesName && spriteSlug
                ? getPokemonFormImageUrl({
                    name: formName ?? speciesName,
                    sprite_slug: spriteSlug,
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
    const kindName =
      toStringValue(prerequisite.prerequisite_kind_name) ?? "Suggested";

    return Number.isFinite(id) && name
      ? [
          {
            completed: completedMilestoneIds.has(id),
            id,
            kindName,
            kindSlug,
            name,
          },
        ]
      : [];
  });
};

const compareCategories = (
  first: StoryCategorySource,
  second: StoryCategorySource,
) => {
  return (
    toFiniteNumber(first.content_scope_sort_order) -
      toFiniteNumber(second.content_scope_sort_order) ||
    toFiniteNumber(first.category_sort_order) -
      toFiniteNumber(second.category_sort_order) ||
    toFiniteNumber(first.category_id) - toFiniteNumber(second.category_id)
  );
};

const compareMilestones = (
  first: StoryMilestoneSource,
  second: StoryMilestoneSource,
) => {
  return (
    toFiniteNumber(first.sort_order) - toFiniteNumber(second.sort_order) ||
    toFiniteNumber(first.milestone_id) - toFiniteNumber(second.milestone_id)
  );
};

const isBlockingPrerequisite = (prerequisite: StoryMilestonePrerequisite) => {
  return (
    prerequisite.kindSlug === "required" ||
    prerequisite.kindSlug === "story-unlock"
  );
};

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

export const buildStoryProgressModel = ({
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
  const spriteSlugByDecisionFormId = new Map(
    decisionForms.map((form) => [form.id, form.sprite_slug]),
  );
  const snapshotMembersByMilestoneId = new Map<
    number,
    StoryTeamSnapshotMember[]
  >();

  for (const event of snapshotEvents) {
    const milestoneId = toFiniteNumber(event.milestone_id, Number.NaN);

    if (
      Number.isFinite(milestoneId) &&
      !snapshotMembersByMilestoneId.has(milestoneId)
    ) {
      snapshotMembersByMilestoneId.set(
        milestoneId,
        parseTeamSnapshot(event.team_snapshots),
      );
    }
  }

  const sections = [...categories]
    .filter((category) => toFiniteNumber(category.milestone_count) > 0)
    .sort(compareCategories)
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
        .sort(compareMilestones)
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
            blockingPrerequisites,
            categoryId,
            completedAt: milestone.completed_at,
            decisionOptions: parseDecisionOptions(
              milestone.decision_options,
              spriteSlugByDecisionFormId,
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
        completedCount: toFiniteNumber(category.completed_milestone_count),
        completedRequiredCount: toFiniteNumber(
          category.completed_required_milestone_count,
        ),
        id: categoryId,
        milestones: trackMilestones,
        name: category.category_name ?? "Story",
        requiredCount: toFiniteNumber(category.required_milestone_count),
        slug: category.category_slug ?? `category-${categoryId}`,
        totalCount: toFiniteNumber(category.milestone_count),
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
    const scopeName = category?.version_group_name ?? "Main game";
    const scopeSlug =
      category?.version_group_slug ?? `content-scope-${scopeId}`;
    const isBase = toFiniteNumber(category?.content_scope_sort_order) === 1;
    const existingScope = scopesById.get(scopeId);

    if (existingScope) {
      existingScope.sections.push(section);
      existingScope.completedCount += section.completedCount;
      existingScope.completedRequiredCount += section.completedRequiredCount;
      existingScope.requiredCount += section.requiredCount;
      existingScope.totalCount += section.totalCount;
      continue;
    }

    scopesById.set(scopeId, {
      completedCount: section.completedCount,
      completedRequiredCount: section.completedRequiredCount,
      id: scopeId,
      isBase,
      label: isBase ? "Main game" : scopeName,
      name: scopeName,
      requiredCount: section.requiredCount,
      sections: [section],
      slug: scopeSlug,
      totalCount: section.totalCount,
    });
  }

  const scopes = [...scopesById.values()];
  const orderedMilestones = scopes.flatMap((scope) =>
    scope.sections.flatMap((section) => section.milestones),
  );
  addIncompletionImpacts(orderedMilestones);
  const incompleteRequired = orderedMilestones.filter(
    (milestone) => milestone.isRequired && !milestone.isCompleted,
  );
  const nextMilestone =
    incompleteRequired.find((milestone) => milestone.isAvailable) ??
    incompleteRequired[0] ??
    orderedMilestones.find((milestone) => !milestone.isCompleted) ??
    null;
  const completedMilestones = orderedMilestones.filter(
    (milestone) => milestone.isCompleted,
  );
  const lastCompletedMilestone =
    completedMilestones
      .filter((milestone) => milestone.completedAt)
      .sort((first, second) =>
        (second.completedAt ?? "").localeCompare(first.completedAt ?? ""),
      )[0] ??
    completedMilestones.at(-1) ??
    null;
  const requiredCount = scopes.reduce(
    (total, scope) => total + scope.requiredCount,
    0,
  );
  const completedRequiredCount = scopes.reduce(
    (total, scope) => total + scope.completedRequiredCount,
    0,
  );

  return {
    completedRequiredCount,
    defaultMilestoneId:
      nextMilestone?.id ??
      lastCompletedMilestone?.id ??
      orderedMilestones[0]?.id ??
      null,
    lastCompletedMilestone,
    nextMilestone,
    requiredCount,
    scopes,
  };
};
