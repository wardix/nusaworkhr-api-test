local getDomainApi = import 'lib/get.domain.api.libsonnet';
local getAuthToken = import 'lib/get.auth.token.libsonnet';
local getLocale = import 'lib/get.locale.libsonnet';
local getProfileLite = import 'lib/get.profile.lite.libsonnet';
{
  info: {
    name: 'nusawork HR'
  },
  item: [
    getDomainApi,
    getAuthToken,
    getLocale,
    getProfileLite
  ]
}
