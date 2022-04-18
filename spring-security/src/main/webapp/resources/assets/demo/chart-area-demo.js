// // Set new default font family and font color to mimic Bootstrap's default styling
// Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
// Chart.defaults.global.defaultFontColor = '#292b2c';

// // Area Chart Example
// var ctx = document.getElementById("myAreaChart");
// var myLineChart = new Chart(ctx, {
//   type: 'line',
//   data: {
//     labels: _ydata,
//     datasets: [{
//       label: "Sessions",
//       lineTension: 0.3,
//       backgroundColor: "rgba(2,117,216,0.2)",
//       borderColor: "rgba(2,117,216,1)",
//       pointRadius: 5,
//       pointBackgroundColor: "rgba(2,117,216,1)",
//       pointBorderColor: "rgba(255,255,255,0.8)",
//       pointHoverRadius: 5,
//       pointHoverBackgroundColor: "rgba(2,117,216,1)",
//       pointHitRadius: 50,
//       pointBorderWidth: 2,
//       data: _xdata,
//     }],
//   },
//   options: {
//     scales: {
//       xAxes: [{
//         time: {
//           unit: 'date'
//         },
//         gridLines: {
//           display: false
//         },
//         ticks: {
//           maxTicksLimit: 7
//         }
//       }],
//       yAxes: [{
//         ticks: {
//           min: 0,
//           max: 10,
//           maxTicksLimit: 5
//         },
//         gridLines: {
//           color: "rgba(0, 0, 0, .125)",
//         }
//       }],
//     },
//     legend: {
//       display: false
//     }
//   }
// });



$(document).ready(function () {

  'use strict';

  var myRegisterChart = $('#myRegisterChart');

  if (myRegisterChart.length > 0) {
      var user_count = myRegisterChart.data('register');
      var label1 = myRegisterChart.data('label1');
      var myRegisterChart = new Chart(myRegisterChart, {
        type: 'line',
            data: {
              labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
                datasets: [
                  {
                    label: label1,
                    backgroundColor: ['rgb(54, 195, 110)'],
                    borderColor: ['rgba(255, 255, 255, 0.5)'
                    ],
                    borderWidth: 1,
                    data: [ user_count[0], user_count[1],
                            user_count[2], user_count[3],
                            user_count[4], user_count[5],
                            user_count[6], user_count[7],
                            user_count[8], user_count[9],
                            user_count[10], user_count[11]
                    ],
                },
            ]
          }
      });
  };
});

