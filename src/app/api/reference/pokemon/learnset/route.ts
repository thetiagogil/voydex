import {
  errorResponse,
  jsonResponse,
  parseRequiredInt,
} from "@/lib/api/route";
import { getPokemonLearnset } from "@/shared/server/reference/pokemon-learnset";
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

    const versionGroupId = parseRequiredInt(
      searchParams.get("versionGroupId"),
      "version group id",
    );
    if (versionGroupId.error) return versionGroupId.error;

    const { data, error } = await getPokemonLearnset(
      speciesId.data,
      formId.data,
      versionGroupId.data,
    );

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
