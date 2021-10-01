// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
import {getAuth, onAuthStateChanged} from "firebase/auth";
import {getFirestore, collection, getDocs} from 'firebase/firestore';
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyBXL-7-yjwwBSoAHNjSWTqfgxIRyVtEkHc",
  authDomain: "adkotestfirebase.firebaseapp.com",
  projectId: "adkotestfirebase",
  storageBucket: "adkotestfirebase.appspot.com",
  messagingSenderId: "546662158369",
  appId: "1:546662158369:web:5486c36bbcd1f49f521360",
  measurementId: "G-BQ47VQY6SZ"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);
db.collection(instaPosts).getDocs();
const instaPosts = collection(db, 'instaPosts');
const posts = await getDocs(instaPosts);

//Detect auth state
auth.onAuthStateChanged(user => {
    
});
onAuthStateChanged(auth, user => {
    if (user != null) {
        console.log('logged in!');
    } else {
        console.log('No user');
    }
});

