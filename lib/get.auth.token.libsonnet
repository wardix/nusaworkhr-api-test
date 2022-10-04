{
  name: 'get auth token',
  event: [
    {
      listen: 'test',
      script: {
        exec: [
          "pm.test('check response', function () {",
          "  const jsonData = pm.response.json();",
          "  console.log(jsonData.access_token);",
          "  pm.environment.set('token', jsonData.access_token);",
          "});"
        ],
        type: 'text/javascript'
      }
    }
  ],
  request: {
    method: 'POST',
    header: [],
    body: {
      mode: "formdata",
      formdata: [
        {
          key: "grant_type",
          value: "{{grantType}}",
          type: "text"
        },
        {
          key: "client_id",
          value: "{{clientId}}",
          type: "text"
        },
        {
          key: "client_secret",
          value: "{{clientSecret}}",
          type: "text"
        },
        {
          key: "username",
          value: "{{username}}",
          type: "text"
        },
        {
          key: "password",
          value: "{{password}}",
          type: "text"
        }
      ]
    },
    url: {
      host: [
        '{{apiBaseUrl}}'
      ],
      path: [
        'auth/api/oauth/token'
      ]
    }
  }
}
