$("#form-content").on("submit", ev => {
  const checks = Array.from(document.querySelectorAll(".departamento-option"));
  if(!checks.some(x => x.checked)) {
    document.getElementById("departamento-error").hidden = false;
    return false;
  }
  return false;
});

$(".form-control").on("input", manage_input);

function manage_input(ev) {
  manage_error(ev);
}

function manage_error(ev) {
  const div = ev.currentTarget.parentElement;
  const error = div.querySelector(".error");
  if(error == null) return;

  let error_condition = () => false;
  switch(ev.currentTarget.type) {
    case "checkbox":
      error_condition = () => !ev.currentTarget.checked;
      break;
    case "textarea":
    case "text":
      error_condition = () => ev.currentTarget.value == 0;
      break;
  }
  error.hidden = !error_condition();
}

$("#form-footer input").on("click", ev => {
  manage_error(ev);
});

$("#comentario textarea").on("input", ev => {
  $("#comentario sub").text(`Quedan ${999-ev.currentTarget.value.length} caracteres`)
});

$("#form-departamento input").on("click", ev => {
  const items = document.getElementById("productos");
  document.getElementById("productos-items").hidden = !items.checked;

  const tarjeta = document.getElementById("tarjeta");
  document.getElementById("warning").hidden = !tarjeta.checked;
});

$("#reset-btn").on("click", () => {
  $("#productos-items").hide();
  $("#warning").hide();
});

$('input[type="tel"]').on("input", ev => just_number(ev.currentTarget));

function just_number(self) {
  self.value = self.value.replace(/[^\d]/,'');
}