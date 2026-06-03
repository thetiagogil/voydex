import { pokedexEntryBulkBodySchema } from "@/features/play/api/schemas";
import { markPokedexEntriesSeenBulk } from "@/features/play/server/play-pokedex";
import {
  badRequestResponse,
  errorResponse,
  jsonResponse,
  parseJsonBody,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    if (!playId) return badRequestResponse("Missing play id");

    const parsed = await parseJsonBody(request, pokedexEntryBulkBodySchema);
    if (parsed.error) return parsed.error;

    const result = await markPokedexEntriesSeenBulk(
      playId,
      parsed.data.pokedexEntryIds,
    );

    if (result.error) return errorResponse(result.error);

    return jsonResponse({ success: true });
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
