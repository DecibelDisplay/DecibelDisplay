import { VuexModule, Module, Mutation, Action } from "vuex-module-decorators";
import store from "./index";

@Module({ name: "Sensor", dynamic: true, store })
export default class SensorModule extends VuexModule {
    temp = 0;
    hum = 0;
    pres = 0;

    get temperature(): number {
        return this.temp;
    }

    get humidity(): number {
        return this.hum;
    }

    get pressure(): number {
        return this.pres;
    }

    @Mutation
    private SET_TEMPERATURE(temperature: number) {
        this.temp = temperature;
    }

    @Mutation
    private SET_HUMIDITY(humidity: number) {
        this.hum = humidity;
    }

    @Mutation
    private SET_PRESSURE(pressure: number) {
        this.pres = pressure;
    }

    @Action({ rawError: true })
    async setSensorValues(data: { temperature: number; humidity: number; pressure: number }) {
        this.SET_TEMPERATURE(data.temperature);
        this.SET_HUMIDITY(data.humidity);
        this.SET_PRESSURE(data.pressure);
    }
}
