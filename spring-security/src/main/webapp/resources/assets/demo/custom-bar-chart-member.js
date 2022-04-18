$(document).ready(function () {

    'use strict';
    var brandPrimary;
    var brandPrimaryRgba;


    var customerChart    = $('#customerChart');

    if (customerChart.length > 0) {
        var total_service_chart = customerChart.data('total_service');
        var total_wash_chart = customerChart.data('total_wash');
        var label1 = customerChart.data('label1');
        var label2 = customerChart.data('label2');
        var customerChart = new Chart(customerChart, {
            type: 'bar',
            data: {
                labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
                datasets: [
                    {
                        label: label1,
                        backgroundColor: ['rgb(54, 195, 110)'],
                        borderColor: ['rgba(255, 255, 255, 0.5)'
                        ],
                        borderWidth: 1,
                        data: [ total_service_chart[0], total_service_chart[1],
                                total_service_chart[2], total_service_chart[3],
                                total_service_chart[4], total_service_chart[5],
                                total_service_chart[6], total_service_chart[7],
                                total_service_chart[8], total_service_chart[9],
                                total_service_chart[10], total_service_chart[11],
                            ],
                    },
                    {
                        label: label2,
                        backgroundColor: [
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)'
                        ],
                        borderColor: [
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)',
                            'rgba(255, 137, 82, 1)'
                        ],
                        borderWidth: 1,
                        data: [ total_wash_chart[0], total_wash_chart[1],
                                total_wash_chart[2], total_wash_chart[3],
                                total_wash_chart[4], total_wash_chart[5],
                                total_wash_chart[6], total_wash_chart[7],
                                total_wash_chart[8], total_wash_chart[9],
                                total_wash_chart[10], total_wash_chart[11],
                            ],
                    },
                ]
            }
        });
    };
});
