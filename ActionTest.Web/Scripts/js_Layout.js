function TabelaDinamica(Tabela, Ordem) {
    $(Tabela).dataTable({
        "order": [[Ordem, "desc"]],
        "lengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "Todos"]],
        "aoColumnDefs": [
            { 'bSortable': false, 'aTargets': ['no-sort'] }
        ],
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Portuguese.json"
        },
        dom: '<"html5buttons"B>lTfgitp',
        buttons: [
            {
                extend: 'excel', exportOptions: {
                    columns: ':visible'
                }, title: 'ExampleFile'
            },
            {
                extend: 'pdf',
                exportOptions: {
                    columns: ':visible'
                },
                title: 'ExampleFile'
            },
            {
                extend: 'print',
                customize: function (win) {
                    $(win.document.body).addClass('white-bg');
                    $(win.document.body).css('font-size', '10px');

                    $(win.document.body).find('table')
                        .addClass('compact')
                        .css('font-size', 'inherit');
                }
            }
        ]
    });
}

function TabelaLog(Tabela) {
    $(Tabela).dataTable({
        "lengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "Todos"]],
        "scrollY": "300px",
        "scrollCollapse": true,
        "ordering": false,
        "searching": false,
        "pagingType": "simple",
        "dom": '<"top"l>rt<"bottom"i><"clear">',
        "aoColumnDefs": [
            { 'bSortable': false, 'aTargets': ['no-sort'] }
        ],
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Portuguese.json"
        },    
    });
}



function ShowLoading() {
    $("#DivConteudo").hide();
    $("#DivCarregando").show();
}
function HideLoading() {
    $("#DivConteudo").show();
    $("#DivCarregando").hide();
}
function SemSessao(xhr) {
    var str = xhr.responseText;
    if (str.indexOf("<title>QG360") != -1) {
        //SemSessao();
        swal({
            title: "Os dados não foram salvos.\nA sua sessão expirou e você será redirecionado para a tela de login.",
            type: "warning",
            timer: 4000,
            showConfirmButton: false
        });
        window.setTimeout(function () {
            location.reload();
        }, 4000);
    }
}


