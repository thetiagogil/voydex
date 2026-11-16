/*
 * A Story route is walked on the region's map. Each move goes to a
 * neighbouring place, or one place back through somewhere already visited.
 * A longer way, or a move the map has no road for, must be said in the note
 * of the place you arrive at (a flight, a ship, a walk back) or at the end of
 * the side trip you leave ("Then back to Mossdeep City").
 *
 * The links (data/place-links.json, pairs of place ids) come from each
 * place's own page: its north, south, east and west exits, what it gives
 * access to, and a building or cave counted as inside its town. Open-world
 * games are left out, since their pages name few directions.
 */
import { readFileSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const dataPath = path.join(
  path.dirname(fileURLToPath(import.meta.url)),
  "..",
  "data",
  "place-links.json",
);

const OPEN_WORLD_VERSION_GROUP_SLUGS = new Set([
  "swsh-ioa",
  "pla",
  "sv",
  "sv-tm",
  "sv-id",
  "za",
  "za-md",
]);

const TRAVEL =
  /\b(Fly|fly|flies|flight|ship|ferry|boat|Seagallop|[Ss]ail|train|Train|taxi|Taxi|warp|Teleport|[Bb]ack|[Rr]eturn|drops you|takes you|brings you|carries you|leads you|sends you|rides?|Ride|Corviknight|Surf (?:east|west|north|south|back|across|down|up)|through|via|home|wake up|phones?)\b/;
const CARRIED =
  /\b(boat|ferry|ship|[Ss]ails?|train|Train|takes you|brings you|drops you|carries you|flies you|S\.S\.)\b|Then (?:back|fly|Fly)|back (?:down|to|through)/;

function readPlaceLinks(filePath = dataPath) {
  const links = new Map();
  for (const [a, b] of JSON.parse(readFileSync(filePath, "utf8"))) {
    if (!links.has(a)) links.set(a, new Set());
    if (!links.has(b)) links.set(b, new Set());
    links.get(a).add(b);
    links.get(b).add(a);
  }
  return links;
}

/* The shortest way from a to b through places already visited. */
function findWay(links, from, to, visited) {
  if (from === to) return [from];
  const previous = new Map([[from, null]]);
  const queue = [from];
  while (queue.length) {
    const place = queue.shift();
    for (const next of links.get(place) ?? []) {
      if (previous.has(next) || (next !== to && !visited.has(next))) continue;
      previous.set(next, place);
      if (next === to) {
        const way = [to];
        while (way[way.length - 1] !== from) {
          way.push(previous.get(way[way.length - 1]));
        }
        return way.reverse();
      }
      queue.push(next);
    }
  }
  return null;
}

/* The long or roadless moves of one route that its notes don't explain. */
export function findUnsaidMoves({ steps, milestonesById, placeNames, links }) {
  const unsaid = [];
  let current = null;
  let milestonePlace = null;
  let previousNote = "";
  const visited = new Set();
  for (const step of steps) {
    let place;
    let note;
    let kind;
    if (step.milestone_id === null) {
      place = step.location_id;
      note = step.note ?? "";
      kind = "place";
    } else {
      const milestone = milestonesById.get(step.milestone_id);
      if (!milestone?.is_required_for_completion || !milestone.location_id) {
        continue;
      }
      place = milestone.location_id;
      note = milestone.description ?? "";
      kind = "milestone";
    }
    if (current !== null && place !== current && place !== milestonePlace) {
      const starts =
        milestonePlace === null ? [current] : [milestonePlace, current];
      const ways = starts
        .map((start) => findWay(links, start, place, visited))
        .filter(Boolean);
      const way = ways.sort((a, b) => a.length - b.length)[0] ?? null;
      const seenNames = [...visited, current].map((id) =>
        (placeNames.get(id) ?? "").replace(/ \(.*/, ""),
      );
      const said =
        TRAVEL.test(note) ||
        CARRIED.test(previousNote) ||
        seenNames.some((name) => name.length > 5 && note.includes(name));
      const sameTown =
        (placeNames.get(current) ?? "").split(" ")[0] ===
        (placeNames.get(place) ?? "").split(" ")[0];
      if (!said && ((way === null && !sameTown) || (way && way.length > 3))) {
        unsaid.push({
          from: placeNames.get(milestonePlace ?? current) ?? String(current),
          sortOrder: step.sort_order,
          to: placeNames.get(place) ?? String(place),
        });
      }
    }
    if (kind === "milestone") milestonePlace = place;
    else {
      current = place;
      milestonePlace = null;
      previousNote = note;
    }
    visited.add(place);
  }
  return unsaid;
}

export function assertStoryRouteMoves(
  context,
  tableRows,
  links = readPlaceLinks(),
) {
  const slugById = new Map(
    (tableRows.get("reference.version_groups") ?? []).map(({ row }) => [
      row.id,
      row.slug,
    ]),
  );
  const placeNames = new Map(
    (tableRows.get("reference.locations") ?? []).map(({ row }) => [
      row.id,
      row.name,
    ]),
  );
  const milestonesById = new Map(
    (tableRows.get("tracking.mainline_milestones") ?? []).map(({ row }) => [
      row.id,
      row,
    ]),
  );
  const stepsByVersionGroup = new Map();
  for (const { row } of tableRows.get("tracking.mainline_roadmap_steps") ??
    []) {
    if (!stepsByVersionGroup.has(row.version_group_id)) {
      stepsByVersionGroup.set(row.version_group_id, []);
    }
    stepsByVersionGroup.get(row.version_group_id).push(row);
  }
  for (const [versionGroupId, steps] of stepsByVersionGroup) {
    const slug = slugById.get(versionGroupId) ?? String(versionGroupId);
    if (OPEN_WORLD_VERSION_GROUP_SLUGS.has(slug)) continue;
    steps.sort((a, b) => a.sort_order - b.sort_order);
    for (const move of findUnsaidMoves({
      links,
      milestonesById,
      placeNames,
      steps,
    })) {
      context.errors.push(
        `tracking.mainline_roadmap_steps: ${slug} step ${move.sortOrder} goes from ${move.from} to ${move.to}, a long way or no road on the map. Say how you get there in the note.`,
      );
    }
  }
}
