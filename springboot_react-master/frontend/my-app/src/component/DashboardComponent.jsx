import React, {Component} from "react";
import axios from "axios";


class DashboardComponent extends Component {
    constructor(props) {
        super(props)
        this.state = {
            message: ""
        }
    }

    componentDidMount() {
        this.getApi();
    }

    getApi = () => {
        axios.get("http://localhost:8080/v1/board")
            .then(res => {
                console.log(res);

            })
            .catch(res => console.log(res))
    }
    render() {
        return(
            <div>
                Dashboard 페이지
                <br/>

            </div>
        )
    }
}

export default DashboardComponent