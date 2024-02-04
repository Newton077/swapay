import logo from "./logo.svg";
import "./App.css";
import { MetaMaskProvider } from '@metamask/sdk-react';

function App() {
  return (

   
    <div className="App">
      <h1>swapay</h1>
      <samp>BNB 0.12</samp>
      <samp>avax 1</samp>

      <div class="dropdown">
        Seleccionar Opción
        <select>
          <option value="bnb">BNB</option>
          <option value="avax">AVAX</option>
        </select>
      </div>
      <div>
        <span>total 1 </span>
      </div>

      
      <div>
        <button class="enableEthereumButton">Enable Ethereum</button>
        <h2>
          Account: <span class="showAccount"></span>
        </h2>

      </div>
    </div>
  );
}

export default App;
