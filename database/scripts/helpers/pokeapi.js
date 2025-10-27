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

export function getGenerationId(generationObj, fallback = 1) {
  if (!generationObj) return fallback;
  if (generationObj.name) {
    const key = String(generationObj.name).toLowerCase();
    if (GEN_MAP[key]) return GEN_MAP[key];
  }
  if (generationObj.url) {
    try {
      const m = String(generationObj.url).match(/\/(\d+)\/?$/);
      if (m) return Number(m[1]) || fallback;
    } catch (err) {
      // ignore
    }
  }
  return fallback;
}

export function normalizeTypeObject(obj) {
  if (!obj || typeof obj.id !== "number") return null;
  const slug = String(obj.name || "").toLowerCase();
  if (SKIP_SLUGS.has(slug)) return null;
  const id = obj.id;
  const name = titleCase(slug);
  const generation_introduced_id = getGenerationId(obj.generation, 1);
  return { id, slug, name, generation_introduced_id };
}

export function escapeSql(s) {
  if (s == null) return null;
  // Normalize whitespace (newlines, tabs, non-breaking spaces) to single spaces,
  // remove soft-hyphens and trim. Then escape single quotes (including U+2019).
  let str = String(s);
  // Remove soft hyphen (U+00AD) which can insert visual breaks
  str = str.replace(/\u00AD/g, "");
  // Replace various whitespace (including NBSP) with a single space
  str = str.replace(/[\s\u00A0]+/g, " ").trim();
  // Escape single quotes and right single quotation mark
  return str.replace(/['\u2019]/g, "''");
}

// Fetch generation resource lists (moves, abilities, types, pokemon_species, version_groups)
export async function fetchGenerationResources(genId) {
  if (!genId) return {};
  try {
    const url = `https://pokeapi.co/api/v2/generation/${genId}`;
    const gen = await fetchJson(url);
    const toSet = (arr) =>
      new Set((arr || []).map((r) => String(r.url || r.name).toLowerCase()));
    return {
      moves: toSet(gen.moves),
      abilities: toSet(gen.abilities),
      types: toSet(gen.types),
      pokemon_species: toSet(gen.pokemon_species),
      version_groups: toSet(gen.version_groups),
    };
  } catch (err) {
    prettyLog(`Failed fetching generation ${genId}: ${err.message || err}`, {
      emoji: "⚠️",
    });
    return {};
  }
}

// Cache for version_group -> generation id lookups
const _versionGroupGenCache = new Map();

export async function getGenerationIdFromVersionGroupUrl(vgUrl) {
  if (!vgUrl) return null;
  if (_versionGroupGenCache.has(vgUrl)) return _versionGroupGenCache.get(vgUrl);
  try {
    const vg = await fetchJson(vgUrl);
    const genId = getGenerationId(vg.generation, null);
    _versionGroupGenCache.set(vgUrl, genId);
    return genId;
  } catch (err) {
    return null;
  }
}

// Determine earliest generation where this pokemon (variety) appears using game_indices -> version_group -> generation
export async function getFormIntroducedGeneration(pokemonObj, fallback = 1) {
  if (!pokemonObj) return fallback;
  try {
    // Prefer game_indices if present; if not, try to fetch full pokemon object (it may be a partial)
    let indices = Array.isArray(pokemonObj.game_indices)
      ? pokemonObj.game_indices
      : [];
    if ((!indices || indices.length === 0) && pokemonObj.url) {
      try {
        const full = await fetchJson(pokemonObj.url);
        indices = Array.isArray(full.game_indices) ? full.game_indices : [];
        // if species missing, copy it so fallback below can use it
        if (!pokemonObj.species && full.species)
          pokemonObj.species = full.species;
      } catch (err) {
        // ignore fetch errors and fall back
      }
    }

    let minGen = Infinity;
    for (const gi of indices) {
      const vg = gi && gi.version_group;
      if (!vg || !vg.url) continue;
      const genId = await getGenerationIdFromVersionGroupUrl(vg.url);
      if (typeof genId === "number" && genId < minGen) minGen = genId;
    }
    if (minGen !== Infinity) return minGen;
  } catch (err) {
    // ignore and fallback
  }

  // Last resort: try species generation (may be less accurate for form-introduced)
  try {
    if (pokemonObj.species && pokemonObj.species.url) {
      const species = await fetchJson(pokemonObj.species.url);
      const g = getGenerationId(species.generation, null);
      if (typeof g === "number") return g;
    }
  } catch (err) {
    // ignore
  }

  return fallback;
}

export function formatStatField(obj) {
  if (!obj) return null;
  // PokeAPI stat objects may appear as { name: 'hp', url: '...' }
  return obj.name ? String(obj.name) : null;
}
