$(document).ready(function() {
  var ng = $("#number-grid");
  var firstCell = ng.children();
  
  firstCell.height(firstCell.width());
  firstCell.detach();

  $(window).resize(function() {
    setCellSize(ng, $("input[name='cols']").val());
  });

  $("button").click(function() {
    resetTable(ng, firstCell);
  });

});

function setCellSize(numberGrid, template, numCols) {
  var width = numberGrid.width();
  var cells = numberGrid.children();

  template.width(width/numCols-2);
  template.height(width/numCols-2);
  template.children().filter("span").height(width/numCols-2);
  // cells.each(function() {
  //   $(this).width(width/numCols-2);
  //   $(this).height(width/numCols-2);
  // });
}


function resetTable(numberGrid, template) {
  // remove all old cells
  numberGrid.children().each(function(){
    $(this).remove();
  });

  // figure out how many rows and columns
  var numHoriz = $("input[name='cols']").val();
  var numVert = $("input[name='rows']").val();

  setCellSize(numberGrid, template, numHoriz);

  // make and add new cells
  var numBoxes = numHoriz * numVert;
  for (i=0;i<numBoxes;i++) {
    var newCell = template.clone();
    newCell.children().filter("p").html((i+1).toString());
    newCell.appendTo(numberGrid);
  }

  // setCellSize(numberGrid, numHoriz);

  var fact1 = $("input[name='factor1']").val();
  var fact2 = $("input[name='factor2']").val();
  setFactorHighlights(numberGrid, fact1, fact2);
}

function setFactorHighlights(numberGrid, factor1, factor2) {
  var cells = numberGrid.children();
  var length = cells.length;

  for (var i=1; i<=length; i++) {
    var cell = cells.filter(":nth-child(" + i + ")");
    if (i % (factor1 * factor2) == 0) {
      cell.addClass("both-factors");
    } else if (i % factor1 == 0) {
      cell.addClass("first-factor");
    } else if (i % factor2 == 0) {
      cell.addClass("second-factor");
    }
  }
}