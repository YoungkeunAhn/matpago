import React from 'react';
import axios from 'axios';

export default class Post extends React.Component {

    state = {
        name: '',
    }

    handleChange = event => {
        this.setState({name: event.target.value});
    }

    handleSubmit = event => {
        event.preventDefault();

        const user = {
            name: this.state.name
        };

        axios.post(`http://localhost:8080/api/hello2`,{user})
            .then(res => {
                console.log(res);
                console.log(res.data);
            })
    }



    render(){
        return(
            <div>
                <form onSubmit={this.handleSubmit}>
                    <label>
                        PersonName :
                        <input type="text" name="name" onChange={this.handleChange} />
                    </label>
                    <button type="submit">Add</button>
                </form>
            </div>
        );
    }
}