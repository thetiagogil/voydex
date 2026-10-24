import fs from "node:fs/promises";
import path from "node:path";
import sharp from "sharp";

const rootDir = process.cwd();
const tokensPath = path.join(
  rootDir,
  "src",
  "shared",
  "styles",
  "app-tokens.css",
);
const sourceSvgPath = path.join(
  rootDir,
  "public",
  "brand",
  "voydex-app-icon.svg",
);
const iconPath = path.join(rootDir, "src", "app", "icon.png");
const appleIconPath = path.join(rootDir, "src", "app", "apple-icon.png");
const pwaIconsDir = path.join(rootDir, "public", "icons");
const faviconPath = path.join(rootDir, "src", "app", "favicon.ico");

function parseToken(css, tokenName) {
  const rootMatch = css.match(/:root\s*{(?<body>[\s\S]*?)\n}/);
  const rootBody = rootMatch?.groups?.body;

  if (!rootBody) {
    throw new Error("Could not find :root token block in app-tokens.css.");
  }

  const tokenMatch = rootBody.match(
    new RegExp(`--${tokenName}:\\s*(?<value>[^;]+);`),
  );
  const value = tokenMatch?.groups?.value?.trim();

  if (!value) {
    throw new Error(`Could not find --${tokenName} in app-tokens.css.`);
  }

  return value;
}

function parseOklch(value) {
  const match = value.match(
    /^oklch\(\s*(?<l>[\d.]+%?)\s+(?<c>[\d.]+)\s+(?<h>[\d.]+)\s*\)$/i,
  );

  if (!match?.groups) {
    return null;
  }

  const l = match.groups.l.endsWith("%")
    ? Number.parseFloat(match.groups.l) / 100
    : Number.parseFloat(match.groups.l);
  const c = Number.parseFloat(match.groups.c);
  const h = Number.parseFloat(match.groups.h);

  if ([l, c, h].some((component) => Number.isNaN(component))) {
    return null;
  }

  return { l, c, h };
}

function oklchToHex({ l, c, h }) {
  const hue = (h * Math.PI) / 180;
  const a = c * Math.cos(hue);
  const b = c * Math.sin(hue);
  const lPrime = l + 0.3963377774 * a + 0.2158037573 * b;
  const mPrime = l - 0.1055613458 * a - 0.0638541728 * b;
  const sPrime = l - 0.0894841775 * a - 1.291485548 * b;
  const long = lPrime ** 3;
  const medium = mPrime ** 3;
  const short = sPrime ** 3;

  const red =
    4.0767416621 * long - 3.3077115913 * medium + 0.2309699292 * short;
  const green =
    -1.2684380046 * long + 2.6097574011 * medium - 0.3413193965 * short;
  const blue =
    -0.0041960863 * long - 0.7034186147 * medium + 1.707614701 * short;

  return rgbToHex(red, green, blue);
}

function rgbToHex(red, green, blue) {
  const toByte = (channel) => {
    const encoded =
      channel <= 0.0031308
        ? 12.92 * channel
        : 1.055 * channel ** (1 / 2.4) - 0.055;

    return Math.round(Math.min(1, Math.max(0, encoded)) * 255);
  };

  return `#${[toByte(red), toByte(green), toByte(blue)]
    .map((channel) => channel.toString(16).padStart(2, "0"))
    .join("")}`;
}

function colorTokenToHex(value) {
  if (/^#[\da-f]{6}$/i.test(value)) {
    return value.toLowerCase();
  }

  const oklch = parseOklch(value);

  if (oklch) {
    return oklchToHex(oklch);
  }

  throw new Error(`Unsupported icon color token: ${value}`);
}

/* The "V" tile: a thick V made to stay readable at 16px. The maskable
   variant is full-bleed with the V inside the 80% safe zone. */
function createIconSvg({ action, onAction, maskable = false }) {
  const corner = maskable ? "" : ' rx="112"';
  const scale = maskable
    ? ' transform="translate(256 256) scale(.78) translate(-256 -256)"'
    : "";

  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" role="img" aria-label="Voydex">
  <rect width="512" height="512"${corner} fill="${action}"/>
  <path d="M130 150 256 372 382 150" fill="none" stroke="${onAction}" stroke-width="110" stroke-linecap="round" stroke-linejoin="round"${scale}/>
</svg>
`;
}

function createIco(pngs) {
  const headerSize = 6;
  const directorySize = 16 * pngs.length;
  let offset = headerSize + directorySize;
  const header = Buffer.alloc(headerSize);

  header.writeUInt16LE(0, 0);
  header.writeUInt16LE(1, 2);
  header.writeUInt16LE(pngs.length, 4);

  const directory = Buffer.alloc(directorySize);

  pngs.forEach(({ size, buffer }, index) => {
    const entryOffset = index * 16;
    directory.writeUInt8(size >= 256 ? 0 : size, entryOffset);
    directory.writeUInt8(size >= 256 ? 0 : size, entryOffset + 1);
    directory.writeUInt8(0, entryOffset + 2);
    directory.writeUInt8(0, entryOffset + 3);
    directory.writeUInt16LE(1, entryOffset + 4);
    directory.writeUInt16LE(32, entryOffset + 6);
    directory.writeUInt32LE(buffer.length, entryOffset + 8);
    directory.writeUInt32LE(offset, entryOffset + 12);
    offset += buffer.length;
  });

  return Buffer.concat([
    header,
    directory,
    ...pngs.map(({ buffer }) => buffer),
  ]);
}

async function renderPng(svg, size) {
  return sharp(Buffer.from(svg)).resize(size, size).png().toBuffer();
}

const css = await fs.readFile(tokensPath, "utf8");
const action = colorTokenToHex(parseToken(css, "action"));
const svg = createIconSvg({ action, onAction: "#ffffff" });

await fs.writeFile(sourceSvgPath, svg, "utf8");
await fs.writeFile(iconPath, await renderPng(svg, 512));
await fs.writeFile(appleIconPath, await renderPng(svg, 180));

await fs.mkdir(pwaIconsDir, { recursive: true });
await fs.writeFile(
  path.join(pwaIconsDir, "icon-192.png"),
  await renderPng(svg, 192),
);
await fs.writeFile(
  path.join(pwaIconsDir, "icon-512.png"),
  await renderPng(svg, 512),
);
await fs.writeFile(
  path.join(pwaIconsDir, "icon-maskable-512.png"),
  await renderPng(
    createIconSvg({ action, onAction: "#ffffff", maskable: true }),
    512,
  ),
);

const faviconSizes = [16, 32, 48, 64, 128, 256];
const faviconPngs = await Promise.all(
  faviconSizes.map(async (size) => ({
    size,
    buffer: await renderPng(svg, size),
  })),
);

await fs.writeFile(faviconPath, createIco(faviconPngs));

console.log(`Generated app icons with --action ${action}.`);
