import { unmarkPokedexEntry } from "@/features/play/server/play-pokedex";
import {
  badRequestResponse,
  errorResponse,
  jsonResponse,
  parseRequiredInt,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    if (!playId) return badRequestResponse("Missing play id");

    const pokedexEntryId = parseRequiredInt(
      request.nextUrl.searchParams.get("pokedexEntryId"),
      "pokedex entry id",
    );
    if (pokedexEntryId.error) return pokedexEntryId.error;

    const result = await unmarkPokedexEntry(playId, pokedexEntryId.data);

    if (result.error) return errorResponse(result.error);

    return jsonResponse({ success: true });
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
