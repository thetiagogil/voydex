import {
  errorResponse,
  jsonResponse,
  parseOptionalInt,
  parseRequiredInt,
} from "@/lib/api/route";
import { getAvailablePokemon } from "@/shared/server/reference/pokemon-available";
import { NextRequest } from "next/server";

export async function GET(request: NextRequest) {
  try {
    const searchParams = request.nextUrl.searchParams;
    const versionGroupId = parseRequiredInt(
      searchParams.get("versionGroupId"),
      "version group id",
    );
    if (versionGroupId.error) return versionGroupId.error;

    const gameId = parseOptionalInt(searchParams.get("gameId"), "game id");
    if (gameId.error) return gameId.error;

    const { data, error } = await getAvailablePokemon(
      versionGroupId.data,
      gameId.data,
    );

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
