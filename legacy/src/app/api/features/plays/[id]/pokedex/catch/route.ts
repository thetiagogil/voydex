import { pokedexEntryBodySchema } from "@/features/play/api/schemas";
import { markPokedexEntryCaught } from "@/features/play/server/play-pokedex";
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

    const parsed = await parseJsonBody(request, pokedexEntryBodySchema);
    if (parsed.error) return parsed.error;

    const { data, error } = await markPokedexEntryCaught(
      playId,
      parsed.data.pokedexEntryId,
    );

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
