document.addEventListener('DOMContentLoaded', function () {
    
    // Get user #Setup information
    // Adds information to #About
    let userName = document.querySelector('#userName');
    let petName = document.querySelector('#userPetName');
    let picInput = document.querySelector('#picInput');
    let setupButton = document.querySelector('#userSetupSubmitButton');
    let welcomeText = document.querySelector('#welcomeText');
    let petPic = document.querySelector('#petPic');
    let loggedEventsText = document.querySelector('#loggedEventsText');

    // Handles information in .setup portion after submit button
    setupButton.addEventListener('click', function(){

        // Update welcome text in .about if provided by user
        if (petName.value !== "" & userName.value !== "") {
            welcomeText.innerHTML = ("Welcome, " + petName.value + " & " + userName.value + "!");
            loggedEventsText.innerHTML = (petName.value + "'s Log");
        }

        // Add image in .about if provided by user
        if (picInput.value !== "") {
            petPic.src = picInput.value;
            petPic.classList.remove("hidden");
        }
    })

    let eventPick = document.querySelector('#eventPick');
    let eventDetails = document.querySelector('#eventDetails');

    // DEBUG if multiple events selected, event details keeps adding options
    // Handles dropdowns in .log.events
    eventPick.addEventListener('change', function(){
        eventDetails.innerHTML = "";

        if(eventPick.value === "WLK") {
            // menuItem0 already exists in HTML
            let newMenu1 = document.createElement("option");
            newMenu1.innerHTML = ".5 miles";
            eventDetails.appendChild(newMenu1);

            let newMenu2 = document.createElement("option");
            newMenu2.innerHTML = "1 miles";
            eventDetails.appendChild(newMenu2);

            let newMenu3 = document.createElement("option");
            newMenu3.innerHTML = "1.5 miles";
            eventDetails.appendChild(newMenu3);

            let newMenu4 = document.createElement("option");
            newMenu4.innerHTML = "2 miles";
            eventDetails.appendChild(newMenu4);
        } else if (eventPick.value === "MEL") {
            // menuItem0 already exists in HTML
            let newMenu1 = document.createElement("option");
            newMenu1.innerHTML = ".5 cup kibble";
            eventDetails.appendChild(newMenu1);

            let newMenu2 = document.createElement("option");
            newMenu2.innerHTML = "1 cup kibble";
            eventDetails.appendChild(newMenu2);

            let newMenu3 = document.createElement("option");
            newMenu3.innerHTML = "1 can wet food";
            eventDetails.appendChild(newMenu3);
        }  else if (eventPick.value === "TO1") {
            // N/A
        }  else if (eventPick.value === "TO2") {
            // N/A
        }  else if (eventPick.value === "MED") {
            // menuItem0 already exists in HTML
            let newMenu1 = document.createElement("option");
            newMenu1.innerHTML = "heartworm";
            eventDetails.appendChild(newMenu1);

            let newMenu2 = document.createElement("option");
            newMenu2.innerHTML = "flea and tick";
            eventDetails.appendChild(newMenu2);
        }  else if (eventPick.value === "TRN") {
            // menuItem0 already exists in HTML
            let newMenu1 = document.createElement("option");
            newMenu1.innerHTML = "fundamentals";
            eventDetails.appendChild(newMenu1);

            let newMenu2 = document.createElement("option");
            newMenu2.innerHTML = "tricks";
            eventDetails.appendChild(newMenu2);
        }  else if (eventPick.value === "NAP") {
            // menuItem0 already exists in HTML
            let newMenu1 = document.createElement("option");
            newMenu1.innerHTML = ".5 hours";
            eventDetails.appendChild(newMenu1);

            let newMenu2 = document.createElement("option");
            newMenu2.innerHTML = "1 hour";
            eventDetails.appendChild(newMenu2);

            let newMenu3 = document.createElement("option");
            newMenu3.innerHTML = "1.5 hours";
            eventDetails.appendChild(newMenu3);

            let newMenu4 = document.createElement("option");
            newMenu4.innerHTML = "2 hours";
            eventDetails.appendChild(newMenu4);
        }  else if (eventPick.value === "SLP") {
            // menuItem0 already exists in HTML
            let newMenu1 = document.createElement("option");
            newMenu1.innerHTML = "1 hour";
            eventDetails.appendChild(newMenu1);

            let newMenu2 = document.createElement("option");
            newMenu2.innerHTML = "2 hours";
            eventDetails.appendChild(newMenu2);

            let newMenu3 = document.createElement("option");
            newMenu3.innerHTML = "3 hours";
            eventDetails.appendChild(newMenu3);

            let newMenu4 = document.createElement("option");
            newMenu4.innerHTML = "4 hours";
            eventDetails.appendChild(newMenu4);
        }
    })

    // Adds information from .log.events to the .log
    let logSubmit = document.querySelector('#logSubmit');
    let logTable = document.querySelector('#logTable');
    let eventNotes = document.querySelector('#eventNotes');
    let i = 0;

    // Creates a table row with .log.event information
    logSubmit.addEventListener('click', function(){

        let newTableRow = document.createElement("tr");
        let currRow = "newRow" + i;
        let currRowID = "#newRow" + i;
        newTableRow.id = currRow;

        let newData0 = document.createElement("td");
        newData0.innerHTML = new Date();

        let newData1 = document.createElement("td");
        let eventName = "";
        if (eventPick.value === "WLK") {
            eventName = "Walk";
        } else if (eventPick.value === "MEL") {
            eventName = "Meal";
        } else if (eventPick.value === "TO1") {
            eventName = "Toilet #1";
        } else if (eventPick.value === "TO2") {
            eventName = "Toilet #2";
        } else if (eventPick.value === "MED") {
            eventName = "Medication";
        } else if (eventPick.value === "TRN") {
            eventName = "Training";
        } else if (eventPick.value === "NAP") {
            eventName = "Nap";
        } else if (eventPick.value === "SLP") {
            eventName = "Sleep";
        }
        console.log(eventName);
        newData1.innerHTML = eventName;

        let newData2 = document.createElement("td");
        newData2.innerHTML = eventDetails.value;

        let newData3 = document.createElement("td");
        newData3.innerHTML = eventNotes.value;

        let newData4 = document.createElement("td");
        newData4.innerHTML = userName.value;

        logTable.appendChild(newTableRow);
        let newRow = document.querySelector(currRowID);

        newRow.appendChild(newData0);
        newRow.appendChild(newData1);
        newRow.appendChild(newData2);
        newRow.appendChild(newData3);
        newRow.appendChild(newData4);

        // Prep form for next event log
        eventNotes.value = "";

        // Reset "Select Event" dropdown DEBUG

        i++;
    })

  });