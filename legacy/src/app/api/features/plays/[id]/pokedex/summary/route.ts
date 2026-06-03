import { getPlayPokedexSummary } from "@/features/play/server/play-pokedex";
import {
  badRequestResponse,
  errorResponse,
  jsonResponse,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    if (!playId) return badRequestResponse("Missing play id");

    const { data, error } = await getPlayPokedexSummary(playId);

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
