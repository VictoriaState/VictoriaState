let textarea;
let prevScrollPos = 0;
let scrollCorrection = false;
let caretCorrection = 0;


// -2 ; -1 Erstellen
// 0 unterzeichnen
// 1-2 Ansehen

$(document).ready(function(){
  textarea = $("#createbillreason textarea");
  window.addEventListener('message', function( event ) {
    if (event.data.action == 'open') {
      billcontrols.OpenBill(event.data.billData);
      billcontrols.status = event.data.status
    } else if (event.data.action == 'create') {
      billcontrols.status = event.data.status
      billcontrols.CreateBill(event.data.billData);
    } else if (event.data.action == 'close') {
      billcontrols.cancelBill();
    }
  });
});


var billcontrols = new Vue({
  el: "#bill",
  data: {
    acceptType: 0,
    billID: -1,
    issuerJob: '',
    issuerID: -1,
    issuerIdentifier: '',
    issuercharidentfier: -1,
    amount: 0,
    seller: '',
    buyer: '',
    reason: 'Placeholder Reason',
    status: -1
  },
  methods: {
    OpenBill: function(billData){
      billcontrols.acceptType = billData.acceptType
      billcontrols.billID = billData.billID
      billcontrols.issuerJob = billData.issuerJob
      billcontrols.issuerID = billData.issuerID
      billcontrols.seller = billData.issuerName
      billcontrols.issuerIdentifier = billData.issuerIdentifier
      billcontrols.issuercharidentfier = billData.issuercharidentfier
      billcontrols.reason = billData.reason
      billcontrols.amount = billData.amount
      billcontrols.buyer = billData.buyer

      if (toString(billData.issuerName).length >= 16 && toString(billData.issuerName).length <= 18){
        $(".fromUser").css('font-size', "1.771vw");
      } else if (toString(billData.issuerName).length > 18 && toString(billData.issuerName).length <= 20){
        $(".fromUser").css('font-size', "1.667vw");
      } else if (toString(billData.issuerName).length > 20) {
        $(".fromUser").css('font-size', "1.567vw");
      }

      if (toString(billData.buyer).length > 18 && toString(billData.buyer).length <= 20){
        $(".toUser").css('font-size', "1.771vw");
      } else if (toString(billData.buyer).length > 20 && toString(billData.buyer).length <= 22){
        $(".toUser").css('font-size', "1.667vw");
      } else if (toString(billData.buyer).length > 22) {
        $(".toUser").css('font-size', "1.567vw");
      }

      $("#page-wrapper").fadeIn();
    },

    CreateBill: function(billData){
      billcontrols.seller = billData.issuerName
      $("#createbillreason textarea").val("");
      $("#createbillamount input").val("0.00");
      if (toString(billData.issuerName).length > 18 && toString(billData.issuerName).length <= 20){
        $(".fromUser").css('font-size', "1.771vw");
      } else if (toString(billData.issuerName).length > 20 && toString(billData.issuerName).length <= 22){
        $(".fromUser").css('font-size', "1.667vw");
      } else if (toString(billData.issuerName).length > 22) {
        $(".fromUser").css('font-size', "1.567vw");
      }

      $("#page-wrapper").fadeIn();
    },

    denyBill: function(){
      if (billcontrols.status == 0) {
        $.post('http://dl_advancedbilling/userdenyBill', JSON.stringify({issuerID:billcontrols.issuerID}));
        billcontrols.cancelBill();
      }
    },
    acceptBill: function(){
      if (billcontrols.status == 0) {
        $.post('http://dl_advancedbilling/useracceptBill', JSON.stringify({issuerJob: billcontrols.issuerJob, issuerID:billcontrols.issuerID, issuerName: billcontrols.seller,issuerIdentifier: billcontrols.issuerIdentifier, issuercharidentfier: billcontrols.issuercharidentfier, reason:billcontrols.reason, amount: billcontrols.amount}) );
        billcontrols.cancelBill();
      }
    },
    payBill: function(){
      if (billcontrols.status == 2) {
        $.post('http://dl_advancedbilling/userpayBill', JSON.stringify({billData: {issuer: billcontrols.issuercharidentfier, costs: billcontrols.amount, job: billcontrols.issuerJob, issueridentifier: billcontrols.issuerIdentifier, value: billcontrols.billID}}) );
        billcontrols.cancelBill();
      }
    },
    instantpayBill: function(){
      if (billcontrols.status == 0) {
        $.post('http://dl_advancedbilling/userinstantPayBill', JSON.stringify({billData: {issuer: billcontrols.issuercharidentfier, costs: billcontrols.amount, job: billcontrols.issuerJob, issueridentifier: billcontrols.issuerIdentifier}}) );
        billcontrols.cancelBill();
      }
    },
    createNewBill: function(){
      let reason = $("#createbillreason textarea").val();
      let billamount = parseFloat($("#createbillamount input").val()).toFixed(2);
      var isNumber = /^\d*\.?\d+$/.test(billamount)

      if (isNumber == true && parseInt(billamount) >= 0){
        if (reason.length <= 450) {
          if (billcontrols.status == -1){
            // PRIV BILL
            $.post('http://dl_advancedbilling/createBillNUI', JSON.stringify( {status: 0,reason: reason, billamount: billamount} ));
            billcontrols.cancelBill();
          } else if (billcontrols.status == -2){
            // JOB BILL
            $.post('http://dl_advancedbilling/createBillNUI', JSON.stringify( {status: 1,reason: reason, billamount: billamount} ));
            billcontrols.cancelBill();
          }
        }
      }
    },
    checkEnter: function(e){
      if (e.keyCode == 13) {
        e.preventDefault();
        e.stopPropagation();
      } else {
        return false;
      }
    },
    cancelBill: function(){
      $("#page-wrapper").fadeOut(function() {
        billcontrols.billID = -1
        billcontrols.issuerJob= ''
        billcontrols.issuerID= -1
        billcontrols.issuerIdentifier= ''
        billcontrols.issuercharidentfier= -1
        billcontrols.amount= 0
        billcontrols.seller= ''
        billcontrols.buyer= ''
        billcontrols.reason= 'Placeholder Reason'
        billcontrols.status= -1
        $.post('http://dl_advancedbilling/closeUI', JSON.stringify({}));
      });
    }
  }
});
