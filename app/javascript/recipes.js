document.addEventListener("DOMContentLoaded", function(event) {
  var toggleSwitches = document.querySelectorAll('.toggle-switch-checkbox');

  toggleSwitches.forEach(function(toggleSwitch) {
    toggleSwitch.addEventListener('change', function(event) {
      var toggleSwitchLabel = event.target.nextElementSibling;
      toggleSwitchLabel.classList.toggle('toggle-switch-label-on');
    });
  });
});
