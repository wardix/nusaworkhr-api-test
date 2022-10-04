{
  name: 'get domain api',
  event: [
    {
      listen: 'test',
      script: {
        exec: [
          "pm.test('check response', function () {",
          "  const jsonData = pm.response.json();",
          "  pm.environment.set('apiBaseUrl', jsonData.data[0].domain_api);",
          "  console.log(jsonData);",
          "});"
        ],
        type: 'text/javascript'
      }
    }
  ],
  request: {
    method: 'GET',
    header: [],
    body: {},
    url: {
      host: [
        '{{apiPanelBaseUrl}}'
      ],
      path: [
        'companies/user/{{username}}/email'
      ]
    }
  }
}
