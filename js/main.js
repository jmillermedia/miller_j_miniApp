import { fetchdata } from "./modules/DataMiner.js";

const myVM = (() => {
    let vue_vm = new Vue({
        data: {
            mainHeader: "MINI Base Model Comparison",
            anotherMessage: "Which car would you like to know more about?",
            cars: [],
            carPhoto: [],
            currentCarData: {},
            currentCarPhoto: ['carOutline.png'],
        },

        mounted: function() {
            fetchdata('./includes/index.php')
                .then(data => {
                    data.forEach(car => this.cars.push(car));
                })
                .catch(err => error(err));
        },

        methods: {
            showCar(target) {
                this.currentCarData = target;
                this.currentCarPhoto = target.Photo1;
            }
        }
    }).$mount("#app")
})();