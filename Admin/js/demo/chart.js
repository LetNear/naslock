window.onload = function() {
    var ctx = document.getElementById('myBarChart').getContext('2d');
    var myBarChart = new Chart(ctx, {
    type: 'line',  // Line chart for monitoring attendance trend
    data: {
        labels: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],  // Days of the week
        datasets: [{
            label: 'Student Attendance',  // Label for attendance
            data: [25, 30, 28, 35, 20, 15, 10],  // Example attendance data for each day
            backgroundColor: 'rgba(255, 205, 86, 0.2)',  // Light background for the line
            borderColor: 'rgba(255, 205, 86, 1)',  // Line color
            borderWidth: 2,  // Thickness of the line
            fill: true,  // Fill under the line
            tension: 0.4  // Curve the line slightly for aesthetics
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true,  // Y-axis starts at 0 to show clear data representation
                title: {
                    display: true,
                    text: 'Number of Students',  // Y-axis label
                }
            },
            x: {
                title: {
                    display: true,
                    text: 'Day of the Week',  // X-axis label
                }
            }
        },
        plugins: {
            legend: {
                display: true,  // Show legend for the dataset
                position: 'top'  // Position of the legend
            }
        }
    }
});
}
