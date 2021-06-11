
$(document).ready(function () {
  let url = "/appointment/state/0";
  getFetch(url, {})
    .then((res) => {
      if (res) {
        loadAppointment(res);
        alertify.success("Solicitudes cargadas");
      } else {
        alertify.error("Error al cargar la información, recarge la página!!");
      }
    })
    .catch((err) => {
      console.log(err.message);
    });
});

let loadAppointment = (data) => {
  let table = document.getElementById("attentionTable");
  for (let appointment of data) {
    let tr = document.createElement("tr");

    let date = document.createElement("td");
    date.innerText = parseUtcDate(appointment.dateBegin);
    let name = document.createElement("td");
    name.innerText = appointment.id_pacient;
    let treatment = document.createElement("td");
    treatment.innerText = appointment.treatment;

    let link = document.createElement("button");
    link.className = "btn btn-info";
    link.setAttribute("onclick", "goMedicalRecord()");
    link.innerText = "LLenarr Ficha";

    tr.appendChild(date);
    tr.appendChild(name);
    tr.appendChild(treatment);
    tr.appendChild(link);
    table.appendChild(tr);
  }
  
};


function goMedicalRecord() {
  let url = "./medicalRecord";
  location.replace(url);
}