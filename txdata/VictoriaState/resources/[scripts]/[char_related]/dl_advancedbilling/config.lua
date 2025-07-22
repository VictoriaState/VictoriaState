Translation = {}
Config = {}
Config.Locale = 'de'

Config.SharedJobBills = {'testjob','testjob2'}
Config.AutoAcceptBills = {''}

Config.CheckJobBills = {''} -- Jobs who can use /checkbills [jobname] command to check open job bills for x job

Config.SocietySystem = "dl_society" -- Options: dl_society, mega_companies, syn_society
Config.DisablePrivateBills = false


Config.PlayerDistance = 3.0 -- If you dont use NPlayerSelector

Config.UseCommand = true -- Enables/Disables Command
Config.MenuCommand = "mybills"
Config.EnableEventOpening = true -- Allow to open Menu from export event (use it in inventory for example to open menu if item is activated)

Config.UseNPlayerSelector = true -- You NEED TO INSTALL MEGA_NPLAYERSELECTOR TO USE THIS | Otherwise using nearest player by PlayerDistance

Config.UseUI = true
Config.UseAnims = true

Config.AcceptBillType = 0 -- 0 = Sign to Accept; 1 = Button to Accept

Config.UseLogger = true  -- Turn on if Logging
Config.Webhook = "https://discord.com/api/webhooks/1345114217354629220/J1XeKxJsLfvg_O2BPlJDg4QbFhrPmbOUG7aPQFJIqpwfVn0-KR2WjcCAsLUgG3Bhq1LX"
Config.webhookAvatar = ""
Config.WebhookName = "DL-Advancedbilling"


Translation = {

    ['de'] = {

        ['mainmenutitle'] = 'Rechnungen',
        ['mainmenusubtext'] = 'Rechnungen erstellen und eigene ansehen',

        ['bills'] = 'Meine Rechnungen',
        ['bills_desc'] = 'Sieh dir deine zu zahlenden Rechnungen an',
        ['give_bill'] = 'Rechnung ausstellen',
        ['give_bill_desc'] = 'Stelle eine Rechnung aus',
        ['bills_open'] = 'Private ausgestellte Rechnungen',
        ['bills_open_desc'] = 'Sehe von dir ausgestellte Rechnungen an',
        ['bills_job_open'] = 'Firmen Rechnungen',
        ['bills_job_open_desc'] = 'Sehe von deiner Firma ausgestellte offene Rechnungen an',

        ['pay_bill_label'] = 'Rechnung von:',
        ['pay_bill'] = 'Bezahle die Rechnung',

        ['open_bill_label'] = 'Rechnung an:',
        ['open_bills_title'] = 'Offene Rechnungen',
        ['open_job_bills_title'] = 'Offene Firmen Rechnungen',

        ['payed_bill_message'] = 'Du hast eine Rechnung bezahlt',
        ['your_bill_got_payed'] = 'Eine von dir ausgestellte Rechnung wurde bezahlt',
        ['not_enough_money'] = 'Du hast nicht genügend Geld!',

        ['create_bill'] = "Rechnung erstellen",

        ['create_bill_own'] = 'Private Rechnung erstellen',
        ['create_bill_job'] = 'Firmen Rechnung erstellen',


        ['create_bill_reason'] = 'Grund',
        ['create_bill_reason_button'] = 'Grund eintragen',
        ['create_bill_amount'] = 'Betrag',
        ['create_bill_amount_button'] = 'Betrag eintragen',



        ['invalid'] = "Ungültiger betrag",
        ['invalid_data'] = "Bitte trage einen Grund und den Betrag ein!",
        ['invalid_distance'] = "Keine Spieler in der nähe",
        ['invalid_length'] = "Der Grund ist zu lang. Bitte kürzen.",


        ['accept_billing_menu'] = "Rechnung akzeptieren?",

        ['dialog_accept'] = 'Rechnung annehmen',
        ['dialog_reject'] = 'Rechnung ablehnen',

        ['bill_rejected'] = 'Deine Rechnung wurde abgelehnt',

        ['target_bill_accepted'] = 'Du hast die Rechnung akzeptiert.',
        ['target_bill_rejected'] = 'Du hast die Rechnung abgelehnt.',

        ['bill_accepted'] = 'Deine Rechnung wurde akzeptiert.',

        ['billMenuNoOptions'] = 'Du hast keine Offenen Rechnungen.',

    },


    ['en'] = {

        ['mainmenutitle'] = 'Bills',
        ['mainmenusubtext'] = 'Create a Bill and show my Bills',

        ['bills'] = 'My Bills',
        ['bills_desc'] = 'Look at the bills you have to pay',
        ['give_bill'] = 'Hand over invoice',
        ['give_bill_desc'] = 'Give invoice',
        ['bills_open'] = 'Private issued invoices',
        ['bills_open_desc'] = 'View invoices you have issued',
        ['bills_job_open'] = 'Company invoices',
        ['bills_job_open_desc'] = 'View outstanding invoices issued by your company',

        ['pay_bill_label'] = 'Bill from:',
        ['pay_bill'] = 'Pay the bill',

        ['open_bill_label'] = 'Bill to:',
        ['open_bills_title'] = 'Open invoices',
        ['open_job_bills_title'] = 'Open company invoices',

        ['payed_bill_message'] = 'You paid a bill',
        ['your_bill_got_payed'] = 'An invoice you issued has been paid',
        ['not_enough_money'] = 'You dont have enough money!',

        ['create_bill'] = "Create a Bill",

        ['create_bill_own'] = 'Create private invoice',
        ['create_bill_job'] = 'Create company invoice',

        ['create_bill_reason'] = 'Reason',
        ['create_bill_reason_button'] = 'Enter reason',
        ['create_bill_amount'] = 'Amount',
        ['create_bill_amount_button'] = 'Enter Amount',

        ['invalid'] = "Invalid amount",
        ['invalid_data'] = "Please enter a reason and the amount!",
        ['invalid_distance'] = "No players around",
        ['invalid_length'] = "The reason is too long. Please shorten.",

        ['accept_billing_menu'] = "Accept invoice?",

        ['dialog_accept'] = 'Accept bill',
        ['dialog_reject'] = 'Reject invoice',

        ['bill_rejected'] = 'Your invoice has been declined',

        ['target_bill_accepted'] = 'You accepted the bill.',
        ['target_bill_rejected'] = 'You declined the bill.',

        ['bill_accepted'] = 'Your invoice has been accepted.',

        ['billMenuNoOptions'] = 'You have no outstanding invoices.',

    }


  }
