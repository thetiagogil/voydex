import { playTeamBodySchema } from "@/features/play/api/schemas";
import {
  addPokemonToTeam,
  getPlayTeam,
} from "@/features/play/server/play-team";
import {
  badRequestResponse,
  conflictResponse,
  createdResponse,
  errorResponse,
  jsonResponse,
  parseJsonBody,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    if (!playId) return badRequestResponse("Missing play id");

    const { data, error } = await getPlayTeam(playId);

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    if (!playId) return badRequestResponse("Missing play id");

    const parsed = await parseJsonBody(request, playTeamBodySchema);
    if (parsed.error) return parsed.error;

    const { data, error } = await addPokemonToTeam(playId, parsed.data);

    if (error) {
      if (
        typeof error === "object" &&
        error !== null &&
        "code" in error &&
        error.code === "POSITION_OCCUPIED" &&
        typeof error.message === "string"
      ) {
        return conflictResponse(error.message, { position: error.message });
      }

      if (
        typeof error === "object" &&
        error !== null &&
        "code" in error &&
        error.code === "TEAM_FULL" &&
        typeof error.message === "string"
      ) {
        return badRequestResponse(error.message);
      }

      return errorResponse(error);
    }

    return createdResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
