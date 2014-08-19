function GetCityValue() {
    var pageId = '<%=  Page.Inquiry %>';
    __doPostBack(pageId, "USA");
}