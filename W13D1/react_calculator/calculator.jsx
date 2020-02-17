import React from "react";

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = { result: 0, num1: "", num2: "" }
    this.setNum1 = this.setNum1.bind(this)
    this.setNum2 = this.setNum2.bind(this)
    this.setMath = this.setMath.bind(this)
  }

  setNum1(e) {
    e.preventDefault()
    val = e.currentTarget.value.parseInt()
    this.setState({ num1: val })
  }

  setNum2(e) {
    e.preventDefault()
    val = e.currentTarget.value.parseInt()
    this.setState({ num2: val })
  }

  setMath(e) {
    e.preventDefault()
    op = e.currentTarget.value
    if (op === "+") {
      this.setState({ result: num1 + num2 })
    } else if (op === "-") {
      this.setState({ result: num1 - num2 })
    } else if (op === "*") {
      this.setState({ result: num1 * num2 })
    } else if (op === "/") {
      this.setState({ result: num1 / num2 })
    }
  }

  myclear() {
    this.setState({ num1: "", num2: "" })
  }

  render() {
    return (
      <div>
        <h1>{this.state.result}</h1>

        <input onChange={this.setNum1} value={this.state.num1}/>
        <input onChange={this.setNum2} value={this.state.num2}/>
        <button onClick={ this.myclear }>Clear</button>
        <br />
        <button onClick={ this.setMath } value={"+"}>+</button>
        <button onClick={ this.setMath } value={"-"}>-</button>
        <button onClick={ this.setMath } value={"*"}>*</button>
        <button onClick={ this.setMath } value={"/"}>/</button>
      </div>
    );
  }
}

export default Calculator;