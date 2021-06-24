document.getElementById("logout").setAttribute("onclick", "resetCredentials()");
$("#formProfile").submit(function (e) {
  e.preventDefault();
  var form = document.getElementById("formProfile");
  postFileFetch("/user/formProfile", form)
    .then((res) => {
      if (res.message == 1) {
        alertify.success("Datos Guardados Satisfactoriamente");
        location.reload();
      } else {
        alertify.error("Hubo un error al guardar los datos!!");
      }
    })
    .catch((err) => {
      console.log(err.message);
    });
});
