const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp();

// Cloud Firestore triggers ref: https://firebase.google.com/docs/functions/firestore-events
exports.myFunction = functions.firestore
.document("notification/{messageId}")
.onCreate((snapshot, context) => {
    // Return this function's promise, so this ensures the firebase function
    // will keep running, until the notification is scheduled.
    return admin.messaging().sendToTopic("notification", {
    // Sending a notification message.
    notification: {
        title: snapshot.data()["title"],
        body: snapshot.data()["content"],
        clickAction: "FLUTTER_NOTIFICATION_CLICK",
    },
    });
});