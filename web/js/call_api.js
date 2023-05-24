document.addEventListener("DOMContentLoaded", function () {
    loadProvinceList('fromProvinceSelect');
    loadProvinceList('toProvinceSelect');
});

function loadProvinceList(selectId) {
    var selectElement = document.getElementById(selectId);

    fetch("https://provinces.open-api.vn/api/p")
            .then(function (response) {
                return response.json();
            })
            .then(function (data) {
                var provinces = data;
                provinces.forEach(function (province) {
                    var option = document.createElement('option');
                    option.value = province.code;
                    option.text = province.name;
                    selectElement.appendChild(option);
                });
            })
            .catch(function (error) {
                console.log(error);
            });
}