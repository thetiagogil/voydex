import { setTimeout as wait } from "timers/promises";
import {
  DEFAULT_DELAY_MS,
  GEN_MAP,
  SKIP_SLUGS,
} from "../config/pokeapi-config.js";
import { prettyLog } from "./logger.js";

export async function fetchAllTypes(opts = {}) {
  const indexUrl = "https://pokeapi.co/api/v2/type";
  const index = await fetchJson(indexUrl);
  const entries = Array.isArray(index.results) ? index.results : [];
  prettyLog(`Found ${entries.length} type entries`);
  // Pre-filter index entries to only candidates we will fetch (so progress counts are accurate)
  const candidates = entries.filter((e) => {
    const slug = String(e.name || "").toLowerCase();
    if (SKIP_SLUGS.has(slug)) return false;
    // defensive: filter by id>10000 if present in index url
    try {
      const m = String(e.url || "").match(/\/(\d+)\/?$/);
      if (m && Number(m[1]) > 10000) return false;
    } catch (err) {
      // ignore parse errors
    }
    return true;
  });

  const rows = [];
  const total = candidates.length;
  for (let i = 0; i < total; i++) {
    const e = candidates[i];
    prettyLog(`${i + 1}/${total} - fetching ${String(e.name || e.url)}`);
    try {
      const obj = await fetchJson(e.url);
      const norm = normalizeTypeObject(obj);
      if (norm) rows.push(norm);
      else prettyLog(`Skipping ${String(obj?.name || e.url)}`, { emoji: "⏭️" });
    } catch (err) {
      prettyLog(`Failed fetching ${e.url}: ${err.message || err}`, {
        emoji: "⚠️",
      });
    }
    // skip delay when running a dry preview
    const delayMs = opts.dry ? 0 : (opts.delay ?? DEFAULT_DELAY_MS);
    if (delayMs) await wait(delayMs);
  }
  // deterministic order
  rows.sort((a, b) => a.id - b.id);
  return rows;
}

// Generic helper to fetch all paginated index entries for a given resource
// e.g. fetchAllIndexEntries('ability') will follow `next` links until exhausted
export async function fetchAllIndexEntries(resource, opts = {}) {
  const baseUrl = `https://pokeapi.co/api/v2/${resource}`;
  let url = baseUrl;
  const all = [];
  let pageCount = 0;
  while (url) {
    pageCount++;
    const page = await fetchJson(url);
    const entries = Array.isArray(page.results) ? page.results : [];
    all.push(...entries);
    prettyLog(
      `Fetched page ${pageCount} — ${entries.length} entries (total so far: ${all.length})`
    );
    const delayMs = opts.dry ? 0 : (opts.delay ?? DEFAULT_DELAY_MS);
    if (delayMs) await wait(delayMs);
    url = page.next || null;
  }
  // If caller wants candidates pre-filtered, apply the same filters we use elsewhere
  if (opts.filterCandidates) {
    const skipSet = opts.skipSet instanceof Set ? opts.skipSet : SKIP_SLUGS;
    const candidates = all.filter((e) => {
      const slug = String(e.name || "").toLowerCase();
      if (skipSet.has(slug)) return false;
      try {
        const m = String(e.url || "").match(/\/(\d+)\/?$/);
        if (m && opts.idThreshold && Number(m[1]) > opts.idThreshold)
          return false;
      } catch (err) {
        // ignore parse errors
      }
      return true;
    });
    prettyLog(
      `Collected ${candidates.length} ${resource} index candidate entries`
    );
    // visual separation between index fetching and detail fetching
    prettyLog("");
    return candidates;
  }

  prettyLog(`Collected ${all.length} ${resource} index entries`);
  return all;
}

export async function fetchJson(url, attempts = 3) {
  let lastErr;
  for (let i = 0; i < attempts; i++) {
    try {
      const res = await fetch(url);
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      return await res.json();
    } catch (err) {
      lastErr = err;
      const backoff = 200 * Math.pow(2, i);
      await wait(backoff);
    }
  }
  throw lastErr;
}

export function titleCase(s) {
  return String(s || "")
    .replace(/[-_]/g, " ")
    .split(" ")
    .map((p) => (p ? p.charAt(0).toUpperCase() + p.slice(1) : ""))
    .join(" ");
}

export function normalizeTypeObject(obj) {
  if (!obj || typeof obj.id !== "number") return null;
  const slug = String(obj.name || "").toLowerCase();
  if (SKIP_SLUGS.has(slug)) return null;
  const id = obj.id;
  const name = titleCase(slug);
  let generation_introduced_id = 1;
  if (obj.generation && obj.generation.name) {
    const g = String(obj.generation.name).toLowerCase();
    if (GEN_MAP[g]) generation_introduced_id = GEN_MAP[g];
  }
  return { id, slug, name, generation_introduced_id };
}

function escapeSql(s) {
  if (s == null) return null;
  return String(s).replace(/['\u2019]/g, "''");
}
