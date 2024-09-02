
document.addEventListener('DOMContentLoaded', function() {
    const raceSelect = document.getElementById('student_race');
    const otherRaceInput = document.getElementById('other_race');

    function toggleOtherRaceInput() {
        if (raceSelect.value === 'Others') {
            otherRaceInput.style.display = 'block';
        } else {
            otherRaceInput.style.display = 'none';
        }
    }

    // Initialize visibility based on the current value
    toggleOtherRaceInput();

    // Add event listener to update visibility on change
    raceSelect.addEventListener('change', toggleOtherRaceInput);
});

