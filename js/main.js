import { fetchdata } from "./modules/DataMiner.js";

// this is a variation on our module theme

const myVM = (() => {
    let vue_vm = new Vue({
        // link Vue to an element in our HTML
        // el: "#app",
        data: {
            mainHeader: "MINI Base Model Comparison",
            anotherMessage: "Which car would you like to know more information about?",
            removeAformat: true,
            showBioData: false,
            cars: [],
            currentCarData: {}

        },

        // this is the 'mounted' lifecycle hook. Vue is done creating itself and has attached itself to the "app" div on the page.
        mounted: function() {
            console.log('Vue is mounted! thing a fetch for the initial data.');

            fetchdata('./includes/index.php')
                .then(data => {
                    data.forEach(car => this.cars.push(car));
                })
                .catch(err => error(err));
        },

        // run a method where 
        updated: function() {
            // console.log('Vue just updated the DOM');
        },

        methods: {
            logClicked() {
                // console.log("clicked on a Car name");
            },
            clickHeader() {
                // console.log("clicked on the header!");
            },
            removeCar(target) {
                // remove the Car from the Car array
                console.log('clicked to show Car data', target.name);

                //toggle the property between true and false using a ternary statement.
                this.showBioData = this.showBioData ? false: true;

                // make the selected Car's data visible
                this.currentCarData = target;
            }
        }
    }).$mount("#app") // also connects Vue to your wrapper in HTML (same as el: "#app")
})();