type value =
  | Boolean(bool)
  | String(string);

type node = {
  name: string,
  props: list((string, value)),
  children: list(node)
};
