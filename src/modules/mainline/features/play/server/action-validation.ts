const UUID_PATTERN = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

export const getRequiredText = (formData: FormData, key: string) => {
  const value = formData.get(key);

  if (typeof value !== "string") {
    return "";
  }

  return value.trim();
};

export const getOptionalText = (formData: FormData, key: string) => {
  const value = getRequiredText(formData, key);

  return value.length > 0 ? value : null;
};

export const parseOptionalDate = (formData: FormData, key: string) => {
  const value = getRequiredText(formData, key);

  if (!value) {
    return { value: null };
  }

  if (!/^\d{4}-\d{2}-\d{2}$/.test(value)) {
    return { error: "Use a valid date." };
  }

  return { value };
};

export const parseOptionalNumber = (formData: FormData, key: string) => {
  const value = getRequiredText(formData, key);

  if (!value) {
    return { value: null };
  }

  const numberValue = Number(value);

  if (!Number.isInteger(numberValue)) {
    return { error: "Choose a valid option." };
  }

  return { value: numberValue };
};

export const parseRequiredNumber = (formData: FormData, key: string) => {
  const parsed = parseOptionalNumber(formData, key);

  if (parsed.error) {
    return parsed;
  }

  if (!parsed.value) {
    return { error: "Choose a valid option." };
  }

  return parsed;
};

export const isValidUuid = (value: string) => {
  return UUID_PATTERN.test(value);
};

export const isValidPositiveInteger = (value: number) => {
  return Number.isInteger(value) && value > 0;
};
