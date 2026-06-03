import {
  errorResponse,
  jsonResponse,
  parseRequiredInt,
} from "@/lib/api/route";
import { getPokemonAbilities } from "@/shared/server/reference/pokemon-abilities";
import { NextRequest } from "next/server";

export async function GET(request: NextRequest) {
  try {
    const searchParams = request.nextUrl.searchParams;
    const speciesId = parseRequiredInt(
      searchParams.get("speciesId"),
      "species id",
    );
    if (speciesId.error) return speciesId.error;

    const formId = parseRequiredInt(searchParams.get("formId"), "form id");
    if (formId.error) return formId.error;

    const generationId = parseRequiredInt(
      searchParams.get("generationId"),
      "generation id",
    );
    if (generationId.error) return generationId.error;

    const { data, error } = await getPokemonAbilities(
      speciesId.data,
      formId.data,
      generationId.data,
    );

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
