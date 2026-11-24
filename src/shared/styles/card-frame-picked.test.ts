import fs from "node:fs";
import path from "node:path";

import { describe, expect, it } from "vitest";

/*
 * A picked collector card (`card-frame-picked`) is its type's colour a step
 * deeper, so it has to read darker than the unpicked frames beside it
 * (`card-frame`) for every type colour and for a card with none. The
 * palest types sit closest: Electric is the floor, at about 1.9:1. This
 * reads the real mixes and colours from the style files and works the
 * `color-mix(in oklab, …)` out the way the browser does.
 */
const FLOOR = 1.8;
const read = (file: string) =>
  fs.readFileSync(path.join(process.cwd(), file), "utf8");

const utilities = read("src/shared/styles/app-utilities.css");
const tokens = read("src/shared/styles/app-tokens.css");
const typeTokens = read(
  "src/modules/reference/features/pokemon/styles/pokemon-type-tokens.css",
);

const tokenOf = (css: string, name: string) => {
  const value = new RegExp(`--${name}:\\s*(#[0-9a-fA-F]{6})`).exec(css)?.[1];

  if (!value) throw new Error(`--${name} is not set`);

  return value;
};

/* The percentage of `--t` in a utility's background mix. */
const typeShareOf = (utility: string) => {
  const body = new RegExp(`@utility ${utility} \\{([^}]*)\\}`).exec(
    utilities,
  )?.[1];
  const share =
    /background-color:\s*color-mix\([^)]*var\(--t[^)]*\)\)\s*(\d+)%/.exec(
      body ?? "",
    )?.[1];

  if (!share) throw new Error(`${utility} has no type share`);

  return Number(share) / 100;
};

const channels = (hex: string) =>
  [1, 3, 5].map(
    (index) => Number.parseInt(hex.slice(index, index + 2), 16) / 255,
  );
const toLinear = (channel: number) =>
  channel <= 0.04045 ? channel / 12.92 : ((channel + 0.055) / 1.055) ** 2.4;
const fromLinear = (channel: number) =>
  channel <= 0.0031308 ? 12.92 * channel : 1.055 * channel ** (1 / 2.4) - 0.055;

const toOklab = (hex: string) => {
  const [red, green, blue] = channels(hex).map(toLinear);
  const l = Math.cbrt(
    0.4122214708 * red + 0.5363325363 * green + 0.0514459929 * blue,
  );
  const m = Math.cbrt(
    0.2119034982 * red + 0.6806995451 * green + 0.1073969566 * blue,
  );
  const s = Math.cbrt(
    0.0883024619 * red + 0.2817188376 * green + 0.6299787005 * blue,
  );

  return [
    0.2104542553 * l + 0.793617785 * m - 0.0040720468 * s,
    1.9779984951 * l - 2.428592205 * m + 0.4505937099 * s,
    0.0259040371 * l + 0.7827717662 * m - 0.808675766 * s,
  ];
};

const fromOklab = ([lightness, a, b]: number[]) => {
  const l = (lightness + 0.3963377774 * a + 0.2158037573 * b) ** 3;
  const m = (lightness - 0.1055613458 * a - 0.0638541728 * b) ** 3;
  const s = (lightness - 0.0894841775 * a - 1.291485548 * b) ** 3;

  return [
    4.0767416621 * l - 3.3077115913 * m + 0.2309699292 * s,
    -1.2684380046 * l + 2.6097574011 * m - 0.3413193965 * s,
    -0.0041960863 * l - 0.7034186147 * m + 1.707614701 * s,
  ].map((channel) => Math.min(1, Math.max(0, fromLinear(channel))));
};

/* `color-mix(in oklab, first share, second)`, as sRGB channels. */
const mix = (first: string, share: number, second: string) => {
  const [from, to] = [toOklab(first), toOklab(second)];

  return fromOklab(
    from.map((value, index) => value * share + to[index]! * (1 - share)),
  );
};

const luminance = (rgb: number[]) => {
  const [red, green, blue] = rgb.map(toLinear);

  return 0.2126 * red! + 0.7152 * green! + 0.0722 * blue!;
};

const contrast = (first: number[], second: number[]) => {
  const [light, dark] = [luminance(first), luminance(second)].sort(
    (a, b) => b - a,
  );

  return (light! + 0.05) / (dark! + 0.05);
};

describe("a picked collector card's frame", () => {
  const ink = tokenOf(tokens, "ink");
  const surface = tokenOf(tokens, "surface");
  const colours = {
    ...Object.fromEntries(
      [...typeTokens.matchAll(/--type-([a-z]+):\s*(#[0-9a-fA-F]{6})/g)].map(
        ([, type, hex]) => [type, hex],
      ),
    ),
    none: tokenOf(tokens, "mute"),
  };
  const pickedShare = typeShareOf("card-frame-picked");
  const frameShare = typeShareOf("card-frame");

  it("reads every type colour", () => {
    expect(Object.keys(colours)).toHaveLength(19);
  });

  it.each(Object.entries(colours))(
    "reads deeper than its unpicked frame (%s)",
    (_type, hex) => {
      const picked = mix(hex, pickedShare, ink);
      const unpicked = mix(hex, frameShare, surface);

      expect(luminance(picked)).toBeLessThan(luminance(unpicked));
      expect(contrast(picked, unpicked)).toBeGreaterThanOrEqual(FLOOR);
    },
  );
});
