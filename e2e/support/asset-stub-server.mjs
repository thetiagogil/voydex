/*
 * Stands in for the voydex-assets site in the browser tests, on the port
 * `NEXT_PUBLIC_ASSETS_URL` names (playwright.config.ts starts it): every path
 * answers with the same 1px WebP, so images load without the tests calling
 * the real site, and `offline-images.json` lists three of them for the
 * background download. Like the real site, anyone may read it (CORS).
 */
import { createServer } from "node:http";

const port = Number(process.env.ASSET_STUB_PORT ?? 3999);
const pixel = Buffer.from(
  "UklGRhoAAABXRUJQVlA4TA0AAAAvAAAAEAcQERGIiP4HAA==",
  "base64",
);

const offlineImages = JSON.stringify({
  bytes: pixel.byteLength * 3,
  files: [
    ["pokemon/home/md/bulbasaur.webp", "000000000001"],
    ["pokemon/home/md/pikachu.webp", "000000000002"],
    ["pokemon/home/sm/pikachu.webp", "000000000003"],
  ],
});

createServer((request, response) => {
  if (request.url?.startsWith("/offline-images.json")) {
    response.writeHead(200, {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    });
    response.end(offlineImages);
    return;
  }

  response.writeHead(200, {
    "Access-Control-Allow-Origin": "*",
    "Content-Type": "image/webp",
    "Cache-Control": "public, max-age=3600",
  });
  response.end(pixel);
}).listen(port, "127.0.0.1");
