window.selectText();

$( function() {
    $( "#draggable" ).draggable();
} );

function selectText() {
    var selectionText = ""; //마우스로 드래그한 글

    if (document.getSelection) {
    selectionText = document.getSelection();
} else if (document.selection) {
    selectionText = document.selection.createRange().text;
}
    return selectionText;
}

function dragPopUp(){
    // if(popup != null) popup.close();
    var popup = window.open("", "", 'width=400px,height=300px,scrollbars=yes');
    var getText = selectText();
    if(popup.document==null) {
        popup.document.write("<html><head><title>지식작업</title></head><body></body></html>", getText);
    } else if(!(popup.document==null)){
        window.close();
        popup.document.write("<html><head><title>지식작업</title></head><body></body></html>", getText);
    }
}

// var popup;

// 전역변수 var popup 사용 시
// function dragPopUp(){
//     if(popup != null) popup.close();
//     popup = window.open("", "", 'width=400px,height=300px,scrollbars=yes');
//     var getText = selectText();
//     popup.document.write("<html><head><title>지식작업</title></head><body></body></html>", getText);
// }
