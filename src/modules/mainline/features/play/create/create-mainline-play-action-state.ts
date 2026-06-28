export type CreateMainlinePlayState = {
  fieldErrors?: {
    gameId?: string;
    name?: string;
    startedOn?: string;
    statusId?: string;
  };
  formError?: string;
};

export const initialCreateMainlinePlayState: CreateMainlinePlayState = {};
