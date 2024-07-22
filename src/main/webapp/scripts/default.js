function search_behaviour(self) {
  const content = self.value;
  const btnclear = document.getElementById("search-clear");
  if(content.length == 0)
    btnclear.hidden = true;
  else
    btnclear.hidden = false;
}

function search_delete(self) {
  $("#search").val("");
  self.hidden = true;
}

const MENU_SELECTOR = $("#menu-selector");
const MENU_SELECTOR_BOOTSTRAP = bootstrap.Dropdown.getOrCreateInstance(MENU_SELECTOR);
const SUBCATEGORY_SPACE = $("#subcategories");

MENU_SELECTOR.on("mouseenter", (ev) => {
  MENU_SELECTOR_BOOTSTRAP.show();
});
MENU_SELECTOR.on("mouseleave", (ev) => {
  MENU_SELECTOR_BOOTSTRAP.hide();
  SUBCATEGORY_SPACE.jsp("");
});

$(".dropdown-item").on("mouseenter", (ev) => {
  let content = ev.currentTarget.lastElementChild.outerHTML;
  content = content.replace("hidden", "");
  SUBCATEGORY_SPACE.html(content);
});