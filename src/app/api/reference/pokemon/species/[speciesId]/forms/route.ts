import {
  errorResponse,
  jsonResponse,
  parseRequiredInt,
} from "@/lib/api/route";
import { getPokemonForms } from "@/shared/server/reference/pokemon-forms";
import { NextRequest } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ speciesId: string }> },
) {
  try {
    const { speciesId } = await params;
    const parsedSpeciesId = parseRequiredInt(speciesId, "species id");
    if (parsedSpeciesId.error) return parsedSpeciesId.error;

    const { data, error } = await getPokemonForms(parsedSpeciesId.data);

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
