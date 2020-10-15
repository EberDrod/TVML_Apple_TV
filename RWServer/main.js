App.onLaunch = function (options) {
  // 1
  var alert = createAlert("TE AMO SURY", ""); //leaving 2nd parameter with an empty string
  navigationDocument.presentModal(alert);
};

// 2
var createAlert = function (title, description) {
  var alertString = `<?xml version="1.0" encoding="UTF-8" ?>
      <document>
        <alertTemplate>
          <title>${title}</title>
          <description>${description}</description>
        </alertTemplate>
      </document>`;
  var parser = new DOMParser();
  var alertDoc = parser.parseFromString(alertString, "application/xml");
  return alertDoc;
};
