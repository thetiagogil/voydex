import { errorResponse, jsonResponse } from "@/lib/api/route";
import { getAllPokemonForms } from "@/shared/server/reference/pokemon-forms";

export async function GET() {
  try {
    const { data, error } = await getAllPokemonForms();

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
