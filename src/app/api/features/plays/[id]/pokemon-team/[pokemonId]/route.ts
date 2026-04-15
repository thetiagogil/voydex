import { playTeamUpdateBodySchema } from "@/features/play/api/schemas";
import {
  removeTeamPokemon,
  updateTeamPokemon,
} from "@/features/play/server/play-team";
import {
  badRequestResponse,
  errorResponse,
  jsonResponse,
  parseJsonBody,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id: string; pokemonId: string }> },
) {
  try {
    const { pokemonId } = await params;
    if (!pokemonId) return badRequestResponse("Missing pokemon id");

    const parsed = await parseJsonBody(request, playTeamUpdateBodySchema);
    if (parsed.error) return parsed.error;

    const { data, error } = await updateTeamPokemon(pokemonId, parsed.data);

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}

export async function DELETE(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string; pokemonId: string }> },
) {
  try {
    const { pokemonId } = await params;
    if (!pokemonId) return badRequestResponse("Missing pokemon id");

    const { error } = await removeTeamPokemon(pokemonId);

    if (error) return errorResponse(error);

    return jsonResponse({ success: true });
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
