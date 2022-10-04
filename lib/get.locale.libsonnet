{
  name: 'get locale',
  event: [
    {
      listen: 'test',
      script: {
        exec: [
          "pm.test('check response', function () {",
          "  const jsonData = pm.response.json();",
          "  console.log(jsonData);",
          "});"
        ],
        type: 'text/javascript'
      }
    }
  ],
  request: {
    method: 'GET',
    auth: {
      type: "bearer",
      bearer: [
        {
          key: "token",
          value: "{{token}}",
          type: "string"
        }
      ]
    },
    header: [],
    body: {},
    url: {
      host: [
        '{{apiBaseUrl}}'
      ],
      path: [
        'notif/api/notification/locale'
      ]
    }
  }
}
